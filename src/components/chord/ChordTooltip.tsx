"use client";

import { useEffect, useRef } from "react";

interface ChordTooltipProps {
  chord: string;
  position: { x: number; y: number };
  onClose: () => void;
}

// Basic chord diagrams - SVG fret positions
// Format: [string1, string2, string3, string4, string5, string6] where -1 = muted, 0 = open
const CHORD_DIAGRAMS: Record<string, { frets: number[]; baseFret: number }> = {
  // Major chords
  C: { frets: [-1, 3, 2, 0, 1, 0], baseFret: 1 },
  D: { frets: [-1, -1, 0, 2, 3, 2], baseFret: 1 },
  E: { frets: [0, 2, 2, 1, 0, 0], baseFret: 1 },
  F: { frets: [1, 3, 3, 2, 1, 1], baseFret: 1 },
  G: { frets: [3, 2, 0, 0, 0, 3], baseFret: 1 },
  A: { frets: [-1, 0, 2, 2, 2, 0], baseFret: 1 },
  B: { frets: [-1, 2, 4, 4, 4, 2], baseFret: 1 },
  "C#": { frets: [-1, 4, 3, 1, 2, 1], baseFret: 1 },
  "D#": { frets: [-1, -1, 1, 3, 4, 3], baseFret: 1 },
  "F#": { frets: [2, 4, 4, 3, 2, 2], baseFret: 1 },
  "G#": { frets: [4, 3, 1, 1, 1, 4], baseFret: 1 },
  "A#": { frets: [-1, 1, 3, 3, 3, 1], baseFret: 1 },
  Bb: { frets: [-1, 1, 3, 3, 3, 1], baseFret: 1 },
  Eb: { frets: [-1, -1, 1, 3, 4, 3], baseFret: 1 },
  Ab: { frets: [4, 3, 1, 1, 1, 4], baseFret: 1 },

  // Minor chords
  Am: { frets: [-1, 0, 2, 2, 1, 0], baseFret: 1 },
  Bm: { frets: [-1, 2, 4, 4, 3, 2], baseFret: 1 },
  Cm: { frets: [-1, 3, 5, 5, 4, 3], baseFret: 1 },
  Dm: { frets: [-1, -1, 0, 2, 3, 1], baseFret: 1 },
  Em: { frets: [0, 2, 2, 0, 0, 0], baseFret: 1 },
  Fm: { frets: [1, 3, 3, 1, 1, 1], baseFret: 1 },
  Gm: { frets: [3, 5, 5, 3, 3, 3], baseFret: 1 },
  "C#m": { frets: [-1, 4, 6, 6, 5, 4], baseFret: 1 },
  "F#m": { frets: [2, 4, 4, 2, 2, 2], baseFret: 1 },
  "G#m": { frets: [4, 6, 6, 4, 4, 4], baseFret: 1 },
  Bbm: { frets: [-1, 1, 3, 3, 2, 1], baseFret: 1 },

  // Seventh chords
  C7: { frets: [-1, 3, 2, 3, 1, 0], baseFret: 1 },
  D7: { frets: [-1, -1, 0, 2, 1, 2], baseFret: 1 },
  E7: { frets: [0, 2, 0, 1, 0, 0], baseFret: 1 },
  F7: { frets: [1, 3, 1, 2, 1, 1], baseFret: 1 },
  G7: { frets: [3, 2, 0, 0, 0, 1], baseFret: 1 },
  A7: { frets: [-1, 0, 2, 0, 2, 0], baseFret: 1 },
  B7: { frets: [-1, 2, 1, 2, 0, 2], baseFret: 1 },

  // Minor seventh
  Am7: { frets: [-1, 0, 2, 0, 1, 0], baseFret: 1 },
  Dm7: { frets: [-1, -1, 0, 2, 1, 1], baseFret: 1 },
  Em7: { frets: [0, 2, 0, 0, 0, 0], baseFret: 1 },
};

