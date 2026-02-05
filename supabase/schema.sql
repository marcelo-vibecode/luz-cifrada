-- Luz Cifrada Database Schema
-- Run this in your Supabase SQL Editor (Dashboard > SQL Editor)

-- Enable UUID extension
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Create enum for rhythm types
CREATE TYPE ritmo_type AS ENUM ('Marcha', 'Valsa', 'Mazurca');

-- =====================
-- HINARIOS TABLE
-- =====================
CREATE TABLE IF NOT EXISTS hinarios (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  nome VARCHAR(255) NOT NULL,
  slug VARCHAR(255) NOT NULL UNIQUE,
  autor VARCHAR(255) NOT NULL,
  imagem_url TEXT,
  total_hinos INTEGER DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Index for slug lookups
CREATE INDEX IF NOT EXISTS idx_hinarios_slug ON hinarios(slug);

-- =====================
-- HINOS TABLE
-- =====================
CREATE TABLE IF NOT EXISTS hinos (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  hinario_id UUID NOT NULL REFERENCES hinarios(id) ON DELETE CASCADE,
  numero INTEGER NOT NULL,
  titulo VARCHAR(255) NOT NULL,
  letra_pura TEXT NOT NULL,
  ritmo ritmo_type NOT NULL DEFAULT 'Marcha',
  posicao VARCHAR(50) DEFAULT 'DE PÉ',
  created_at TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE(hinario_id, numero)
);

-- Indexes for common queries
CREATE INDEX IF NOT EXISTS idx_hinos_hinario ON hinos(hinario_id);
CREATE INDEX IF NOT EXISTS idx_hinos_numero ON hinos(numero);

-- =====================
-- CIFRAS TABLE
-- =====================
CREATE TABLE IF NOT EXISTS cifras (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  hino_id UUID NOT NULL REFERENCES hinos(id) ON DELETE CASCADE,
  user_id UUID REFERENCES auth.users(id) ON DELETE SET NULL,
  tom_original VARCHAR(10) NOT NULL,
  conteudo_cifrado TEXT NOT NULL,
  is_approved BOOLEAN DEFAULT false,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Index for hino lookups
CREATE INDEX IF NOT EXISTS idx_cifras_hino ON cifras(hino_id);

-- =====================
-- PROFILES TABLE
-- =====================
CREATE TABLE IF NOT EXISTS profiles (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id UUID UNIQUE NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  is_pro BOOLEAN DEFAULT false,
  display_name VARCHAR(255) NOT NULL,
  avatar_url TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- =====================
-- ROW LEVEL SECURITY (RLS)
-- =====================

-- Enable RLS on all tables
ALTER TABLE hinarios ENABLE ROW LEVEL SECURITY;
ALTER TABLE hinos ENABLE ROW LEVEL SECURITY;
ALTER TABLE cifras ENABLE ROW LEVEL SECURITY;
ALTER TABLE profiles ENABLE ROW LEVEL SECURITY;

-- Hinarios: Public read, admin write
CREATE POLICY "Hinarios are viewable by everyone"
  ON hinarios FOR SELECT
  USING (true);

-- Hinos: Public read, admin write
CREATE POLICY "Hinos are viewable by everyone"
  ON hinos FOR SELECT
  USING (true);

-- Cifras: Public read, authenticated write (own), PRO edit
CREATE POLICY "Cifras are viewable by everyone"
  ON cifras FOR SELECT
  USING (true);

CREATE POLICY "Users can insert their own cifras"
  ON cifras FOR INSERT
  WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can update their own cifras"
  ON cifras FOR UPDATE
  USING (auth.uid() = user_id);

-- Profiles: Public read (display_name, avatar), self write
CREATE POLICY "Profiles are viewable by everyone"
  ON profiles FOR SELECT
  USING (true);

CREATE POLICY "Users can update their own profile"
  ON profiles FOR UPDATE
  USING (auth.uid() = user_id);

CREATE POLICY "Users can insert their own profile"
  ON profiles FOR INSERT
  WITH CHECK (auth.uid() = user_id);

-- =====================
-- FUNCTIONS
-- =====================

-- Function to automatically create profile on user signup
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS TRIGGER AS $$
BEGIN
  INSERT INTO public.profiles (user_id, display_name)
  VALUES (NEW.id, COALESCE(NEW.raw_user_meta_data->>'name', NEW.email));
  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Trigger for new user profile creation
DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE FUNCTION public.handle_new_user();

-- Function to update hinario total_hinos count
CREATE OR REPLACE FUNCTION update_hinario_count()
RETURNS TRIGGER AS $$
BEGIN
  IF TG_OP = 'INSERT' THEN
    UPDATE hinarios SET total_hinos = total_hinos + 1 WHERE id = NEW.hinario_id;
  ELSIF TG_OP = 'DELETE' THEN
    UPDATE hinarios SET total_hinos = total_hinos - 1 WHERE id = OLD.hinario_id;
  END IF;
  RETURN NULL;
END;
$$ LANGUAGE plpgsql;

-- Trigger for hino count
DROP TRIGGER IF EXISTS update_hinario_count_trigger ON hinos;
CREATE TRIGGER update_hinario_count_trigger
  AFTER INSERT OR DELETE ON hinos
  FOR EACH ROW EXECUTE FUNCTION update_hinario_count();

-- =====================
-- CONFIRMATION MESSAGE
-- =====================
SELECT 'Schema created successfully!' AS status;
