"use client";

import { useState, useEffect } from "react";
import Link from "next/link";
import { getHinarios } from "@/lib/supabase/queries";
import type { Hinario } from "@/lib/supabase/types";

export default function HinariosPage() {
  const [hinarios, setHinarios] = useState<Hinario[]>([]);
  const [isLoading, setIsLoading] = useState(true);
  const [searchQuery, setSearchQuery] = useState("");

  useEffect(() => {
    async function loadHinarios() {
      try {
        const data = await getHinarios();
        setHinarios(data);
      } catch (error) {
        console.error("Failed to load hinários:", error);
      } finally {
        setIsLoading(false);
      }
    }
    loadHinarios();
  }, []);

  const filteredHinarios = hinarios.filter((hinario) =>
    hinario.nome.toLowerCase().includes(searchQuery.toLowerCase())
  );

  return (
    <div className="min-h-screen px-4 py-8">
      <div className="max-w-6xl mx-auto">
        {/* Header */}
        <div className="mb-8">
          <h1 className="text-3xl font-display font-bold mb-2">Hinários</h1>
          <p className="text-dark-muted">
            Explore os hinários sagrados do Santo Daime
          </p>
        </div>

        {/* Search */}
        <div className="mb-8">
          <div className="relative max-w-md">
            <input
              type="search"
              placeholder="Buscar hinário..."
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              className="w-full bg-dark-card border border-dark-border rounded-lg px-4 py-3 pl-10 focus:outline-none focus:border-azul-astral transition-colors"
            />
            <svg
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 24 24"
              strokeWidth={1.5}
              stroke="currentColor"
              className="w-5 h-5 absolute left-3 top-1/2 -translate-y-1/2 text-dark-muted"
            >
              <path
                strokeLinecap="round"
                strokeLinejoin="round"
                d="m21 21-5.197-5.197m0 0A7.5 7.5 0 1 0 5.196 5.196a7.5 7.5 0 0 0 10.607 10.607Z"
              />
            </svg>
          </div>
        </div>

        {/* Loading State */}
        {isLoading && (
          <div className="text-center py-12">
            <div className="inline-block animate-spin rounded-full h-8 w-8 border-b-2 border-azul-astral"></div>
            <p className="mt-4 text-dark-muted">Carregando hinários...</p>
          </div>
        )}

        {/* Hinarios Grid */}
        {!isLoading && (
          <>
            <div className="mb-4 text-dark-muted">
              {filteredHinarios.length} hinário(s) encontrado(s)
            </div>
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
              {filteredHinarios.map((hinario) => (
                <Link
                  key={hinario.id}
                  href={`/hinario/${hinario.slug}`}
                  className="card group"
                >
                  <div className="aspect-[4/3] relative mb-4 rounded-lg overflow-hidden bg-gradient-to-br from-azul-astral/20 to-verde-floresta/20">
                    <div className="absolute inset-0 flex items-center justify-center">
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        fill="none"
                        viewBox="0 0 24 24"
                        strokeWidth={1}
                        stroke="currentColor"
                        className="w-20 h-20 text-dark-muted/50"
                      >
                        <path
                          strokeLinecap="round"
                          strokeLinejoin="round"
                          d="M12 6.042A8.967 8.967 0 0 0 6 3.75c-1.052 0-2.062.18-3 .512v14.25A8.987 8.987 0 0 1 6 18c2.305 0 4.408.867 6 2.292m0-14.25a8.966 8.966 0 0 1 6-2.292c1.052 0 2.062.18 3 .512v14.25A8.987 8.987 0 0 0 18 18a8.967 8.967 0 0 0-6 2.292m0-14.25v14.25"
                        />
                      </svg>
                    </div>
                  </div>

                  <h2 className="text-xl font-semibold mb-1 group-hover:text-azul-300 transition-colors">
                    {hinario.nome}
                  </h2>
                  <p className="text-dark-muted text-sm mb-3">
                    {hinario.autor}
                  </p>
                  <div className="flex items-center justify-between">
                    <span className="text-verde-floresta font-medium">
                      {hinario.total_hinos} hinos
                    </span>
                    <span className="text-azul-300 group-hover:translate-x-1 transition-transform">
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        fill="none"
                        viewBox="0 0 24 24"
                        strokeWidth={2}
                        stroke="currentColor"
                        className="w-5 h-5"
                      >
                        <path
                          strokeLinecap="round"
                          strokeLinejoin="round"
                          d="M13.5 4.5 21 12m0 0-7.5 7.5M21 12H3"
                        />
                      </svg>
                    </span>
                  </div>
                </Link>
              ))}

              {filteredHinarios.length === 0 && !isLoading && (
                <div className="col-span-full text-center py-12">
                  <p className="text-dark-muted">
                    Nenhum hinário encontrado com "{searchQuery}"
                  </p>
                </div>
              )}
            </div>
          </>
        )}
      </div>
    </div>
  );
}
