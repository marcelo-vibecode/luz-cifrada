/**
 * Scraper for estudofino.org Santo Daime hymn data
 *
 * This script automatically discovers all hinários from estudofino.org
 * and extracts structured hymn data using their JSON API.
 *
 * Usage: npx tsx scripts/scraper.ts
 */

import * as fs from "fs";
import * as path from "path";

// Types for scraped data
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

interface ScrapedHinario {
  nome: string;
  slug: string;
  autor: string;
  totalHinos: number;
  hinos: ScrapedHino[];
}

interface HinarioLink {
  nome: string;
  url: string;
  slug: string;
  autor?: string;
  grupo?: string;
}

// Fetch HTML from URL with delay to be respectful
async function fetchHTML(url: string): Promise<string> {
  console.log(`🌐 Fetching: ${url}`);
  const response = await fetch(url);
  if (!response.ok) {
    throw new Error(`Failed to fetch ${url}: ${response.statusText}`);
  }
  // Add delay to be respectful to the server
  await new Promise((resolve) => setTimeout(resolve, 1000));
  return response.text();
}

// Fetch JSON data from API
async function fetchJSON(url: string): Promise<any> {
  console.log(`🌐 Fetching JSON: ${url}`);
  const response = await fetch(url);
  if (!response.ok) {
    throw new Error(`Failed to fetch ${url}: ${response.statusText}`);
  }
  // Add delay to be respectful to the server
  await new Promise((resolve) => setTimeout(resolve, 1500));
  return response.json();
}

// Discover all hinários from the main Estudo Fino page
async function discoverHinarios(): Promise<HinarioLink[]> {
  console.log("🔍 Discovering hinários from Estudo Fino...\n");

  const mainPageUrl = "https://www.estudofino.org";
  const html = await fetchHTML(mainPageUrl);

  // Extract the hinarios JavaScript array from the page
  const match = html.match(/var hinarios = (\[.*?\]);/s);

  if (!match) {
    console.error("❌ Could not find hinarios array in the page");
    return [];
  }

  // Parse the JSON array
  const hinariosData = JSON.parse(match[1]);

  const hinarios: HinarioLink[] = hinariosData.map((h: any) => ({
    nome: h.hinario,
    url: `${mainPageUrl}/${h.urlhinario}`,
    slug: h.urlhinario,
    autor: h.canal || "Autor Desconhecido",
    grupo: h.grupo || "",
  }));

  console.log(`📚 Found ${hinarios.length} hinários from Estudo Fino\n`);

  // Display summary by category
  const groups = new Map<string, number>();
  hinarios.forEach((h: any) => {
    const grupo = h.grupo || "Outros";
    groups.set(grupo, (groups.get(grupo) || 0) + 1);
  });

  console.log("📊 Hinários by category:");
  groups.forEach((count, grupo) => {
    if (grupo) console.log(`   ${grupo}: ${count}`);
  });
  console.log();

  return hinarios;
}

// Helper to normalize rhythm type
function normalizeRitmo(ritmo: string): "Marcha" | "Valsa" | "Mazurca" {
  const normalized = ritmo.toLowerCase().trim();
  if (normalized.includes("marcha")) return "Marcha";
  if (normalized.includes("valsa")) return "Valsa";
  if (normalized.includes("mazurca")) return "Mazurca";
  return "Marcha"; // Default
}

// Parse cifra content from API format to HTML format
function parseCifraContent(cifraString: string): string {
  if (!cifraString) return "";

  // The API returns cifras in format: "chord1;chord2;chord3;..."
  // We need to convert this back to HTML with <cifra> and <p> tags
  const parts = cifraString.split(";");
  let html = "";

  for (let i = 0; i < parts.length; i++) {
    const part = parts[i];
    if (i % 2 === 0) {
      // Even index = chord line
      html += `<cifra class="cifra">${part}</cifra>`;
    } else {
      // Odd index = lyrics line
      html += `<p>${part}</p>`;
    }
  }

  return html;
}

