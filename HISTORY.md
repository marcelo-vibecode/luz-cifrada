# Project Progress Summary

## What has been done:
1. **Database Schema**: Fully implemented in Supabase with tables for `hinarios`, `hinos`, and `cifras`.
2. **Data Scraping**: Successfully scraped 132 hymns from 'O Cruzeiro'.
3. **Database Population**: `seed.sql` has been executed using `ON CONFLICT DO NOTHING` to avoid duplicates.
4. **Initial UI**: Basic Next.js structure is working, fetching real data from Supabase.

## Current State & Bottlenecks:
- The server runs on port 3001.
- **Chord Alignment**: Chords are appearing with HTML tags (`&nbsp;`) and are not perfectly aligned over the lyrics.
- **Next Step**: Fix `ChordViewer.tsx` styling to use monospacing and properly render the stored HTML/whitespace.