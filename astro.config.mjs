import { defineConfig } from 'astro/config';


import sitemap from "@astrojs/sitemap";


import icon from "astro-icon";


import svelte from "@astrojs/svelte";


export default defineConfig({
  site: "https://new.bravegrumpy.com",
  integrations: [ sitemap(), icon(), svelte()],
  output: "static"
});