// Scrape a hinário using the JSON API
async function scrapeHinarioFromAPI(
  slug: string,
  autor?: string
): Promise<ScrapedHinario | null> {
  const apiUrl = `https://estudofino.org/2024/api/hinario.php?type=h&url=${slug}&chords=true&abcnotation=false&audios=false`;

  try {
    const data = await fetchJSON(apiUrl);

    if (!data || !data.nome) {
      console.log(`⚠️  No data found for ${slug}`);
      return null;
    }

    const hinarioNome = data.nome;
    const hinarioAutor = autor || data.canal || "Autor Desconhecido";
    const hinos: ScrapedHino[] = [];

    // Process each hino from the API response
    if (data.hinos && Array.isArray(data.hinos)) {
      data.hinos.forEach((hinoData: any) => {
        const numero = parseInt(hinoData.num, 10) || 0;
        const titulo = hinoData.nome || "";
        const hinoAutor = hinoData.canal || hinarioAutor;
        const ritmo = normalizeRitmo(hinoData.ritmo || "marcha");
        const posicao = hinoData.depe || "DE PÉ";
        const letraPura = hinoData.hino || "";

        // Get the first cifra (tom and chord content)
        let tomOriginal = "C";
        let conteudoCifrado = "";

        if (hinoData.cifras && hinoData.cifras.length > 0) {
          const cifra = hinoData.cifras[0];
          tomOriginal = cifra.tom || "C";
          conteudoCifrado = parseCifraContent(cifra.cifra || "");
        }

        if (titulo) {
          hinos.push({
            id: hinoData.hinoid,
            numero,
            titulo,
            autor: hinoAutor,
            ritmo,
            posicao: posicao.toUpperCase(),
            tomOriginal,
            letraPura: letraPura.replace(/\r\n/g, "\n"),
            conteudoCifrado,
          });
        }
      });
    }

    console.log(`📊 Total hinos encontrados: ${hinos.length}`);

    if (hinos.length === 0) {
      console.log(`⚠️  No hymns found, skipping this hinário...\n`);
      return null;
    }

    return {
      nome: hinarioNome,
      slug,
      autor: hinarioAutor,
      totalHinos: hinos.length,
      hinos,
    };
  } catch (error) {
    console.error(`❌ Error fetching from API:`, error);
    return null;
  }
}

// Export to JSON for database seeding
function exportToJson(hinario: ScrapedHinario, outputPath: string): void {
  const output = {
    hinario: {
      nome: hinario.nome,
      slug: hinario.slug,
      autor: hinario.autor,
      totalHinos: hinario.totalHinos,
    },
    hinos: hinario.hinos,
  };

  fs.writeFileSync(outputPath, JSON.stringify(output, null, 2), "utf-8");
}

