# melonfleet.dev

The melonfleet landing site — static HTML/CSS served via **GitHub Pages** at
`https://melonfleet.dev`.

## Pages

- `index.html` — hero, how-it-works, full product suite grid (status badges), stack strip
- `about.html` — project story and ethos
- `brand.html` — palette, type, wordmark, product icons, naming glossary
- `style.css` — watermelon design system (no build step)
- `assets/` — wordmark, avatar, and per-product icons copied from `../brand/` for Pages
  (GitHub Pages only serves this repo; do not link to `../brand/...`)

## Keep intact

- `CNAME` — custom domain (`melonfleet.dev`)
- `.nojekyll` — serve files as-is
- Favicons (`favicon.svg`, `favicon-96.png`, `apple-touch-icon.*`)

## Deploy

Pushing to `main` publishes automatically via GitHub Pages (repo Settings → Pages,
source = `main` / root). DNS points `melonfleet.dev` at GitHub Pages. Public repo
(Pages on a free account requires public).
