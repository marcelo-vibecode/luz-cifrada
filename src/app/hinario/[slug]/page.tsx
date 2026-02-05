import Link from "next/link";
import { ChordViewer } from "@/components/chord/ChordViewer";
import { AutoScroll } from "@/components/player/AutoScroll";
import { supabase } from "@/lib/supabase/client";

interface HinarioPageProps {
  params: { slug: string };
}

interface Hinario {
  id: string;
  nome: string;
  slug: string;
  autor: string;
  total_hinos: number;
  imagem_url: string | null;
}

interface Hino {
  id: string;
  numero: number;
  titulo: string;
  ritmo: "Marcha" | "Valsa" | "Mazurca";
  posicao: string;
  letra_pura: string;
}

interface Cifra {
  id: string;
  tom_original: string;
  conteudo_cifrado: string;
}

interface HinoWithCifra extends Hino {
  cifras: Cifra[];
}

async function getHinario(slug: string): Promise<Hinario | null> {
  const { data, error } = await supabase
    .from("hinarios")
    .select("*")
    .eq("slug", slug)
    .single();

  if (error) {
    console.error("Error fetching hinario:", error);
    return null;
  }

  return data;
}

async function getHinosWithCifras(hinarioId: string): Promise<HinoWithCifra[]> {
  // Fetch all hinos for this hinario - NO LIMIT
  const { data: hinos, error: hinosError } = await supabase
    .from("hinos")
    .select("id, numero, titulo, ritmo, posicao, letra_pura")
    .eq("hinario_id", hinarioId)
    .order("numero", { ascending: true });

  if (hinosError) {
    console.error("Error fetching hinos:", hinosError);
    return [];
  }

  if (!hinos || hinos.length === 0) {
    return [];
  }

  // Fetch all cifras for these hinos
  const hinoIds = hinos.map((h) => h.id);
  const { data: cifras, error: cifrasError } = await supabase
    .from("cifras")
    .select("id, hino_id, tom_original, conteudo_cifrado")
    .in("hino_id", hinoIds);

  if (cifrasError) {
    console.error("Error fetching cifras:", cifrasError);
  }

  // Map cifras to hinos
  const cifrasMap = new Map<string, Cifra[]>();
  (cifras || []).forEach((cifra: any) => {
    const existing = cifrasMap.get(cifra.hino_id) || [];
    existing.push({
      id: cifra.id,
      tom_original: cifra.tom_original,
      conteudo_cifrado: cifra.conteudo_cifrado,
    });
    cifrasMap.set(cifra.hino_id, existing);
  });

  return hinos.map((hino) => ({
    ...hino,
    cifras: cifrasMap.get(hino.id) || [],
  }));
}

export default async function HinarioPage({ params }: HinarioPageProps) {
  const hinario = await getHinario(params.slug);

  if (!hinario) {
    return (
      <div className="min-h-screen flex items-center justify-center">
        <div className="text-center">
          <h1 className="text-2xl font-bold mb-4">Hinário não encontrado</h1>
          <Link href="/hinarios" className="btn-primary">
            Voltar aos Hinários
          </Link>
        </div>
      </div>
    );
  }

  const hinos = await getHinosWithCifras(hinario.id);

  return (
    <div className="min-h-screen">
      {/* Hinario Header */}
      <div className="bg-gradient-to-b from-azul-astral/20 to-transparent py-8 px-4">
        <div className="max-w-4xl mx-auto">
          <Link
            href="/hinarios"
            className="inline-flex items-center gap-2 text-dark-muted hover:text-dark-text mb-4 transition-colors"
          >
            <svg
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 24 24"
              strokeWidth={2}
              stroke="currentColor"
              className="w-4 h-4"
            >
              <path
                strokeLinecap="round"
                strokeLinejoin="round"
                d="M10.5 19.5 3 12m0 0 7.5-7.5M3 12h18"
              />
            </svg>
            Voltar
          </Link>

          <div className="flex flex-col md:flex-row gap-6 items-start">
            {/* Cover placeholder */}
            <div className="w-32 h-32 rounded-xl bg-gradient-to-br from-azul-astral/30 to-verde-floresta/30 flex items-center justify-center flex-shrink-0">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                strokeWidth={1}
                stroke="currentColor"
                className="w-16 h-16 text-dark-muted/50"
              >
                <path
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  d="M12 6.042A8.967 8.967 0 0 0 6 3.75c-1.052 0-2.062.18-3 .512v14.25A8.987 8.987 0 0 1 6 18c2.305 0 4.408.867 6 2.292m0-14.25a8.966 8.966 0 0 1 6-2.292c1.052 0 2.062.18 3 .512v14.25A8.987 8.987 0 0 0 18 18a8.967 8.967 0 0 0-6 2.292m0-14.25v14.25"
                />
              </svg>
            </div>

            <div>
              <h1 className="text-3xl font-display font-bold mb-2">
                {hinario.nome}
              </h1>
              <p className="text-dark-muted text-lg mb-2">{hinario.autor}</p>
              <p className="text-verde-floresta">
                {hinos.length} hinos carregados
              </p>
            </div>
          </div>
        </div>
      </div>

      {/* Hinos List */}
      <div className="max-w-4xl mx-auto px-4 py-8">
        {/* Quick navigation */}
        <div className="mb-8 flex flex-wrap gap-2">
          <span className="text-dark-muted text-sm">Ir para:</span>
          {hinos.map((hino) => (
            <a
              key={hino.id}
              href={`#hino-${hino.numero}`}
              className="text-sm text-azul-300 hover:text-azul-200 transition-colors"
            >
              {hino.numero}.
            </a>
          ))}
        </div>

        {/* Hinos */}
        <div className="space-y-12">
          {hinos.map((hino) => {
            const cifra = hino.cifras[0]; // Use first cifra
            if (!cifra) {
              return (
                <article
                  key={hino.id}
                  id={`hino-${hino.numero}`}
                  className="card scroll-mt-20"
                >
                  <h2 className="text-xl font-semibold mb-2">
                    {hino.numero}. {hino.titulo}
                  </h2>
                  <p className="text-dark-muted">Cifra não disponível</p>
                  <pre className="mt-4 whitespace-pre-wrap text-sm font-mono">
                    {hino.letra_pura}
                  </pre>
                </article>
              );
            }

            return (
              <article
                key={hino.id}
                id={`hino-${hino.numero}`}
                className="card scroll-mt-20"
              >
                <ChordViewer
                  conteudo={cifra.conteudo_cifrado}
                  tomOriginal={cifra.tom_original}
                  titulo={hino.titulo}
                  numero={hino.numero}
                  ritmo={hino.ritmo}
                  posicao={hino.posicao}
                />
              </article>
            );
          })}
        </div>

        {hinos.length === 0 && (
          <div className="text-center py-12">
            <p className="text-dark-muted text-lg">
              Nenhum hino encontrado neste hinário.
            </p>
            <p className="text-dark-muted text-sm mt-2">
              Verifique se o banco de dados foi populado com o seed.sql
            </p>
          </div>
        )}
      </div>

      {/* Auto-scroll control */}
      <AutoScroll />
    </div>
  );
}

// Generate metadata
export async function generateMetadata({ params }: HinarioPageProps) {
  const hinario = await getHinario(params.slug);

  if (!hinario) {
    return {
      title: "Hinário não encontrado - Luz Cifrada",
    };
  }

  return {
    title: `${hinario.nome} - Luz Cifrada`,
    description: `Cifras do hinário ${hinario.nome} de ${hinario.autor}. ${hinario.total_hinos} hinos com transposição de tom e auto-scroll.`,
  };
}
