# Quick Reference Guide - Luz Cifrada

## 🚀 Common Commands

```bash
# Start development server
npm run dev

# Import all hinários from JSON
npm run import

# Build for production
npm run build

# Run production server
npm start
```

## 📁 Key Files

### Search System
- `src/types/search.ts` - TypeScript types
- `src/lib/supabase/queries.ts` - Database queries
- `src/app/api/search/route.ts` - Search API
- `src/components/search/SearchBar.tsx` - Search input
- `src/components/search/SearchResults.tsx` - Results display
- `src/components/search/SearchResultCard.tsx` - Result card

### Import Script
- `scripts/import-hinarios.js` - Import all hinários
- `scrapers/*.json` - Source JSON files (58 files)

### Core Pages
- `src/app/page.tsx` - Homepage with search
- `src/app/hinario/[slug]/page.tsx` - Individual hinário
- `src/app/globals.css` - Global styles

### Config
- `.env.local` - Environment variables
- `package.json` - Dependencies and scripts

## 🔑 Environment Variables

```env
NEXT_PUBLIC_SUPABASE_URL=https://wawflxducdatwfdpkpgn.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=sb_publishable_1ssvY-mtrV30q3qwGzCNvg_NzWWq2Mj
SUPABASE_SERVICE_ROLE_KEY=sb_secret_DT3MmQw7nxm70PznS2dltg_Mxfsr02J
```

## 🔍 Search Examples

```
Title:   "Lua Branca"
Number:  "1"
Lyrics:  "floresta"
```

## 🎨 CSS Classes

```css
.card              /* Card container */
.btn-primary       /* Blue button */
.btn-secondary     /* Outline button */
.badge-marcha      /* Green badge */
.badge-valsa       /* Blue badge */
.badge-mazurca     /* Yellow badge */
.filter-select     /* Filter dropdown */
.search-highlight  /* Yellow highlight */
```

## 🗄️ Database Tables

```
hinarios → hinos → cifras
  (58)    (~2,900) (~2,900)
```

## 🐛 Quick Fixes

### "Module not found: lucide-react"
```bash
npm install lucide-react
```

### Only 1 hinário showing
```bash
npm run import
```

### Search not working
1. Check server is running
2. Check browser console (F12)
3. Verify `/api/search` exists

## 📊 Expected Results

- **Hinários**: 58
- **Hinos**: ~2,900+
- **Largest**: O Cruzeirinho (160)
- **Second**: Nova Anunciação (159)

## 🔗 URLs

- **Local**: http://localhost:3005
- **Supabase**: https://app.supabase.com/project/wawflxducdatwfdpkpgn

---

**Full documentation**: See `IMPLEMENTATION_SUMMARY.md`
