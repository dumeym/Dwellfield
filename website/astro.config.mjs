import { defineConfig } from "astro/config";
import tailwindcss from "@tailwindcss/vite";

export default defineConfig({
  // Domain and sitemap are added only when the public launch is approved.
  integrations: [],
  vite: {
    plugins: [tailwindcss()],
    build: { chunkSizeWarningLimit: 600 },
  },
  prefetch: { defaultStrategy: "viewport" },
  experimental: { clientPrerender: true },
});
