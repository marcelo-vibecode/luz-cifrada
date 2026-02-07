"use client";

import { useState, useMemo } from "react";
import { transposeLine, getNextKey, CHORD_REGEX } from "@/utils/music";
import { ChordTooltip } from "./ChordTooltip";

interface ChordViewerProps {
  conteudo: string;
  tomOriginal: string;
  titulo: string;
  numero: number;
  ritmo: string;
  posicao?: string;
  letraPura?: string;
}

interface ParsedLine {
  type: "chord" | "lyric" | "break";
  content: string;
}

// Monospace font stack - strict monospace for perfect alignment
const MONO_FONT = "'Courier New', Courier, 'Roboto Mono', monospace";

export function ChordViewer({
  conteudo,
  tomOriginal,
  titulo,
  numero,
  ritmo,
  posicao,
  letraPura,
}: ChordViewerProps) {
  const [currentKey, setCurrentKey] = useState(tomOriginal);
  const [semitoneOffset, setSemitoneOffset] = useState(0);
  const [hoveredChord, setHoveredChord] = useState<string | null>(null);
  const [tooltipPosition, setTooltipPosition] = useState({ x: 0, y: 0 });

  // Parse HTML content into structured lines, merging with letraPura
  const parsedLines = useMemo((): ParsedLine[] => {
    const lines: ParsedLine[] = [];

    // Both <cifra> and <p> tags contain chord lines in the scraped data.
    // The actual lyrics come from letraPura.
    const regex = /<cifra[^>]*>([\s\S]*?)<\/cifra>|<p>([\s\S]*?)<\/p>/gi;
    let match;

    // Collect all chord entries in order
    const chordEntries: { content: string; isBreak: boolean }[] = [];
    while ((match = regex.exec(conteudo)) !== null) {
      const raw = (match[1] !== undefined ? match[1] : match[2]) || "";
      const cleaned = raw
        .replace(/&nbsp;/g, " ")
        .replace(/<br\s*\/?>/gi, "")
        .trim();
      chordEntries.push({ content: cleaned, isBreak: cleaned === "" });
    }

    // Split letraPura into lyric lines (non-empty) and track stanza breaks
    const lyricLines: string[] = [];
    if (letraPura) {
      for (const line of letraPura.split("\n")) {
        lyricLines.push(line.trimEnd());
      }
    }

    // Remove trailing empty lines from lyricLines
    while (lyricLines.length > 0 && lyricLines[lyricLines.length - 1] === "") {
      lyricLines.pop();
    }

    // Build output by matching non-break chord lines with lyric lines
    let lyricIndex = 0;
    for (const entry of chordEntries) {
      if (entry.isBreak) {
        lines.push({ type: "break", content: "" });
        // Skip empty lines in letraPura to stay in sync
        while (lyricIndex < lyricLines.length && lyricLines[lyricIndex] === "") {
          lyricIndex++;
        }
      } else {
        let chordContent = entry.content;
        if (semitoneOffset !== 0) {
          chordContent = transposeLine(chordContent, semitoneOffset);
        }
        lines.push({ type: "chord", content: chordContent });

        // Add the corresponding lyric line
        if (lyricIndex < lyricLines.length && lyricLines[lyricIndex] !== "") {
          lines.push({ type: "lyric", content: lyricLines[lyricIndex] });
          lyricIndex++;
        }
      }
    }

    return lines;
  }, [conteudo, semitoneOffset, letraPura]);

  // Handle transposition
  const handleTranspose = (direction: 1 | -1) => {
    setSemitoneOffset((prev) => prev + direction);
    setCurrentKey(getNextKey(currentKey, direction));
  };

  // Handle chord hover
  const handleChordHover = (
    chord: string,
    event: React.MouseEvent<HTMLSpanElement>
  ) => {
    const rect = event.currentTarget.getBoundingClientRect();
    setHoveredChord(chord);
    setTooltipPosition({
      x: rect.left + rect.width / 2,
      y: rect.top,
    });
  };

  // Render chords in a line with hover effects
  const renderChordsInLine = (line: string) => {
    const parts: React.ReactNode[] = [];
    let lastIndex = 0;

    const regex = new RegExp(CHORD_REGEX.source, "g");
    let match;

    while ((match = regex.exec(line)) !== null) {
      // Add text/spaces before the chord - preserve exactly
      if (match.index > lastIndex) {
        const spaces = line.slice(lastIndex, match.index);
        parts.push(<span key={`space-${lastIndex}`}>{spaces}</span>);
      }

      // Add the chord as a span
      const chord = match[0];
      parts.push(
        <span
          key={`chord-${match.index}`}
          className="text-amarelo-solar cursor-pointer hover:text-amarelo-300 transition-colors font-bold"
          onMouseEnter={(e) => handleChordHover(chord, e)}
          onMouseLeave={() => setHoveredChord(null)}
        >
          {chord}
        </span>
      );

      lastIndex = regex.lastIndex;
    }

    // Add remaining text/spaces
    if (lastIndex < line.length) {
      parts.push(<span key={`space-end`}>{line.slice(lastIndex)}</span>);
    }

    return parts;
  };

  return (
    <div className="relative">
      {/* Header */}
      <div className="flex flex-wrap items-center justify-between gap-4 mb-4 pb-4 border-b border-dark-border">
        <div>
          <h2 className="text-xl font-semibold">
            {numero}. {titulo}
          </h2>
          <div className="flex items-center gap-2 mt-1">
            <span
              className={`badge ${ritmo === "Marcha" ? "badge-marcha" : ritmo === "Valsa" ? "badge-valsa" : "badge-mazurca"}`}
            >
              {ritmo}
            </span>
            {posicao && (
              <span className="text-sm text-dark-muted">{posicao}</span>
            )}
          </div>
        </div>

        {/* Transposition Controls */}
        <div className="flex items-center gap-2">
          <button
            onClick={() => handleTranspose(-1)}
            className="btn-icon border border-dark-border hover:border-azul-astral"
            aria-label="Diminuir tom"
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
                d="M15.75 19.5 8.25 12l7.5-7.5"
              />
            </svg>
          </button>
          <span
            className="min-w-[3rem] text-center text-lg font-semibold text-amarelo-solar"
            style={{ fontFamily: MONO_FONT }}
          >
            {currentKey}
          </span>
          <button
            onClick={() => handleTranspose(1)}
            className="btn-icon border border-dark-border hover:border-azul-astral"
            aria-label="Aumentar tom"
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
                d="m8.25 4.5 7.5 7.5-7.5 7.5"
              />
            </svg>
          </button>
          {semitoneOffset !== 0 && (
            <button
              onClick={() => {
                setSemitoneOffset(0);
                setCurrentKey(tomOriginal);
              }}
              className="btn-ghost text-sm"
            >
              Reset
            </button>
          )}
        </div>
      </div>

      {/* Chord Content Container - Strict Monospace with preserved whitespace */}
      <div
        className="overflow-x-auto bg-dark-card p-4 rounded-lg"
        style={{
          fontFamily: MONO_FONT,
          fontSize: "16px",
          lineHeight: "1.5",
          whiteSpace: "pre-wrap",
        }}
      >
        {parsedLines.map((line, index) => {
          if (line.type === "chord") {
            // Chord line - display as block, preserve all spaces, enable hover
            return (
              <div
                key={index}
                style={{
                  display: "block",
                  whiteSpace: "pre",
                  color: "#FFD700",
                  fontWeight: "bold",
                  lineHeight: "1.5",
                  marginBottom: "0",
                  padding: "0",
                }}
              >
                {renderChordsInLine(line.content)}
              </div>
            );
          } else if (line.type === "lyric") {
            // Lyric line - display as block, preserve spaces
            return (
              <div
                key={index}
                style={{
                  display: "block",
                  whiteSpace: "pre",
                  color: "#e4e4e7",
                  lineHeight: "1.5",
                  marginBottom: "1em",
                  padding: "0",
                }}
              >
                {line.content}
              </div>
            );
          } else {
            // Break between stanzas
            return <div key={index} style={{ height: "1em" }} />;
          }
        })}
      </div>

      {/* Chord Tooltip */}
      {hoveredChord && (
        <ChordTooltip
          chord={hoveredChord}
          position={tooltipPosition}
          onClose={() => setHoveredChord(null)}
        />
      )}
    </div>
  );
}
