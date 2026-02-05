"use client";

import { useState, useCallback, useMemo } from "react";
import { Search, X, Loader2 } from "lucide-react";
import type { SearchFilters } from "@/types/search";
import type { Hinario } from "@/lib/supabase/types";

interface SearchBarProps {
  onSearch: (query: string, filters: SearchFilters) => void;
  hinarios: Hinario[];
  autores: string[];
  isLoading?: boolean;
}

// Debounce utility function
function debounce<T extends (...args: any[]) => any>(
  func: T,
  delay: number
): (...args: Parameters<T>) => void {
  let timeoutId: NodeJS.Timeout;
  return (...args: Parameters<T>) => {
    clearTimeout(timeoutId);
    timeoutId = setTimeout(() => func(...args), delay);
  };
}

export default function SearchBar({
  onSearch,
  hinarios,
  autores,
  isLoading = false,
}: SearchBarProps) {
  const [query, setQuery] = useState("");
  const [filters, setFilters] = useState<SearchFilters>({});

  // Debounced search function
  const debouncedSearch = useMemo(
    () =>
      debounce((searchQuery: string, searchFilters: SearchFilters) => {
        if (searchQuery.trim().length > 0) {
          onSearch(searchQuery, searchFilters);
        }
      }, 500),
    [onSearch]
  );

  // Handle query input change
  const handleQueryChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const newQuery = e.target.value;
    setQuery(newQuery);
    debouncedSearch(newQuery, filters);
  };

  // Handle filter changes
  const handleFilterChange = (
    filterKey: keyof SearchFilters,
    value: string
  ) => {
    const newFilters = {
      ...filters,
      [filterKey]: value || undefined,
    };

    // Remove undefined values
    Object.keys(newFilters).forEach((key) => {
      if (newFilters[key as keyof SearchFilters] === undefined) {
        delete newFilters[key as keyof SearchFilters];
      }
    });

    setFilters(newFilters);

    // Trigger search immediately when filter changes
    if (query.trim().length > 0) {
      onSearch(query, newFilters);
    }
  };

  // Clear search
  const handleClear = () => {
    setQuery("");
    setFilters({});
  };

  return (
    <div className="w-full space-y-4">
      {/* Search Input */}
      <div className="relative">
        <Search className="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-dark-muted" />
        <input
          type="text"
          value={query}
          onChange={handleQueryChange}
          placeholder="Buscar hinos por título, número ou letra..."
          className="w-full bg-dark-card border border-dark-border rounded-lg pl-12 pr-12 py-3 text-dark-text
                   placeholder:text-dark-muted focus:outline-none focus:border-azul-astral transition-colors"
        />
        {isLoading && (
          <Loader2 className="absolute right-4 top-1/2 -translate-y-1/2 w-5 h-5 text-azul-300 animate-spin" />
        )}
        {!isLoading && query && (
          <button
            onClick={handleClear}
            className="absolute right-4 top-1/2 -translate-y-1/2 w-5 h-5 text-dark-muted hover:text-dark-text transition-colors"
            aria-label="Clear search"
          >
            <X className="w-5 h-5" />
          </button>
        )}
      </div>

      {/* Filters */}
      <div className="flex flex-col sm:flex-row gap-3">
        {/* Hinário Filter */}
        <select
          value={filters.hinarioId || ""}
          onChange={(e) => handleFilterChange("hinarioId", e.target.value)}
          className="filter-select flex-1"
        >
          <option value="">Todos os hinários</option>
          {hinarios.map((hinario) => (
            <option key={hinario.id} value={hinario.id}>
              {hinario.nome}
            </option>
          ))}
        </select>

        {/* Rhythm Filter */}
        <select
          value={filters.ritmo || ""}
          onChange={(e) => handleFilterChange("ritmo", e.target.value)}
          className="filter-select flex-1"
        >
          <option value="">Todos os ritmos</option>
          <option value="Marcha">Marcha</option>
          <option value="Valsa">Valsa</option>
          <option value="Mazurca">Mazurca</option>
        </select>

        {/* Author Filter */}
        <select
          value={filters.autor || ""}
          onChange={(e) => handleFilterChange("autor", e.target.value)}
          className="filter-select flex-1"
        >
          <option value="">Todos os autores</option>
          {autores.map((autor) => (
            <option key={autor} value={autor}>
              {autor}
            </option>
          ))}
        </select>
      </div>
    </div>
  );
}
