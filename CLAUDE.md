# Luz Cifrada - Development Guide

## Project Context
A web application for Daime hymns with chord transposition and auto-scroll features.

## Tech Stack
- Frontend: Next.js (App Router), Tailwind CSS, Lucide React.
- Backend/DB: Supabase (PostgreSQL).
- Data: Scraped from Study Fino.

## Core Standards
- **Styling**: Always use monospaced fonts for chords and lyrics (`Roboto Mono` or `Courier New`).
- **Spacing**: Respect `&nbsp;` and HTML tags from the database for chord alignment.
- **Port**: Always run on port 3001 (or 3005 if occupied).

## Project Commands
- `npm run dev`: Start development server.
- `npm run build`: Build for production.