// Generate SQL for a single hinário
function generateHinarioSQL(hinario: ScrapedHinario): string {
  let sql = `
-- ========================================
-- Hinário: ${hinario.nome} (${hinario.slug})
-- Autor: ${hinario.autor}
-- Total Hinos: ${hinario.totalHinos}
-- ========================================

-- Insert Hinário
INSERT INTO hinarios (nome, slug, autor, total_hinos)
VALUES ('${hinario.nome.replace(/'/g, "''")}', '${hinario.slug}', '${hinario.autor.replace(/'/g, "''")}', ${hinario.totalHinos})
ON CONFLICT (slug) DO NOTHING;

`;

  hinario.hinos.forEach((hino) => {
    const letraEscaped = hino.letraPura.replace(/'/g, "''");
    const cifraEscaped = hino.conteudoCifrado.replace(/'/g, "''");
    const tituloEscaped = hino.titulo.replace(/'/g, "''");

    sql += `
-- Hino ${hino.numero}: ${hino.titulo}
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
SELECT id, ${hino.numero}, '${tituloEscaped}', '${letraEscaped}', '${hino.ritmo}', '${hino.posicao}'
FROM hinarios WHERE slug = '${hinario.slug}'
ON CONFLICT (hinario_id, numero) DO NOTHING;

INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
SELECT h.id, '${hino.tomOriginal}', '${cifraEscaped}', true
FROM hinos h
JOIN hinarios hi ON h.hinario_id = hi.id
WHERE hi.slug = '${hinario.slug}' AND h.numero = ${hino.numero}
ON CONFLICT (hino_id, tom_original) DO NOTHING;

`;
  });

  return sql;
}

// Generate comprehensive SQL for all hinários
function generateAllHinariosSQL(
  hinarios: ScrapedHinario[],
  outputPath: string
): void {
  let sql = `-- ========================================
-- Luz Cifrada - Complete Database Seed
-- Generated from estudofino.org
-- Date: ${new Date().toISOString()}
-- Total Hinários: ${hinarios.length}
-- ========================================

`;

  hinarios.forEach((hinario) => {
    sql += generateHinarioSQL(hinario);
  });

  fs.writeFileSync(outputPath, sql, "utf-8");
  console.log(`\n📝 SQL seed file generated: ${outputPath}`);
  console.log(`   Total hinários: ${hinarios.length}`);
  console.log(
    `   Total hinos: ${hinarios.reduce((sum, h) => sum + h.totalHinos, 0)}`
  );
}

// Main execution - scrape all hinários from Estudo Fino
async function main() {
  const scrapersDir = path.join(process.cwd(), "scrapers");

  try {
    console.log("🚀 Starting Luz Cifrada Scraper\n");
    console.log("=".repeat(50));

    // Step 1: Discover all hinários
    const hinarioLinks = await discoverHinarios();

    // Step 2: Scrape each hinário using API
    const scrapedHinarios: ScrapedHinario[] = [];
    const failedHinarios: string[] = [];

    console.log("=".repeat(50));
    console.log("🎵 Starting to scrape individual hinários...\n");

    for (let i = 0; i < hinarioLinks.length; i++) {
      const link = hinarioLinks[i];
      console.log(
        `[${i + 1}/${hinarioLinks.length}] Processing: ${link.nome} (${link.slug})`
      );

      try {
        const hinario = await scrapeHinarioFromAPI(link.slug, link.autor);

        if (hinario) {
          scrapedHinarios.push(hinario);
          console.log(`✅ Successfully scraped: ${hinario.nome}\n`);
        } else {
          failedHinarios.push(link.slug);
          console.log(`⏭️  Skipped: ${link.slug}\n`);
        }
      } catch (error) {
        console.error(`❌ Failed to scrape ${link.slug}:`, error);
        failedHinarios.push(link.slug);
        console.log();
      }
    }

    // Step 3: Generate outputs
    console.log("=".repeat(50));
    console.log("\n📊 Scraping Summary:");
    console.log(`   ✅ Successfully scraped: ${scrapedHinarios.length} hinários`);
    console.log(`   ❌ Failed/Skipped: ${failedHinarios.length} hinários`);
    console.log(
      `   🎵 Total hinos: ${scrapedHinarios.reduce((sum, h) => sum + h.totalHinos, 0)}`
    );

    if (failedHinarios.length > 0) {
      console.log(`\n   Skipped: ${failedHinarios.join(", ")}`);
    }

    // Export individual JSONs
    console.log("\n💾 Exporting JSON files...");
    scrapedHinarios.forEach((hinario) => {
      const jsonOutput = path.join(scrapersDir, `${hinario.slug}.json`);
      exportToJson(hinario, jsonOutput);
    });

    // Generate comprehensive SQL file
    const sqlOutput = path.join(scrapersDir, "seed_all_hinarios.sql");
    generateAllHinariosSQL(scrapedHinarios, sqlOutput);

    // Generate hinários list
    const hinariosListPath = path.join(scrapersDir, "hinarios_list.json");
    const hinariosList = scrapedHinarios.map((h) => ({
      nome: h.nome,
      slug: h.slug,
      autor: h.autor,
      totalHinos: h.totalHinos,
    }));
    fs.writeFileSync(
      hinariosListPath,
      JSON.stringify(hinariosList, null, 2),
      "utf-8"
    );
    console.log(`📋 Hinários list saved: ${hinariosListPath}`);

    console.log("\n" + "=".repeat(50));
    console.log("✨ Scraping completed successfully!");
    console.log("=".repeat(50) + "\n");
  } catch (error) {
    console.error("❌ Error during scraping:", error);
    process.exit(1);
  }
}

main();
