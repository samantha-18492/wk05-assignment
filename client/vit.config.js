import { dirname, resolve } from "node:path";
import { fileURLToPath } from "node:url";
import { defineConfig } from "vite";

const __dirname = dirname(fileURLToPath(import.meta.url));

export default defineConfig({
  build: {
    rollupOptions: {
      input: {
        main: resolve(__dirname, "index.html"),
        "Doctor Sleep": resolve(__dirname, "Doctor Sleep/index.html"),
        "The Midnight Library": resolve(
          __dirname,
          "The Midnight Library/index.html"
        ),
        "Yes Please": resolve(__dirname, "Yes Please/index.html"),
      },
    },
  },
});
