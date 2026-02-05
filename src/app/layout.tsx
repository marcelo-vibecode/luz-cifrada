import type { Metadata } from "next";
import { Inter, Montserrat } from "next/font/google";
import "./globals.css";
import { Header } from "@/components/ui/Header";

const inter = Inter({
  subsets: ["latin"],
  variable: "--font-inter",
});

const montserrat = Montserrat({
  subsets: ["latin"],
  variable: "--font-montserrat",
});

export const metadata: Metadata = {
  title: "Luz Cifrada - Cifras do Santo Daime",
  description:
    "Plataforma de cifras e tablaturas para a doutrina do Santo Daime. Acesse hinários, transponha tons e pratique com auto-scroll.",
  keywords: [
    "Santo Daime",
    "cifras",
    "hinários",
    "acordes",
    "tablaturas",
    "O Cruzeiro",
    "Mestre Irineu",
  ],
  authors: [{ name: "Luz Cifrada" }],
  openGraph: {
    title: "Luz Cifrada - Cifras do Santo Daime",
    description:
      "Plataforma de cifras e tablaturas para a doutrina do Santo Daime",
    type: "website",
    locale: "pt_BR",
  },
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="pt-BR" className="dark">
      <body
        className={`${inter.variable} ${montserrat.variable} font-sans min-h-screen`}
      >
        <Header />
        <main className="pt-16">{children}</main>
      </body>
    </html>
  );
}
