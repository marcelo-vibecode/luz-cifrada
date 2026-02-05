/**
 * Music utilities for Luz Cifrada
 * Handles chord transposition, detection, and musical logic
 */

// Chromatic scale for transposition
export const CHROMATIC_SCALE = [
  "C",
  "C#",
  "D",
  "D#",
  "E",
  "F",
  "F#",
  "G",
  "G#",
  "A",
  "A#",
  "B",
];

// Enharmonic equivalents (flats to sharps)
export const ENHARMONIC_MAP: Record<string, string> = {
  Db: "C#",
  Eb: "D#",
  Fb: "E",
  Gb: "F#",
  Ab: "G#",
  Bb: "A#",
  Cb: "B",
};

// Major scales by key (for proper note naming in context)
export const SCALES: Record<string, string[]> = {
  // Major keys
  C: ["C", "D", "E", "F", "G", "A", "B"],
  "C#": ["C#", "D#", "E#", "F#", "G#", "A#", "B#"],
  D: ["D", "E", "F#", "G", "A", "B", "C#"],
  Eb: ["Eb", "F", "G", "Ab", "Bb", "C", "D"],
  E: ["E", "F#", "G#", "A", "B", "C#", "D#"],
  F: ["F", "G", "A", "Bb", "C", "D", "E"],
  "F#": ["F#", "G#", "A#", "B", "C#", "D#", "E#"],
  G: ["G", "A", "B", "C", "D", "E", "F#"],
  Ab: ["Ab", "Bb", "C", "Db", "Eb", "F", "G"],
  A: ["A", "B", "C#", "D", "E", "F#", "G#"],
  Bb: ["Bb", "C", "D", "Eb", "F", "G", "A"],
  B: ["B", "C#", "D#", "E", "F#", "G#", "A#"],

  // Minor keys
  Am: ["A", "B", "C", "D", "E", "F", "G"],
  Bbm: ["Bb", "C", "Db", "Eb", "F", "Gb", "Ab"],
  Bm: ["B", "C#", "D", "E", "F#", "G", "A"],
  Cm: ["C", "D", "Eb", "F", "G", "Ab", "Bb"],
  "C#m": ["C#", "D#", "E", "F#", "G#", "A", "B"],
  Dm: ["D", "E", "F", "G", "A", "Bb", "C"],
  "D#m": ["D#", "E#", "F#", "G#", "A#", "B", "C#"],
  Em: ["E", "F#", "G", "A", "B", "C", "D"],
  Fm: ["F", "G", "Ab", "Bb", "C", "Db", "Eb"],
  "F#m": ["F#", "G#", "A", "B", "C#", "D", "E"],
  Gm: ["G", "A", "Bb", "C", "D", "Eb", "F"],
  "G#m": ["G#", "A#", "B", "C#", "D#", "E", "F#"],
};

// Major and minor scale arrays for key navigation
export const MAJOR_KEYS = [
  "C",
  "C#",
  "D",
  "Eb",
  "E",
  "F",
  "F#",
  "G",
  "Ab",
  "A",
  "Bb",
  "B",
];
export const MINOR_KEYS = [
  "Am",
  "Bbm",
  "Bm",
  "Cm",
  "C#m",
  "Dm",
  "D#m",
  "Em",
  "Fm",
  "F#m",
  "Gm",
  "G#m",
];