export function ChordTooltip({ chord, position, onClose }: ChordTooltipProps) {
  const tooltipRef = useRef<HTMLDivElement>(null);

  // Extract base chord (remove slash bass notes)
  const baseChord = chord.split("/")[0];
  const diagram = CHORD_DIAGRAMS[baseChord];

  useEffect(() => {
    const handleClickOutside = (e: MouseEvent) => {
      if (
        tooltipRef.current &&
        !tooltipRef.current.contains(e.target as Node)
      ) {
        onClose();
      }
    };

    document.addEventListener("mousedown", handleClickOutside);
    return () => document.removeEventListener("mousedown", handleClickOutside);
  }, [onClose]);

  if (!diagram) {
    return (
      <div
        ref={tooltipRef}
        className="tooltip animate-fade-in"
        style={{
          left: position.x,
          top: position.y - 10,
          transform: "translate(-50%, -100%)",
        }}
      >
        <p className="text-dark-muted text-sm">Diagrama não disponível</p>
        <p className="font-mono text-amarelo-solar">{chord}</p>
      </div>
    );
  }

  return (
    <div
      ref={tooltipRef}
      className="tooltip animate-fade-in p-4"
      style={{
        left: position.x,
        top: position.y - 10,
        transform: "translate(-50%, -100%)",
      }}
    >
      <p className="text-center font-semibold text-amarelo-solar mb-2">
        {chord}
      </p>
      <ChordDiagramSVG frets={diagram.frets} baseFret={diagram.baseFret} />
    </div>
  );
}

interface ChordDiagramSVGProps {
  frets: number[];
  baseFret: number;
}

function ChordDiagramSVG({ frets, baseFret }: ChordDiagramSVGProps) {
  const width = 80;
  const height = 100;
  const stringSpacing = 12;
  const fretSpacing = 20;
  const startX = 15;
  const startY = 20;
  const numFrets = 4;

  return (
    <svg width={width} height={height} className="mx-auto">
      {/* Nut or base fret indicator */}
      {baseFret === 1 ? (
        <rect
          x={startX}
          y={startY - 3}
          width={stringSpacing * 5}
          height={4}
          fill="#FFD700"
        />
      ) : (
        <text
          x={startX - 12}
          y={startY + fretSpacing / 2}
          fontSize="10"
          fill="#71717a"
        >
          {baseFret}
        </text>
      )}

      {/* Frets */}
      {Array.from({ length: numFrets + 1 }).map((_, i) => (
        <line
          key={`fret-${i}`}
          x1={startX}
          y1={startY + i * fretSpacing}
          x2={startX + stringSpacing * 5}
          y2={startY + i * fretSpacing}
          stroke="#3f3f46"
          strokeWidth={1}
        />
      ))}

      {/* Strings */}
      {Array.from({ length: 6 }).map((_, i) => (
        <line
          key={`string-${i}`}
          x1={startX + i * stringSpacing}
          y1={startY}
          x2={startX + i * stringSpacing}
          y2={startY + numFrets * fretSpacing}
          stroke="#71717a"
          strokeWidth={1}
        />
      ))}

      {/* Finger positions and markers */}
      {frets.map((fret, stringIndex) => {
        const x = startX + stringIndex * stringSpacing;

        if (fret === -1) {
          // Muted string
          return (
            <text
              key={`marker-${stringIndex}`}
              x={x}
              y={startY - 8}
              fontSize="10"
              fill="#ef4444"
              textAnchor="middle"
            >
              ×
            </text>
          );
        } else if (fret === 0) {
          // Open string
          return (
            <circle
              key={`marker-${stringIndex}`}
              cx={x}
              cy={startY - 8}
              r={4}
              fill="none"
              stroke="#22c55e"
              strokeWidth={1.5}
            />
          );
        } else {
          // Fretted note
          const adjustedFret = fret - baseFret + 1;
          const y = startY + (adjustedFret - 0.5) * fretSpacing;
          return (
            <circle
              key={`marker-${stringIndex}`}
              cx={x}
              cy={y}
              r={5}
              fill="#FFD700"
            />
          );
        }
      })}
    </svg>
  );
}
