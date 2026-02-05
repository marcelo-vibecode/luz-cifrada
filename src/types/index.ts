/**
 * Core types for Luz Cifrada
 */

export type Ritmo = "Marcha" | "Valsa" | "Mazurca";

export interface Hinario {
  id: string;
  nome: string;
  slug: string;
  autor: string;
  imagemUrl?: string;
  totalHinos: number;
  createdAt: string;
}

export interface Hino {
  id: string;
  hinarioId: string;
  numero: number;
  titulo: string;
  letraPura: string;
  ritmo: Ritmo;
  posicao: "DE PÉ" | "SENTADO";
  createdAt: string;
}

export interface Cifra {
  id: string;
  hinoId: string;
  userId?: string;
  tomOriginal: string;
  conteudoCifrado: string; // HTML with <cifra> and <p> tags
  isApproved: boolean;
  createdAt: string;
  user?: UserProfile;
}

export interface UserProfile {
  id: string;
  userId: string;
  isPro: boolean;
  displayName: string;
  avatarUrl?: string;
}

// Combined type for display
export interface HinoWithCifra extends Hino {
  cifras: Cifra[];
  hinario?: Hinario;
}

// Scraper output types
export interface ScrapedHino {
  id: string;
  numero: number;
  titulo: string;
  autor: string;
  ritmo: Ritmo;
  posicao: string;
  tomOriginal: string;
  letraPura: string;
  blocos: ScrapedBloco[];
}

export interface ScrapedBloco {
  linhas: ScrapedLinha[];
}

export interface ScrapedLinha {
  tipo: "cifra" | "letra" | "vazio";
  conteudo: string;
}

export interface ScrapedHinario {
  nome: string;
  slug: string;
  autor: string;
  totalHinos: number;
  imagemUrl?: string;
  hinos: ScrapedHino[];
}

// API Response types
export interface ApiResponse<T> {
  data?: T;
  error?: string;
}

// Pagination
export interface PaginatedResponse<T> {
  data: T[];
  total: number;
  page: number;
  pageSize: number;
  totalPages: number;
}