// Regex for detecting chords in text
// Matches: A, Am, A7, Am7, Amaj7, Adim, Aaug, Asus2, Asus4, A/G, etc.
export const CHORD_REGEX =
  /\b([A-G][#b]?)(m|maj|min|dim|aug|sus[24]?|add\d+|\d+)*(\/[A-G][#b]?)?\b/g;

/**
 * Normalizes a note to its sharp equivalent
 */
export function normalizeNote(note: string): string {
  const root = note.slice(0, note.length > 1 && note[1] === "b" ? 2 : 1);
  const normalized = ENHARMONIC_MAP[root] || root;
  return normalized;
}

/**
 * Gets the index of a note in the chromatic scale
 */
export function getNoteIndex(note: string): number {
  const normalized = normalizeNote(note);
  return CHROMATIC_SCALE.indexOf(normalized);
}

/**
 * Transposes a single note by a given number of semitones
 */
export function transposeNote(note: string, semitones: number): string {
  const index = getNoteIndex(note);
  if (index === -1) return note;

  const newIndex = (index + semitones + 12) % 12;
  return CHROMATIC_SCALE[newIndex];
}

/**
 * Transposes a chord by a given number of semitones
 */
export function transposeChord(chord: string, semitones: number): string {
  // Handle slash chords (e.g., Am/G)
  const slashIndex = chord.indexOf("/");
  if (slashIndex !== -1) {
    const mainChord = chord.slice(0, slashIndex);
    const bassNote = chord.slice(slashIndex + 1);
    return `${transposeChord(mainChord, semitones)}/${transposeNote(bassNote, semitones)}`;
  }

  // Extract root note (1 or 2 characters)
  let rootLength = 1;
  if (chord.length > 1 && (chord[1] === "#" || chord[1] === "b")) {
    rootLength = 2;
  }

  const root = chord.slice(0, rootLength);
  const suffix = chord.slice(rootLength);

  const newRoot = transposeNote(root, semitones);
  return newRoot + suffix;
}

/**
 * Transposes all chords in a line of text
 */
export function transposeLine(line: string, semitones: number): string {
  return line.replace(CHORD_REGEX, (match) => transposeChord(match, semitones));
}

/**
 * Gets the next or previous key in the scale
 */
export function getNextKey(currentKey: string, direction: 1 | -1): string {
  const isMinor = currentKey.includes("m") && !currentKey.includes("maj");
  const keys = isMinor ? MINOR_KEYS : MAJOR_KEYS;
  const index = keys.indexOf(currentKey);

  if (index === -1) return currentKey;

  const newIndex = (index + direction + 12) % 12;
  return keys[newIndex];
}

/**
 * Detects all unique chords in a text
 */
export function detectChords(text: string): string[] {
  const matches = text.match(CHORD_REGEX);
  if (!matches) return [];
  return Array.from(new Set(matches));
}

/**
 * Parses a cifra block into structured data
 */
export interface CifraLine {
  type: "chord" | "lyric" | "empty";
  content: string;
}

export function parseCifraBlock(html: string): CifraLine[] {
  const lines: CifraLine[] = [];

  // Split by tags and process
  const parts = html
    .replace(/<cifra[^>]*>/gi, "\n[CHORD]")
    .replace(/<\/cifra>/gi, "[/CHORD]\n")
    .replace(/<p>/gi, "\n[LYRIC]")
    .replace(/<\/p>/gi, "[/LYRIC]\n")
    .replace(/<br\s*\/?>/gi, "\n")
    .replace(/&nbsp;/g, " ");

  let currentType: "chord" | "lyric" | null = null;

  parts.split("\n").forEach((part) => {
    const trimmed = part.trim();

    if (trimmed === "[CHORD]") {
      currentType = "chord";
    } else if (trimmed === "[/CHORD]" || trimmed === "[/LYRIC]") {
      currentType = null;
    } else if (trimmed === "[LYRIC]") {
      currentType = "lyric";
    } else if (trimmed && currentType) {
      lines.push({ type: currentType, content: trimmed });
    } else if (trimmed === "") {
      lines.push({ type: "empty", content: "" });
    }
  });

  return lines;
}

/**
 * Rhythm types in Santo Daime
 */
export type Ritmo = "Marcha" | "Valsa" | "Mazurca";

/**
 * Gets the badge class for a rhythm type
 */
export function getRitmoBadgeClass(ritmo: Ritmo): string {
  const classes: Record<Ritmo, string> = {
    Marcha: "badge-marcha",
    Valsa: "badge-valsa",
    Mazurca: "badge-mazurca",
  };
  return classes[ritmo] || "badge";
}
