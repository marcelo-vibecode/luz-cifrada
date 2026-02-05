"use client";

import Link from "next/link";
import Image from "next/image";
import { useState } from "react";

export function Header() {
  const [isMenuOpen, setIsMenuOpen] = useState(false);

  return (
    <header className="fixed top-0 left-0 right-0 z-50 bg-dark-bg/80 backdrop-blur-lg border-b border-dark-border">
      <nav className="max-w-6xl mx-auto px-4 h-16 flex items-center justify-between">
        {/* Logo */}
        <Link href="/" className="flex items-center gap-3">
          <Image
            src="/logo.png"
            alt="Luz Cifrada"
            width={40}
            height={40}
            className="rounded-lg"
          />
          <span className="font-display font-semibold text-lg hidden sm:block">
            Luz Cifrada
          </span>
        </Link>

        {/* Desktop Navigation */}
        <div className="hidden md:flex items-center gap-6">
          <Link
            href="/hinarios"
            className="text-dark-muted hover:text-dark-text transition-colors"
          >
            Hinários
          </Link>
          <Link
            href="#"
            className="text-dark-muted hover:text-dark-text transition-colors opacity-50 cursor-not-allowed"
          >
            Favoritos
          </Link>
          <Link
            href="#"
            className="text-dark-muted hover:text-dark-text transition-colors opacity-50 cursor-not-allowed"
          >
            PRO
          </Link>
        </div>

        {/* Language Selector & User Menu */}
        <div className="flex items-center gap-3">
          <select
            className="bg-dark-card border border-dark-border rounded-lg px-2 py-1 text-sm text-dark-muted focus:outline-none focus:border-azul-astral"
            defaultValue="pt"
          >
            <option value="pt">PT</option>
            <option value="en">EN</option>
            <option value="es">ES</option>
          </select>

          {/* Mobile Menu Button */}
          <button
            onClick={() => setIsMenuOpen(!isMenuOpen)}
            className="btn-icon md:hidden"
            aria-label="Menu"
          >
            <svg
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 24 24"
              strokeWidth={1.5}
              stroke="currentColor"
              className="w-6 h-6"
            >
              {isMenuOpen ? (
                <path
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  d="M6 18 18 6M6 6l12 12"
                />
              ) : (
                <path
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  d="M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5"
                />
              )}
            </svg>
          </button>

          {/* User Avatar/Login */}
          <Link
            href="#"
            className="w-9 h-9 rounded-full bg-dark-card border border-dark-border flex items-center justify-center hover:border-azul-astral transition-colors"
            aria-label="Entrar"
          >
            <svg
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 24 24"
              strokeWidth={1.5}
              stroke="currentColor"
              className="w-5 h-5 text-dark-muted"
            >
              <path
                strokeLinecap="round"
                strokeLinejoin="round"
                d="M15.75 6a3.75 3.75 0 1 1-7.5 0 3.75 3.75 0 0 1 7.5 0ZM4.501 20.118a7.5 7.5 0 0 1 14.998 0A17.933 17.933 0 0 1 12 21.75c-2.676 0-5.216-.584-7.499-1.632Z"
              />
            </svg>
          </Link>
        </div>
      </nav>

      {/* Mobile Menu */}
      {isMenuOpen && (
        <div className="md:hidden border-t border-dark-border bg-dark-bg">
          <div className="px-4 py-4 space-y-3">
            <Link
              href="/hinarios"
              className="block py-2 text-dark-text hover:text-azul-300 transition-colors"
              onClick={() => setIsMenuOpen(false)}
            >
              Hinários
            </Link>
            <Link
              href="#"
              className="block py-2 text-dark-muted cursor-not-allowed"
            >
              Favoritos (em breve)
            </Link>
            <Link
              href="#"
              className="block py-2 text-dark-muted cursor-not-allowed"
            >
              PRO (em breve)
            </Link>
          </div>
        </div>
      )}
    </header>
  );
}
