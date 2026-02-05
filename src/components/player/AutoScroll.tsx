"use client";

import { useState, useEffect, useCallback } from "react";

type ScrollSpeed = "slow" | "medium" | "fast";

const SCROLL_SPEEDS: Record<ScrollSpeed, number> = {
  slow: 30,
  medium: 50,
  fast: 80,
};

export function AutoScroll() {
  const [isScrolling, setIsScrolling] = useState(false);
  const [speed, setSpeed] = useState<ScrollSpeed>("medium");
  const [isVisible, setIsVisible] = useState(true);
  const [lastScrollY, setLastScrollY] = useState(0);

  // Auto-hide controls when at top
  useEffect(() => {
    const handleScroll = () => {
      const currentScrollY = window.scrollY;
      setIsVisible(currentScrollY > 100);
      setLastScrollY(currentScrollY);
    };

    window.addEventListener("scroll", handleScroll, { passive: true });
    return () => window.removeEventListener("scroll", handleScroll);
  }, [lastScrollY]);

  // Auto-scroll effect
  useEffect(() => {
    if (!isScrolling) return;

    const scrollStep = SCROLL_SPEEDS[speed] / 60; // pixels per frame at 60fps
    let animationId: number;

    const scroll = () => {
      window.scrollBy(0, scrollStep);

      // Stop at bottom
      if (
        window.innerHeight + window.scrollY >=
        document.body.offsetHeight - 10
      ) {
        setIsScrolling(false);
        return;
      }

      animationId = requestAnimationFrame(scroll);
    };

    animationId = requestAnimationFrame(scroll);

    return () => {
      if (animationId) {
        cancelAnimationFrame(animationId);
      }
    };
  }, [isScrolling, speed]);

  // Keyboard shortcuts
  useEffect(() => {
    const handleKeyDown = (e: KeyboardEvent) => {
      // Space to toggle (when not in input)
      if (
        e.code === "Space" &&
        !["INPUT", "TEXTAREA"].includes((e.target as HTMLElement).tagName)
      ) {
        e.preventDefault();
        setIsScrolling((prev) => !prev);
      }
      // Arrow keys to change speed
      if (e.code === "ArrowUp" && isScrolling) {
        e.preventDefault();
        setSpeed((prev) =>
          prev === "slow" ? "medium" : prev === "medium" ? "fast" : "fast"
        );
      }
      if (e.code === "ArrowDown" && isScrolling) {
        e.preventDefault();
        setSpeed((prev) =>
          prev === "fast" ? "medium" : prev === "medium" ? "slow" : "slow"
        );
      }
    };

    window.addEventListener("keydown", handleKeyDown);
    return () => window.removeEventListener("keydown", handleKeyDown);
  }, [isScrolling]);

  const cycleSpeed = useCallback(() => {
    setSpeed((prev) => {
      if (prev === "slow") return "medium";
      if (prev === "medium") return "fast";
      return "slow";
    });
  }, []);

  if (!isVisible) return null;

  return (
    <div className="fixed bottom-4 right-4 flex items-center gap-2 z-40">
      {/* Speed indicator */}
      {isScrolling && (
        <button
          onClick={cycleSpeed}
          className="bg-dark-card border border-dark-border rounded-lg px-3 py-2 text-sm font-medium hover:border-azul-astral transition-colors"
        >
          <span className="text-dark-muted mr-2">Velocidade:</span>
          <span className="text-amarelo-solar capitalize">{speed}</span>
        </button>
      )}

      {/* Play/Pause button */}
      <button
        onClick={() => setIsScrolling((prev) => !prev)}
        className={`w-14 h-14 rounded-full flex items-center justify-center shadow-lg transition-all ${
          isScrolling
            ? "bg-amarelo-solar text-dark-bg"
            : "bg-azul-astral text-white hover:bg-azul-600"
        }`}
        aria-label={isScrolling ? "Pausar rolagem" : "Iniciar rolagem"}
      >
        {isScrolling ? (
          <svg
            xmlns="http://www.w3.org/2000/svg"
            fill="none"
            viewBox="0 0 24 24"
            strokeWidth={2}
            stroke="currentColor"
            className="w-6 h-6"
          >
            <path
              strokeLinecap="round"
              strokeLinejoin="round"
              d="M15.75 5.25v13.5m-7.5-13.5v13.5"
            />
          </svg>
        ) : (
          <svg
            xmlns="http://www.w3.org/2000/svg"
            fill="none"
            viewBox="0 0 24 24"
            strokeWidth={2}
            stroke="currentColor"
            className="w-6 h-6"
          >
            <path
              strokeLinecap="round"
              strokeLinejoin="round"
              d="M3 4.5h14.25M3 9h9.75M3 13.5h9.75m4.5-4.5v12m0 0-3.75-3.75M17.25 21l3.75-3.75"
            />
          </svg>
        )}
      </button>

      {/* Keyboard hint */}
      <div className="hidden sm:block absolute -top-8 right-0 text-xs text-dark-muted">
        Espaço para play/pause
      </div>
    </div>
  );
}
