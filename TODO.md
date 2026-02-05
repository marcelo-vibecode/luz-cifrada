# Luz Cifrada - Roadmap de Desenvolvimento

## Fase 1: Fundação (Setup Inicial)

### 1.1 Inicialização do Projeto
- [x] Analisar arquivos locais (README.md, design_tokens.md, musical_rules.txt)
- [x] Analisar estrutura HTML do estudofino.org para mapeamento de seletores
- [ ] Inicializar projeto Next.js 14+ com App Router
- [ ] Configurar TypeScript (strict mode)
- [ ] Configurar Tailwind CSS com design tokens customizados
- [ ] Configurar ESLint e Prettier
- [ ] Adicionar fontes: Inter/Montserrat (títulos) + JetBrains Mono (cifras)

### 1.2 Design System
- [ ] Criar arquivo `tailwind.config.ts` com:
  - Cores: Azul Astral (#003399), Verde Floresta (#008000), Branco (#FFFFFF), Amarelo Solar (#FFD700)
  - Variantes para dark mode (padrão)
- [ ] Configurar tema escuro como default
- [ ] Criar componentes base: Button, Card, Badge

### 1.3 Estrutura de Pastas
```
src/
├── app/                    # Next.js App Router
│   ├── (auth)/            # Rotas autenticadas
│   ├── hinarios/          # Lista de hinários
│   ├── hinario/[slug]/    # Visualização do hinário
│   ├── hino/[id]/         # Visualização individual
│   └── layout.tsx
├── components/
│   ├── ui/                # Componentes base
│   ├── chord/             # ChordViewer, ChordTooltip
│   └── player/            # AutoScroll, AudioPlayer
├── lib/
│   ├── supabase/          # Cliente e tipos
│   └── music/             # Lógica musical
├── utils/
│   └── music.ts           # Transposição, regex de acordes
├── hooks/                 # Custom hooks
├── types/                 # TypeScript types
└── i18n/                  # Internacionalização
```

---

## Fase 2: Backend e Dados

### 2.1 Configuração Supabase
- [ ] Criar projeto no Supabase
- [ ] Definir schema do banco:
  ```sql
  -- Hinários (ex: O Cruzeiro, O Justiceiro)
  hinarios (id, nome, slug, autor, imagem_url, total_hinos, created_at)

  -- Hinos individuais
  hinos (id, hinario_id, numero, titulo, letra_pura, ritmo, posicao, created_at)

  -- Cifras (pode ter múltiplas versões por hino)
  cifras (id, hino_id, user_id, tom_original, conteudo_cifrado, is_approved, created_at)

  -- Usuários PRO
  profiles (id, user_id, is_pro, display_name, avatar_url)
  ```
- [ ] Configurar RLS (Row Level Security)
- [ ] Configurar Auth (email/password + Google OAuth)

### 2.2 Scraper Autônomo
- [ ] Criar script `scripts/scraper.ts`
- [ ] Mapeamento de seletores baseado na análise:
  - Hinário: `.hinario-info h1` (nome), `.hinario-info h2` (autor)
  - Hino: `.hino[id^="hino-"]`, `data-hino` (letra), `.main-titulo` (título)
  - Cifra: `cifra.cifra` (linhas de acordes), `p` após cifra (linhas de letra)
  - Tom: `.tomCifra` (tom original)
  - Ritmo: `.main-ritmo` (Marcha, Valsa, etc.)
- [ ] Implementar parser para extrair dados estruturados
- [ ] Popular banco de dados Supabase

---

## Fase 3: Funcionalidades Core

### 3.1 Visualização de Cifras
- [ ] Componente `ChordViewer`:
  - Renderização monospace para alinhamento correto
  - Destaque visual de acordes (cor diferenciada)
- [ ] Componente `ChordTooltip`:
  - SVG do diagrama do acorde no hover
  - Base de dados de shapes de acordes em JSON
- [ ] Responsividade mobile-first

### 3.2 Transposição de Tom
- [ ] Implementar `utils/music.ts`:
  - `transposeChord(chord: string, semitones: number): string`
  - `detectChords(text: string): string[]`
  - Regex: `/([A-G][#b]?)(m|maj|min|dim|aug|sus[24]?|add[0-9]+|[0-9]+)?/g`
- [ ] Botões +1/-1 semitom
- [ ] Persistir tom preferido no localStorage

### 3.3 Auto-scroll
- [ ] Componente `AutoScroll`:
  - Velocidade ajustável (lento/médio/rápido)
  - Botão play/pause
  - Detecção de fim da página
- [ ] Controles fixos na parte inferior

---

## Fase 4: i18n e PRO Features

### 4.1 Internacionalização
- [ ] Configurar next-intl ou similar
- [ ] Criar arquivos de tradução:
  - `messages/pt.json` (default)
  - `messages/en.json`
  - `messages/es.json`
- [ ] Traduzir: navegação, botões, labels, mensagens de erro
- [ ] Letras permanecem em português

### 4.2 Sistema PRO
- [ ] Flag `is_pro` no perfil do usuário
- [ ] Verificação de acesso em componentes protegidos
- [ ] Funcionalidades PRO:
  - Botão "Editar Cifra" visível apenas para PRO
  - Interface de edição de cifras (textarea com preview)
  - Adição de tablaturas manuais
- [ ] UI para upgrade (placeholder para Stripe futuro)

---

## Fase 5: Polish e Deploy

### 5.1 UX Enhancements
- [ ] Loading states (Skeleton components)
- [ ] Error boundaries
- [ ] SEO (meta tags, Open Graph)
- [ ] PWA manifest (para uso offline futuro)

### 5.2 Deploy
- [ ] Configurar variáveis de ambiente na Vercel
- [ ] Deploy inicial
- [ ] Configurar domínio customizado (se houver)

---

## Notas Técnicas

### Estrutura HTML Mapeada (estudofino.org)
```html
<!-- Estrutura de um Hino -->
<div class="hino" id="hino-{id}" data-hino="{letra_completa}" data-barras="{compasso}">
  <div class="header-hino">
    <span class="main-canal"><strong>{autor}</strong></span>
    <span class="main-ritmo {ritmo}">{ritmo}</span>
    <h2 class="main-titulo">{numero}. {titulo}</h2>
    <big class="tomCifra">{tom}</big>
  </div>
  <div class="main-blocos">
    <div class="bloco">
      <cifra class="cifra">{acordes_espacados}</cifra>
      <p>{linha_letra}</p>
    </div>
  </div>
</div>
```

### Escalas para Transposição
- Maiores: C, C#, D, Eb, E, F, F#, G, Ab, A, Bb, B
- Menores: Am, Bbm, Bm, Cm, C#m, Dm, D#m, Em, Fm, F#m, Gm, G#m

### Regex para Detecção de Acordes
```typescript
const CHORD_REGEX = /\b([A-G][#b]?)(m|maj7?|min7?|dim|aug|sus[24]?|add\d+|\d+)?(\/[A-G][#b]?)?\b/g;
```
