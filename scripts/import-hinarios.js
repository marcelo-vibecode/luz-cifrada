require('dotenv').config({ path: '.env.local' });
const { createClient } = require('@supabase/supabase-js');
const fs = require('fs');
const path = require('path');

// Initialize Supabase client with service role key (has bypass RLS)
const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Missing Supabase credentials in .env.local');
  console.error('Required: NEXT_PUBLIC_SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function importHinario(jsonFile) {
  const filePath = path.join(__dirname, '../scrapers', jsonFile);

  if (!fs.existsSync(filePath)) {
    console.log(`⚠️  File not found: ${jsonFile}`);
    return;
  }

  const rawData = JSON.parse(fs.readFileSync(filePath, 'utf8'));

  // Handle both formats: {hinario: {...}, hinos: [...]} or direct structure
  const hinarioData = rawData.hinario || rawData;
  const hinosData = rawData.hinos || [];

  if (!hinarioData.nome || !hinarioData.slug) {
    console.log(`⚠️  Skipping ${jsonFile} - missing hinario data`);
    return;
  }

  // Insert hinário
  const { data: hinario, error: hinarioError } = await supabase
    .from('hinarios')
    .upsert({
      nome: hinarioData.nome,
      slug: hinarioData.slug,
      autor: hinarioData.autor || 'Desconhecido',
      total_hinos: hinosData.length
    }, {
      onConflict: 'slug'
    })
    .select()
    .single();

  if (hinarioError) {
    console.error(`❌ Error inserting hinário ${hinarioData.nome}:`, hinarioError.message);
    return;
  }

  console.log(`✅ Hinário: ${hinarioData.nome} (${hinosData.length} hinos)`);

  const hinarioId = hinario.id;

  // Insert hinos in batches of 20
  for (let i = 0; i < hinosData.length; i += 20) {
    const batch = hinosData.slice(i, i + 20);

    const hinosToInsert = batch.map(hino => ({
      hinario_id: hinarioId,
      numero: hino.numero,
      titulo: hino.titulo,
      letra_pura: hino.letraPura || hino.letra_pura || '',
      ritmo: hino.ritmo || 'Marcha',
      posicao: hino.posicao || 'DE PÉ'
    }));

    const { error: hinosError } = await supabase
      .from('hinos')
      .upsert(hinosToInsert, {
        onConflict: 'hinario_id,numero'
      });

    if (hinosError) {
      console.error(`  ❌ Error inserting hinos batch ${i}:`, hinosError.message);
      continue;
    }

    // Insert cifras for this batch
    for (const hino of batch) {
      if (hino.conteudoCifrado || hino.cifra) {
        const { data: hinoData } = await supabase
          .from('hinos')
          .select('id')
          .eq('hinario_id', hinarioId)
          .eq('numero', hino.numero)
          .single();

        if (hinoData) {
          await supabase.from('cifras').upsert({
            hino_id: hinoData.id,
            tom_original: hino.tomOriginal || hino.tom_original || 'C',
            conteudo_cifrado: hino.conteudoCifrado || hino.cifra || '',
            is_approved: true
          }, {
            onConflict: 'hino_id,tom_original'
          });
        }
      }
    }

    const progress = Math.min(i + 20, hinosData.length);
    console.log(`  📝 Imported ${progress}/${hinosData.length} hinos`);
  }
}

async function main() {
  console.log('🚀 Starting import of all hinários...\n');

  const scrapersDir = path.join(__dirname, '../scrapers');
  const jsonFiles = fs.readdirSync(scrapersDir)
    .filter(f => f.endsWith('.json') && f !== 'hinarios_list.json');

  console.log(`Found ${jsonFiles.length} hinário JSON files\n`);

  let successCount = 0;
  let errorCount = 0;

  for (const file of jsonFiles) {
    try {
      await importHinario(file);
      successCount++;
    } catch (error) {
      console.error(`❌ Error importing ${file}:`, error.message);
      errorCount++;
    }
  }

  console.log('\n' + '='.repeat(50));
  console.log(`🎉 Import complete!`);
  console.log(`✅ Success: ${successCount} hinários`);
  console.log(`❌ Errors: ${errorCount} hinários`);
  console.log('='.repeat(50));
}

main().catch(console.error);
