import SearchResultCard from "./SearchResultCard";
import type { SearchResult } from "@/types/search";

interface SearchResultsProps {
  results: SearchResult[];
  query: string;
  isLoading?: boolean;
}

export default function SearchResults({
  results,
  query,
  isLoading = false,
}: SearchResultsProps) {
  // Loading state
  if (isLoading) {
    return (
      <div className="max-w-6xl mx-auto">
        <div className="text-center py-12">
          <div className="inline-block w-8 h-8 border-4 border-azul-astral border-t-transparent rounded-full animate-spin" />
          <p className="text-dark-muted mt-4">Buscando hinos...</p>
        </div>
      </div>
    );
  }

  // Empty state
  if (!results || results.length === 0) {
    return (
      <div className="max-w-6xl mx-auto">
        <div className="text-center py-12">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            fill="none"
            viewBox="0 0 24 24"
            strokeWidth={1.5}
            stroke="currentColor"
            className="w-16 h-16 mx-auto text-dark-muted mb-4"
          >
            <path
              strokeLinecap="round"
              strokeLinejoin="round"
              d="m21 21-5.197-5.197m0 0A7.5 7.5 0 1 0 5.196 5.196a7.5 7.5 0 0 0 10.607 10.607Z"
            />
          </svg>
          <h3 className="text-xl font-semibold text-dark-text mb-2">
            Nenhum hino encontrado
          </h3>
          <p className="text-dark-muted">
            Tente buscar por título, número ou trechos da letra
          </p>
        </div>
      </div>
    );
  }

  // Results display
  return (
    <div className="max-w-6xl mx-auto">
      {/* Results count */}
      <div className="mb-6">
        <h2 className="text-2xl font-semibold text-dark-text">
          Resultados da Busca
        </h2>
        <p className="text-dark-muted mt-1">
          Encontrados {results.length} hino{results.length !== 1 ? "s" : ""}{" "}
          {query && (
            <>
              para <span className="text-azul-300 font-medium">{query}</span>
            </>
          )}
        </p>
      </div>

      {/* Results grid */}
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        {results.map((result) => (
          <SearchResultCard
            key={result.hino_id}
            result={result}
            searchQuery={query}
          />
        ))}
      </div>

      {/* Pagination hint (if we have max results) */}
      {results.length >= 50 && (
        <div className="mt-8 text-center">
          <p className="text-sm text-dark-muted">
            Mostrando os primeiros 50 resultados. Refine sua busca para
            encontrar hinos específicos.
          </p>
        </div>
      )}
    </div>
  );
}
