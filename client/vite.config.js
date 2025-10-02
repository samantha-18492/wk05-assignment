import { dirname, resolve } from "node:path";
import { fileURLToPath } from "node:url";
import { defineConfig } from "vite";

const __dirname = dirname(fileURLToPath(import.meta.url));

export default defineConfig({
  build: {
    rollupOptions: {
      input: {
        main: resolve(__dirname, "index.html"),
        "doctor-sleep": resolve(__dirname, "doctor-sleep/index.html"),
        "the-midnight-library": resolve(
          __dirname,
          "the-midnight-library/index.html"
        ),
        "yes-please": resolve(__dirname, "yes-please/index.html"),
      },
    },
  },
});
