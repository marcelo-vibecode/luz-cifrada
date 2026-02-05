export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json | undefined }
  | Json[];

export interface Database {
  public: {
    Tables: {
      hinarios: {
        Row: {
          id: string;
          nome: string;
          slug: string;
          autor: string;
          imagem_url: string | null;
          total_hinos: number;
          created_at: string;
        };
        Insert: {
          id?: string;
          nome: string;
          slug: string;
          autor: string;
          imagem_url?: string | null;
          total_hinos?: number;
          created_at?: string;
        };
        Update: {
          id?: string;
          nome?: string;
          slug?: string;
          autor?: string;
          imagem_url?: string | null;
          total_hinos?: number;
          created_at?: string;
        };
      };
      hinos: {
        Row: {
          id: string;
          hinario_id: string;
          numero: number;
          titulo: string;
          letra_pura: string;
          ritmo: "Marcha" | "Valsa" | "Mazurca";
          posicao: string;
          created_at: string;
        };
        Insert: {
          id?: string;
          hinario_id: string;
          numero: number;
          titulo: string;
          letra_pura: string;
          ritmo: "Marcha" | "Valsa" | "Mazurca";
          posicao?: string;
          created_at?: string;
        };
        Update: {
          id?: string;
          hinario_id?: string;
          numero?: number;
          titulo?: string;
          letra_pura?: string;
          ritmo?: "Marcha" | "Valsa" | "Mazurca";
          posicao?: string;
          created_at?: string;
        };
      };
      cifras: {
        Row: {
          id: string;
          hino_id: string;
          user_id: string | null;
          tom_original: string;
          conteudo_cifrado: string;
          is_approved: boolean;
          created_at: string;
        };
        Insert: {
          id?: string;
          hino_id: string;
          user_id?: string | null;
          tom_original: string;
          conteudo_cifrado: string;
          is_approved?: boolean;
          created_at?: string;
        };
        Update: {
          id?: string;
          hino_id?: string;
          user_id?: string | null;
          tom_original?: string;
          conteudo_cifrado?: string;
          is_approved?: boolean;
          created_at?: string;
        };
      };
      profiles: {
        Row: {
          id: string;
          user_id: string;
          is_pro: boolean;
          display_name: string;
          avatar_url: string | null;
          created_at: string;
        };
        Insert: {
          id?: string;
          user_id: string;
          is_pro?: boolean;
          display_name: string;
          avatar_url?: string | null;
          created_at?: string;
        };
        Update: {
          id?: string;
          user_id?: string;
          is_pro?: boolean;
          display_name?: string;
          avatar_url?: string | null;
          created_at?: string;
        };
      };
    };
    Views: Record<string, never>;
    Functions: Record<string, never>;
    Enums: {
      ritmo: "Marcha" | "Valsa" | "Mazurca";
    };
  };
}

// Helper types for easier usage
export type Hinario = Database["public"]["Tables"]["hinarios"]["Row"];
export type Hino = Database["public"]["Tables"]["hinos"]["Row"];
export type Cifra = Database["public"]["Tables"]["cifras"]["Row"];
export type Profile = Database["public"]["Tables"]["profiles"]["Row"];

export type HinarioInsert = Database["public"]["Tables"]["hinarios"]["Insert"];
export type HinoInsert = Database["public"]["Tables"]["hinos"]["Insert"];
export type CifraInsert = Database["public"]["Tables"]["cifras"]["Insert"];
export type ProfileInsert = Database["public"]["Tables"]["profiles"]["Insert"];
