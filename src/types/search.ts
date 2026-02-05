export interface SearchFilters {
  hinarioId?: string;
  ritmo?: "Marcha" | "Valsa" | "Mazurca";
  autor?: string;
}

export interface SearchResult {
  hino_id: string;
  numero: number;
  titulo: string;
  letra_snippet: string; // First 150 chars
  ritmo: string;
  posicao: string;
  hinario_id: string;
  hinario_nome: string;
  hinario_slug: string;
  hinario_autor: string;
}

export interface SearchResponse {
  results: SearchResult[];
  total: number;
  query: string;
}
