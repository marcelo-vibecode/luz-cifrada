import { NextRequest, NextResponse } from "next/server";
import { searchHinos } from "@/lib/supabase/queries";
import type { SearchFilters, SearchResponse } from "@/types/search";

export async function GET(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url);

    // Get query parameter
    const query = searchParams.get("q");

    // Validate query
    if (!query || query.trim().length === 0) {
      return NextResponse.json(
        { error: "Query parameter 'q' is required" },
        { status: 400 }
      );
    }

    // Validate query length (max 200 characters)
    if (query.length > 200) {
      return NextResponse.json(
        { error: "Query too long (max 200 characters)" },
        { status: 400 }
      );
    }

    // Get filter parameters
    const filters: SearchFilters = {
      hinarioId: searchParams.get("hinarioId") || undefined,
      ritmo: (searchParams.get("ritmo") as
        | "Marcha"
        | "Valsa"
        | "Mazurca"
        | null) || undefined,
      autor: searchParams.get("autor") || undefined,
    };

    // Remove undefined values
    Object.keys(filters).forEach((key) => {
      if (filters[key as keyof SearchFilters] === undefined) {
        delete filters[key as keyof SearchFilters];
      }
    });

    // Execute search
    const results = await searchHinos(query.trim(), filters, 50);

    // Build response
    const response: SearchResponse = {
      results,
      total: results.length,
      query: query.trim(),
    };

    // Return results with caching headers
    return NextResponse.json(response, {
      status: 200,
      headers: {
        "Cache-Control": "public, s-maxage=60, stale-while-revalidate=120",
      },
    });
  } catch (error) {
    console.error("Search API error:", error);
    return NextResponse.json(
      { error: "Internal server error" },
      { status: 500 }
    );
  }
}
