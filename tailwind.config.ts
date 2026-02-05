import type { Config } from "tailwindcss";

const config: Config = {
  content: [
    "./src/pages/**/*.{js,ts,jsx,tsx,mdx}",
    "./src/components/**/*.{js,ts,jsx,tsx,mdx}",
    "./src/app/**/*.{js,ts,jsx,tsx,mdx}",
  ],
  darkMode: "class",
  theme: {
    extend: {
      colors: {
        // Paleta Santo Daime
        azul: {
          astral: "#003399",
          50: "#e6ecf7",
          100: "#ccd9ef",
          200: "#99b3df",
          300: "#668dcf",
          400: "#3367bf",
          500: "#003399", // Azul Astral principal
          600: "#002a7a",
          700: "#00205c",
          800: "#00153d",
          900: "#000b1f",
        },
        verde: {
          floresta: "#008000",
          50: "#e6f2e6",
          100: "#cce5cc",
          200: "#99cb99",
          300: "#66b166",
          400: "#339733",
          500: "#008000", // Verde Floresta principal
          600: "#006600",
          700: "#004d00",
          800: "#003300",
          900: "#001a00",
        },
        amarelo: {
          solar: "#FFD700",
          50: "#fffbe6",
          100: "#fff7cc",
          200: "#ffef99",
          300: "#ffe766",
          400: "#ffdf33",
          500: "#FFD700", // Amarelo Solar principal
          600: "#ccac00",
          700: "#998100",
          800: "#665600",
          900: "#332b00",
        },
        // Tons neutros para dark mode
        dark: {
          bg: "#0a0a0f",
          card: "#12121a",
          border: "#1e1e2e",
          text: "#e4e4e7",
          muted: "#71717a",
        },
      },
      fontFamily: {
        sans: ["Inter", "system-ui", "sans-serif"],
        display: ["Montserrat", "system-ui", "sans-serif"],
        mono: ["JetBrains Mono", "Roboto Mono", "monospace"],
      },
      spacing: {
        "18": "4.5rem",
        "88": "22rem",
      },
      animation: {
        "scroll-slow": "scroll 30s linear infinite",
        "fade-in": "fadeIn 0.3s ease-in-out",
      },
      keyframes: {
        scroll: {
          "0%": { transform: "translateY(0)" },
          "100%": { transform: "translateY(-100%)" },
        },
        fadeIn: {
          "0%": { opacity: "0" },
          "100%": { opacity: "1" },
        },
      },
    },
  },
  plugins: [],
};

export default config;
