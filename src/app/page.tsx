"use client";

import { useState, useEffect } from "react";
import Link from "next/link";
import SearchBar from "@/components/search/SearchBar";
import SearchResults from "@/components/search/SearchResults";
import { getHinarios, getAutores } from "@/lib/supabase/queries";
import type { Hinario } from "@/lib/supabase/types";
import type { SearchFilters, SearchResponse } from "@/types/search";

export default function HomePage() {
  const [hinarios, setHinarios] = useState<Hinario[]>([]);
  const [autores, setAutores] = useState<string[]>([]);
  const [searchResults, setSearchResults] = useState<SearchResponse | null>(
    null
  );
  const [isSearching, setIsSearching] = useState(false);

  // Load hinários and authors on mount
  useEffect(() => {
    async function loadData() {
      const [hinariosData, autoresData] = await Promise.all([
        getHinarios(),
        getAutores(),
      ]);
      setHinarios(hinariosData);
      setAutores(autoresData);
    }
    loadData();
  }, []);

  // Handle search
  const handleSearch = async (query: string, filters: SearchFilters) => {
    if (!query || query.trim().length === 0) {
      setSearchResults(null);
      return;
    }

    setIsSearching(true);

    try {
      // Build query parameters
      const params = new URLSearchParams({ q: query });

      if (filters.hinarioId) params.append("hinarioId", filters.hinarioId);
      if (filters.ritmo) params.append("ritmo", filters.ritmo);
      if (filters.autor) params.append("autor", filters.autor);

      // Call search API
      const response = await fetch(`/api/search?${params.toString()}`);

      if (!response.ok) {
        throw new Error("Search failed");
      }

      const data: SearchResponse = await response.json();
      setSearchResults(data);
    } catch (error) {
      console.error("Search error:", error);
      setSearchResults({ results: [], total: 0, query });
    } finally {
      setIsSearching(false);
    }
  };

  return (
    <div className="min-h-screen">
      {/* Hero Section */}
      <section className="relative py-20 px-4 overflow-hidden">
        <div className="absolute inset-0 bg-gradient-to-b from-azul-astral/10 via-transparent to-transparent" />
        <div className="relative max-w-6xl mx-auto text-center">
          <h1 className="text-4xl md:text-6xl font-display font-bold mb-6">
            <span className="text-gradient">Luz Cifrada</span>
          </h1>
          <p className="text-xl md:text-2xl text-dark-muted max-w-2xl mx-auto mb-8">
            Cifras e tablaturas para a doutrina do Santo Daime. Patrimônio
            espiritual oferecido de forma aberta e gratuita.
          </p>

          {/* Search Bar */}
          <div className="max-w-3xl mx-auto mb-8">
            <SearchBar
              onSearch={handleSearch}
              hinarios={hinarios}
              autores={autores}
              isLoading={isSearching}
            />
          </div>

          <div className="flex flex-col sm:flex-row gap-4 justify-center">
            <Link href="/hinarios" className="btn-primary text-lg px-8 py-3">
              Explorar Hinários
            </Link>
            <Link href="#sobre" className="btn-secondary text-lg px-8 py-3">
              Saiba Mais
            </Link>
          </div>
        </div>
      </section>

      {/* Search Results Section */}
      {searchResults && (
        <section className="py-12 px-4 bg-dark-card/30">
          <SearchResults
            results={searchResults.results}
            query={searchResults.query}
            isLoading={isSearching}
          />
        </section>
      )}

      {/* All Hinários */}
      <section className="py-16 px-4">
        <div className="max-w-6xl mx-auto">
          <h2 className="text-2xl md:text-3xl font-display font-semibold mb-4 text-center">
            Hinários Disponíveis
          </h2>
          <p className="text-center text-dark-muted mb-8">
            {hinarios.length} hinários •{" "}
            {hinarios.reduce((sum, h) => sum + (h.total_hinos || 0), 0)} hinos
            disponíveis
          </p>
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-6">
            {hinarios.map((hinario) => (
              <Link
                key={hinario.id}
                href={`/hinario/${hinario.slug}`}
                className="card group"
              >
                <div className="aspect-square relative mb-4 rounded-lg overflow-hidden bg-dark-border">
                  <div className="absolute inset-0 flex items-center justify-center text-6xl text-dark-muted">
                    {/* Placeholder for image */}
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      fill="none"
                      viewBox="0 0 24 24"
                      strokeWidth={1.5}
                      stroke="currentColor"
                      className="w-16 h-16"
                    >
                      <path
                        strokeLinecap="round"
                        strokeLinejoin="round"
                        d="m9 9 10.5-3m0 6.553v3.75a2.25 2.25 0 0 1-1.632 2.163l-1.32.377a1.803 1.803 0 1 1-.99-3.467l2.31-.66a2.25 2.25 0 0 0 1.632-2.163Zm0 0V2.25L9 5.25v10.303m0 0v3.75a2.25 2.25 0 0 1-1.632 2.163l-1.32.377a1.803 1.803 0 0 1-.99-3.467l2.31-.66A2.25 2.25 0 0 0 9 15.553Z"
                      />
                    </svg>
                  </div>
                </div>
                <h3 className="text-xl font-semibold mb-1 group-hover:text-azul-300 transition-colors">
                  {hinario.nome}
                </h3>
                <p className="text-dark-muted mb-2 text-sm">{hinario.autor}</p>
                <p className="text-sm text-verde-floresta">
                  {hinario.total_hinos} hinos
                </p>
              </Link>
            ))}
          </div>
        </div>
      </section>

      {/* Features Section */}
      <section id="sobre" className="py-16 px-4 bg-dark-card/50">
        <div className="max-w-6xl mx-auto">
          <h2 className="text-2xl md:text-3xl font-display font-semibold mb-12 text-center">
            Recursos
          </h2>
          <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
            <FeatureCard
              icon={
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  fill="none"
                  viewBox="0 0 24 24"
                  strokeWidth={1.5}
                  stroke="currentColor"
                  className="w-8 h-8"
                >
                  <path
                    strokeLinecap="round"
                    strokeLinejoin="round"
                    d="M9.594 3.94c.09-.542.56-.94 1.11-.94h2.593c.55 0 1.02.398 1.11.94l.213 1.281c.063.374.313.686.645.87.074.04.147.083.22.127.325.196.72.257 1.075.124l1.217-.456a1.125 1.125 0 0 1 1.37.49l1.296 2.247a1.125 1.125 0 0 1-.26 1.431l-1.003.827c-.293.241-.438.613-.43.992a7.723 7.723 0 0 1 0 .255c-.008.378.137.75.43.991l1.004.827c.424.35.534.955.26 1.43l-1.298 2.247a1.125 1.125 0 0 1-1.369.491l-1.217-.456c-.355-.133-.75-.072-1.076.124a6.47 6.47 0 0 1-.22.128c-.331.183-.581.495-.644.869l-.213 1.281c-.09.543-.56.94-1.11.94h-2.594c-.55 0-1.019-.398-1.11-.94l-.213-1.281c-.062-.374-.312-.686-.644-.87a6.52 6.52 0 0 1-.22-.127c-.325-.196-.72-.257-1.076-.124l-1.217.456a1.125 1.125 0 0 1-1.369-.49l-1.297-2.247a1.125 1.125 0 0 1 .26-1.431l1.004-.827c.292-.24.437-.613.43-.991a6.932 6.932 0 0 1 0-.255c.007-.38-.138-.751-.43-.992l-1.004-.827a1.125 1.125 0 0 1-.26-1.43l1.297-2.247a1.125 1.125 0 0 1 1.37-.491l1.216.456c.356.133.751.072 1.076-.124.072-.044.146-.086.22-.128.332-.183.582-.495.644-.869l.214-1.28Z"
                  />
                  <path
                    strokeLinecap="round"
                    strokeLinejoin="round"
                    d="M15 12a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z"
                  />
                </svg>
              }
              title="Transposição de Tom"
              description="Ajuste a tonalidade das cifras para sua voz ou instrumento com um clique."
            />
            <FeatureCard
              icon={
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  fill="none"
                  viewBox="0 0 24 24"
                  strokeWidth={1.5}
                  stroke="currentColor"
                  className="w-8 h-8"
                >
                  <path
                    strokeLinecap="round"
                    strokeLinejoin="round"
                    d="M3 4.5h14.25M3 9h9.75M3 13.5h9.75m4.5-4.5v12m0 0-3.75-3.75M17.25 21l3.75-3.75"
                  />
                </svg>
              }
              title="Auto-scroll"
              description="Rolagem automática da página para tocar sem precisar das mãos."
            />
            <FeatureCard
              icon={
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  fill="none"
                  viewBox="0 0 24 24"
                  strokeWidth={1.5}
                  stroke="currentColor"
                  className="w-8 h-8"
                >
                  <path
                    strokeLinecap="round"
                    strokeLinejoin="round"
                    d="M10.5 1.5H8.25A2.25 2.25 0 0 0 6 3.75v16.5a2.25 2.25 0 0 0 2.25 2.25h7.5A2.25 2.25 0 0 0 18 20.25V3.75a2.25 2.25 0 0 0-2.25-2.25H13.5m-3 0V3h3V1.5m-3 0h3m-3 18.75h3"
                  />
                </svg>
              }
              title="Mobile-first"
              description="Design otimizado para uso em smartphones durante os trabalhos."
            />
          </div>
        </div>
      </section>

      {/* Footer */}
      <footer className="py-8 px-4 border-t border-dark-border">
        <div className="max-w-6xl mx-auto text-center text-dark-muted text-sm">
          <p className="mb-2">
            Luz Cifrada - Patrimônio espiritual do Santo Daime
          </p>
          <p>
            Conteúdo musical considerado de domínio espiritual e cultural
          </p>
        </div>
      </footer>
    </div>
  );
}

function FeatureCard({
  icon,
  title,
  description,
}: {
  icon: React.ReactNode;
  title: string;
  description: string;
}) {
  return (
    <div className="text-center">
      <div className="inline-flex items-center justify-center w-16 h-16 rounded-full bg-azul-astral/10 text-azul-300 mb-4">
        {icon}
      </div>
      <h3 className="text-lg font-semibold mb-2">{title}</h3>
      <p className="text-dark-muted">{description}</p>
    </div>
  );
}
