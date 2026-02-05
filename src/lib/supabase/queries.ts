import { supabase } from "./client";
import type { SearchFilters, SearchResult } from "@/types/search";
import type { Hinario } from "./types";

/**
 * Fetch all hinários from the database
 */
export async function getHinarios(): Promise<Hinario[]> {
  const { data, error } = await supabase
    .from("hinarios")
    .select("id, nome, slug, autor, total_hinos, imagem_url, created_at")
    .order("nome", { ascending: true });

  if (error) {
    console.error("Error fetching hinários:", error);
    return [];
  }

  // Filter out any hinários with missing slugs or names
  return (data || []).filter((h) => h.slug && h.nome);
}

/**
 * Get unique list of hinário authors for filter dropdown
 */
export async function getAutores(): Promise<string[]> {
  const { data, error } = await supabase
    .from("hinarios")
    .select("autor")
    .order("autor", { ascending: true });

  if (error) {
    console.error("Error fetching authors:", error);
    return [];
  }

  // Get unique authors
  const uniqueAutores = Array.from(
    new Set((data || []).map((h) => h.autor).filter(Boolean))
  );

  return uniqueAutores;
}

/**
 * Search hinos across all hinários with optional filters
 */
export async function searchHinos(
  searchQuery: string,
  filters: SearchFilters = {},
  limit: number = 50
): Promise<SearchResult[]> {
  if (!searchQuery || searchQuery.trim().length === 0) {
    return [];
  }

  const trimmedQuery = searchQuery.trim();

  // Check if query is a number for exact number matching
  const isNumber = /^\d+$/.test(trimmedQuery);

  // Build the base query
  let query = supabase
    .from("hinos")
    .select(
      `
      id,
      numero,
      titulo,
      letra_pura,
      ritmo,
      posicao,
      hinario_id,
      hinarios!inner (
        nome,
        slug,
        autor
      )
    `
    )
    .limit(limit);

  // Build OR condition for multi-field search
  const orConditions: string[] = [];

  if (isNumber) {
    // Exact number match
    orConditions.push(`numero.eq.${trimmedQuery}`);
  } else {
    // Case-insensitive partial match for title and lyrics
    orConditions.push(`titulo.ilike.%${trimmedQuery}%`);
    orConditions.push(`letra_pura.ilike.%${trimmedQuery}%`);
  }

  // Apply OR conditions
  if (orConditions.length > 0) {
    query = query.or(orConditions.join(","));
  }

  // Apply filters
  if (filters.hinarioId) {
    query = query.eq("hinario_id", filters.hinarioId);
  }

  if (filters.ritmo) {
    query = query.eq("ritmo", filters.ritmo);
  }

  if (filters.autor) {
    // Filter by author through the hinarios relation
    query = query.eq("hinarios.autor", filters.autor);
  }

  // Order results: by hinário name, then by hymn number
  query = query.order("numero", { ascending: true });

  const { data, error } = await query;

  if (error) {
    console.error("Error searching hinos:", error);
    return [];
  }

  // Transform the results to match SearchResult interface
  const results: SearchResult[] = (data || []).map((hino: any) => {
    const hinarioData = hino.hinarios;

    // Create snippet from letra_pura (first 150 characters)
    const letraSnippet =
      hino.letra_pura.length > 150
        ? hino.letra_pura.substring(0, 150) + "..."
        : hino.letra_pura;

    return {
      hino_id: hino.id,
      numero: hino.numero,
      titulo: hino.titulo,
      letra_snippet: letraSnippet,
      ritmo: hino.ritmo,
      posicao: hino.posicao,
      hinario_id: hino.hinario_id,
      hinario_nome: hinarioData.nome,
      hinario_slug: hinarioData.slug,
      hinario_autor: hinarioData.autor,
    };
  });

  return results;
}
