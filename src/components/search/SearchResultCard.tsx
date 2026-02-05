import Link from "next/link";
import type { SearchResult } from "@/types/search";

interface SearchResultCardProps {
  result: SearchResult;
  searchQuery: string;
}

// Helper function to highlight search term in text
function highlightText(text: string, query: string): React.ReactNode {
  if (!query || query.trim().length === 0) {
    return text;
  }

  const parts = text.split(new RegExp(`(${query})`, "gi"));

  return (
    <>
      {parts.map((part, index) =>
        part.toLowerCase() === query.toLowerCase() ? (
          <mark key={index} className="search-highlight">
            {part}
          </mark>
        ) : (
          <span key={index}>{part}</span>
        )
      )}
    </>
  );
}

// Get badge class based on rhythm
function getRhythmBadgeClass(ritmo: string): string {
  switch (ritmo) {
    case "Marcha":
      return "badge-marcha";
    case "Valsa":
      return "badge-valsa";
    case "Mazurca":
      return "badge-mazurca";
    default:
      return "badge";
  }
}

export default function SearchResultCard({
  result,
  searchQuery,
}: SearchResultCardProps) {
  return (
    <Link
      href={`/hinario/${result.hinario_slug}#hino-${result.numero}`}
      className="search-result-card block"
    >
      {/* Header: Hinário Name Badge */}
      <div className="flex items-center justify-between mb-3">
        <span className="text-xs text-azul-300 font-medium">
          {result.hinario_nome}
        </span>
        <span className={`${getRhythmBadgeClass(result.ritmo)}`}>
          {result.ritmo}
        </span>
      </div>

      {/* Hymn Number and Title */}
      <div className="mb-2">
        <h3 className="text-lg font-semibold text-dark-text group-hover:text-azul-300 transition-colors">
          <span className="text-verde-floresta mr-2">#{result.numero}</span>
          {highlightText(result.titulo, searchQuery)}
        </h3>
      </div>

      {/* Author */}
      <p className="text-sm text-dark-muted mb-2">{result.hinario_autor}</p>

      {/* Lyrics Snippet */}
      <p className="text-sm text-dark-muted line-clamp-2">
        {highlightText(result.letra_snippet, searchQuery)}
      </p>

      {/* Position Info */}
      {result.posicao && (
        <p className="text-xs text-dark-muted/70 mt-2 italic">
          {result.posicao}
        </p>
      )}
    </Link>
  );
}
