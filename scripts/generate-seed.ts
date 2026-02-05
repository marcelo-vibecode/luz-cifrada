/**
 * Generate proper SQL seed file from JSON data
 * Usage: npx tsx scripts/generate-seed.ts
 */

import * as fs from "fs";
import * as path from "path";

interface ScrapedHino {
  id: string;
  numero: number;
  titulo: string;
  autor: string;
  ritmo: "Marcha" | "Valsa" | "Mazurca";
  posicao: string;
  tomOriginal: string;
  letraPura: string;
  conteudoCifrado: string;
}

interface ScrapedData {
  hinario: {
    nome: string;
    slug: string;
    autor: string;
    totalHinos: number;
  };
  hinos: ScrapedHino[];
}

function escapeSQL(str: string): string {
  return str.replace(/'/g, "''");
}

function generateSeedSQL(data: ScrapedData): string {
  const { hinario, hinos } = data;

  let sql = `-- Luz Cifrada SQL Seed
-- Generated: ${new Date().toISOString()}
-- Total: ${hinos.length} hinos

-- =============================================
-- STEP 1: Insert the Hinario
-- =============================================
INSERT INTO hinarios (nome, slug, autor, total_hinos)
VALUES ('${escapeSQL(hinario.nome)}', '${escapeSQL(hinario.slug)}', '${escapeSQL(hinario.autor)}', ${hinario.totalHinos})
ON CONFLICT (slug) DO UPDATE SET total_hinos = EXCLUDED.total_hinos;

-- =============================================
-- STEP 2: Insert all Hinos
-- We need to get the hinario_id first, so we use a subquery
-- =============================================

`;

  // Track unique numeros (some hymns have duplicate numero 0)
  const seenNumeros = new Set<number>();

  hinos.forEach((hino, index) => {
    // Skip duplicates - keep first occurrence
    if (seenNumeros.has(hino.numero)) {
      sql += `-- Skipping duplicate numero ${hino.numero}: ${hino.titulo}\n\n`;
      return;
    }
    seenNumeros.add(hino.numero);

    const letraEscaped = escapeSQL(hino.letraPura);

    sql += `-- Hino ${hino.numero}: ${hino.titulo}
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = '${escapeSQL(hinario.slug)}'),
  ${hino.numero},
  '${escapeSQL(hino.titulo)}',
  '${letraEscaped}',
  '${hino.ritmo}',
  '${escapeSQL(hino.posicao)}'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

`;
  });

  sql += `
-- =============================================
-- STEP 3: Insert all Cifras (chord content)
-- =============================================

`;

  // Reset for cifras
  seenNumeros.clear();

  hinos.forEach((hino, index) => {
    // Skip duplicates
    if (seenNumeros.has(hino.numero)) {
      return;
    }
    seenNumeros.add(hino.numero);

    const cifraEscaped = escapeSQL(hino.conteudoCifrado);

    sql += `-- Cifra for Hino ${hino.numero}: ${hino.titulo}
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = '${escapeSQL(hinario.slug)}' AND h.numero = ${hino.numero}),
  '${escapeSQL(hino.tomOriginal)}',
  '${cifraEscaped}',
  true
) ON CONFLICT DO NOTHING;

`;
  });

  sql += `
-- =============================================
-- VERIFICATION
-- =============================================
SELECT 'Seed completed!' AS status,
       (SELECT COUNT(*) FROM hinarios WHERE slug = '${escapeSQL(hinario.slug)}') AS hinarios_count,
       (SELECT COUNT(*) FROM hinos h JOIN hinarios hi ON h.hinario_id = hi.id WHERE hi.slug = '${escapeSQL(hinario.slug)}') AS hinos_count,
       (SELECT COUNT(*) FROM cifras c JOIN hinos h ON c.hino_id = h.id JOIN hinarios hi ON h.hinario_id = hi.id WHERE hi.slug = '${escapeSQL(hinario.slug)}') AS cifras_count;
`;

  return sql;
}

async function main() {
  const jsonPath = path.join(process.cwd(), "scrapers", "o-cruzeiro.json");
  const outputPath = path.join(process.cwd(), "scrapers", "seed.sql");

  console.log("📖 Reading JSON data...");
  const jsonData = fs.readFileSync(jsonPath, "utf-8");
  const data: ScrapedData = JSON.parse(jsonData);

  console.log(`📚 Hinário: ${data.hinario.nome}`);
  console.log(`📊 Total hinos: ${data.hinos.length}`);

  console.log("🔧 Generating SQL...");
  const sql = generateSeedSQL(data);

  console.log("💾 Writing seed.sql...");
  fs.writeFileSync(outputPath, sql, "utf-8");

  console.log(`✅ Done! File saved to: ${outputPath}`);
  console.log(`📏 File size: ${(sql.length / 1024).toFixed(2)} KB`);
}

main().catch(console.error);
