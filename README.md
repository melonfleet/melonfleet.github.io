# melonfleet.dev

The melonfleet landing page — a static site served via **GitHub Pages** at
`https://melonfleet.dev`.

- `index.html` — single-page landing (brand system: Ubuntu/Open Sans, watermelon
  palette). No build step.
- `CNAME` — custom domain (`melonfleet.dev`).
- `.nojekyll` — serve files as-is, no Jekyll processing.

## Deploy

Pushing to `main` publishes automatically via GitHub Pages (repo Settings → Pages,
source = `main` / root). DNS points `melonfleet.dev` at GitHub Pages (see the DNS
records in the setup notes). Public repo (Pages on a free account requires public).
