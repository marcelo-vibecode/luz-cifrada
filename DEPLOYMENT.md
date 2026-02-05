# Deployment Guide - Luz Cifrada

## Prerequisites
- Code pushed to GitHub: ✅ https://github.com/marcelo-vibecode/luz-cifrada
- Supabase credentials ready

## Deploy to Vercel (Recommended)

### Using Vercel Website
1. Go to https://vercel.com and sign in with GitHub
2. Click "Add New Project"
3. Import the `luz-cifrada` repository
4. Add environment variables:
   - `NEXT_PUBLIC_SUPABASE_URL`
   - `NEXT_PUBLIC_SUPABASE_ANON_KEY`
5. Click "Deploy"

### Using Vercel CLI
```bash
# Install Vercel CLI
npm i -g vercel

# Login
vercel login

# Deploy
cd "c:\Users\inter\OneDrive\Área de Trabalho\luzcifrada"
vercel

# Follow prompts and add environment variables when asked
```

## Environment Variables Needed

Copy these from your `.env.local` file:

```
NEXT_PUBLIC_SUPABASE_URL=https://your-project.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=your-anon-key
```

## After Deployment

Your app will be live at: `https://luz-cifrada.vercel.app` (or your custom domain)

### Features Available:
- ✅ 58 hinários with ~2,900 hinos
- ✅ Advanced search system
- ✅ Chord transposition
- ✅ Auto-scroll
- ✅ Mobile-responsive design

## Updating the Site

After making changes locally:
```bash
git add .
git commit -m "Your commit message"
git push

# Vercel will automatically redeploy!
```

## Troubleshooting

### If hymns don't load:
1. Check environment variables in Vercel dashboard
2. Verify Supabase is accessible (not paused)
3. Check build logs in Vercel

### If build fails:
1. Check the build logs in Vercel
2. Make sure all dependencies are in package.json
3. Verify Node version (should be 18+)
