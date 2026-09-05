# Brief — melonfleet.dev, the Flotilla launch page

Paste this into Claude Design. It is the whole brief; nothing below needs looking up.

---

## The job

Design the single page at **melonfleet.dev** that launches **Flotilla**, the first product
melonfleet has finished. One page. It is the entire first impression, and the traffic will arrive
in a burst from Hacker News, Product Hunt and r/macapps — an audience that judges a developer tool
by whether its landing page looks like someone cared.

The page exists today and works. It is competent and unremarkable. **Make it excellent**, not
different for its own sake: the content, the order of the hero, and the constraints below are
settled and should be respected. What needs raising is craft — typography, spacing, rhythm,
hierarchy, the presentation of the screenshots, and the feeling that a person with taste built this.

## Who is looking at it

macOS developers and sysadmins on Apple silicon who already use, or are curious about, Apple's
`container` CLI. Technical, sceptical of marketing, allergic to fake enthusiasm. They will read the
requirements section closely and they will notice if a button does nothing.

The comparison set — what "good" looks like to this audience:

- **Apple's own product pages** — for restraint and letting the product image carry the page.
- **Linear, Raycast** — for typographic confidence and generous, deliberate spacing.
- **OrbStack, Tailscale** — the closest analogues: a technical Mac tool that manages to look
  designed rather than templated.

Not: SaaS landing pages with gradient blobs, floating 3D shapes, "Trusted by" logo walls, or
animated counters.

## The product, honestly

Apple shipped `container` for macOS and left it on the command line. Flotilla is the native app on
top: containers, images, volumes, networks, and the virtual machines they run inside, plus a real
terminal in every container.

- **Free.** No account, no sign-in, no telemetry, no subscription, no paid tier.
- Signed with a Developer ID and notarised by Apple, so it opens without a Gatekeeper argument.
- **Requires** macOS 26 or later on Apple silicon, and Apple's `container` CLI installed
  separately from `github.com/apple/container`. Flotilla drives that tool; it does not bundle or
  replace it.
- Not released yet at time of writing. There is a signed, notarised 0.9.0 for testing; 1.0 follows.

## Non-negotiable requirements

These are decided. Design within them.

1. **Only Flotilla appears.** melonfleet has other products in progress; none of them are named,
   listed, dated, or hinted at specifically anywhere on the site. There is one teaser block — "more
   fruit on the way" — which names nothing and asks for no email address.
2. **Hero order, exactly:** app icon → the line `Flotilla · by melonfleet` → headline → short
   description as a subheading → screenshot carousel → two buttons. The carousel must be high on
   the page; the screenshots are the pitch.
3. **The headline is set in capitals.** This is the owner's explicit choice and a deliberate
   exception to the brand's sentence-case rule (see Voice). Do not revert it. Do make it work
   typographically — caps need letter-spacing, a smaller size than the equivalent sentence-case
   headline, and a tighter line-height, or they shout.
4. **Carousel: one screenshot at a time, manual only, no autoplay.** Prev/next, dots, arrow keys,
   swipe. Nothing moves on its own. Each screenshot has its caption directly underneath it. Two
   half-width screenshots side by side is not acceptable — a dense UI screenshot at half width is
   unreadable.
5. **No control that does nothing.** No download button until the repository is public and a release
   exists. No newsletter field, no contact form, no live-chat bubble, no cookie banner (the site
   sets no cookies and must not start).
6. **Static, dependency-free.** It is served by GitHub Pages from
   `melonfleet/melonfleet.github.io`. No build step, no framework, no npm, no bundler, no CSS
   preprocessor. Plain HTML, one stylesheet, a small amount of vanilla JavaScript. Fonts come from
   Google Fonts; nothing else is fetched from a third party.
7. **It must work with JavaScript disabled.** The carousel currently degrades to a scroll-snap strip
   that can still be swiped and scrolled. Keep that property — progressive enhancement, not a
   JS-only widget.
8. **Every off-site link opens in a new tab** (`target="_blank" rel="noopener"`).

## Brand

Authoritative source is `design/brand/BRAND.md`. The values you need:

**Primary — watermelon**

| token | hex | role |
|---|---|---|
| `rind` | `#1B5E20` | primary brand, structure, primary button |
| `stripe` | `#7CB342` | secondary green |
| `flesh` | `#FC4A6B` | highlight / attention / brand pink |
| `flesh-deep` | `#E63956` | pressed / emphasis / links |
| `pith` | `#FFFFFF` | light surface |
| `seed` | `#241F1A` | ink, darkest |

**Warm neutrals** — `cream #FBF7F0` (page), `sand #EDE6DA`, `stone #C7BFB2` (borders),
`slate #6E675C` (secondary text).

**Melon accents**, for illustration only, never for state: `cantaloupe #EE7B4D`,
`honeydew #A7D98C`, `canary #F2C94C`.

**Status colours are reserved for state** and must not be used decoratively: `success #1D9E75`,
`warning #E5A100`, `danger #C9302C`, `info #2C7A7B`.

**Type** — all open-source, loaded from Google Fonts:

- Headings and wordmark: **Ubuntu** (500 / 700)
- Body and UI: **Open Sans** (400 / 600)
- Code, versions, identifiers: **Ubuntu Mono**

Scale as shipped: h1 2rem/700, h2 1.5rem/500, h3 1.25rem/500, body 1rem/400 with 1.6 line-height,
small 0.875rem, mono 0.8125rem. You may refine the scale; keep the families.

**Voice** — intelligent, warm, plain-spoken. Sentence case everywhere (the hero headline is the one
stated exception). Say what it does. No jargon-as-drama, no "successfully", no "please". The
melonfleet wordmark is always lowercase; the product is always `Flotilla`.

## Assets available

- `assets/icons/flotilla.svg` — the app icon: watermelon-slice ground with three sails. This is
  Flotilla's identity and should lead the hero rather than the melonfleet wordmark.
- `assets/melonfleet-wordmark.svg` — the maker's mark. Belongs in the header and footer, not the
  hero, on a page about one product.
- `assets/shots/{dash,containers,logs,machines}.png` — 1440×940, captured from the running app,
  window only, no drop shadow, light appearance. Real data, not mocked.

You may ask for more screenshots and they can be produced on request: dark appearance, the menu-bar
popover, the card view, the collapsed icon rail, or a container terminal with output in it. **A
terminal screenshot is the biggest gap** — a shell inside a running container is the app's most
distinctive feature and the tour has no picture of it.

## Content — use this copy, do not invent claims

**Eyebrow:** `Flotilla · by melonfleet`

**Headline:** Apple's containers, with a window.

**Subheading:** Apple shipped `container` for macOS and left it on the command line. Flotilla is
the native app on top: containers, images, volumes, networks and the virtual machines they run
inside — plus a real terminal in every container. Free, no account, no telemetry.

**Buttons:** `Requirements & install` (primary, anchors to the requirements section) ·
`Why melonfleet` (secondary, links to /about.html)

**Carousel captions** — keep these:

- **Dashboard.** What the whole Mac is doing — pressure over five minutes, disk and network
  throughput, and every container's CPU, memory and I/O in one table.
- **Containers.** Live CPU and memory per container, published ports, addresses, and
  start/stop/delete on the row. Switch to cards if you prefer.
- **Logs.** Every source in one feed, each line tagged with where it came from, filterable by name
  or text. No tab-hopping between containers.
- **Machines.** The virtual machines your containers actually run inside — create, resize, start,
  stop, and open a shell in one.

**"What it does"** — three points, currently framed as: everything goes through Apple's own
`container` CLI, and Flotilla shows the exact command it used, so nothing happens that the user
could not have typed themselves. Then: *Run and watch* (lifecycle plus live stats and logs),
*Shell straight in* (a real terminal in any container or machine), *Everything else too* (images,
volumes, networks, machines).

**Requirements** — macOS 26 or later on Apple silicon · Apple's `container` CLI from
`apple/container` · nothing else: no account, no telemetry, signed and notarised.

**Teaser:** "More fruit on the way. Flotilla is the first thing melonfleet has put out. There is
more growing — quietly, and only announced when it is actually finished. Nothing to sign up for."

## Quality bar

- **Accessibility is part of the design, not a retrofit.** Visible focus styles on every
  interactive element, a carousel that is fully keyboard operable, `prefers-reduced-motion`
  respected, real alt text on every screenshot describing what it shows, and text contrast that
  passes AA — check `slate #6E675C` on `cream #FBF7F0` at the sizes you choose.
- **Performance.** The four screenshots are ~1.5 MB together; `logs.png` alone is 960 KB because
  dense text compresses badly. Lazy-load everything below the fold, set explicit width and height
  on every image so nothing shifts as it loads, and keep the font request to the three families
  already in use.
- **Mobile is not an afterthought.** A 1440px-wide UI screenshot on a phone is a grey smear. Decide
  deliberately what the carousel does at 390px — crop, scale, or something better.
- **Light appearance only** for now. The app supports light and dark equally; the site does not.
  If you want to propose a dark treatment, propose it as a separate artboard rather than assuming.

## Please do not

Fake testimonials or quotes. Invented download counts, star counts, or "used by N developers".
Logo walls. Gradient blobs and floating 3D shapes. Autoplay anything. Stock photography of people.
A "Get started free" button that leads to a 404. Comparison tables against Docker Desktop that
overstate the case — Flotilla does less than Docker Desktop and should not pretend otherwise. Any
claim about the other melonfleet products.

## Implementation notes, learned the hard way

If you produce code as well as design, these cost real time to find:

- A smooth `scrollTo` on a container with `scroll-snap-type: x mandatory` can silently do nothing —
  position stays put through `scrollLeft`, `scrollBy` and smooth `scrollTo` alike, while
  `behavior: 'instant'` lands every time. Verify the scroll landed and force it if not.
- The `scroll` event does not reliably fire for programmatic scrolls. Carousel controls must report
  their own result rather than waiting to be told, or the dots sit on slide one for ever.
- Do not throttle carousel state updates with `requestAnimationFrame`: browsers pause it on hidden
  pages, so the controls go stale and then show the wrong slide on return.
- Give the caption a `min-height`, or the whole section changes height as you page between captions
  of different lengths.
- `loading="lazy"` is close to a no-op on a horizontal carousel, and worse than a no-op if you
  trust it. Every slide shares the same vertical band, so the browser fetches them all on first
  paint anyway — and after a programmatic scroll of the track it does *not* re-evaluate, so the
  last slide can sit fully in the viewport, measured at 1116x731, and never load at all. The
  reader clicks to the final screenshot and gets an empty frame. Keep the attribute for the
  no-JavaScript case, but have the control that moves the track load the neighbouring slides
  itself. Lossless WebP is where the actual saving is: 1451 KB of PNG becomes 632 KB, pixel for
  pixel identical.
- Check contrast on the controls, not just the text. The inactive carousel dot at `stone #C7BFB2`
  on `cream` measures 1.71:1, well under the 3:1 WCAG asks of a user-interface component; `slate`
  is 5.23:1 and still reads as secondary, because the active dot is separated by width as well as
  colour.
- An undefined `var(--token)` or a class with no rule fails silently — CSS does not error, it just
  renders unstyled. `scripts/check-css-tokens.sh` in the repo catches both; keep it passing.

## Deliverable

Artboards for: **desktop hero** (the part above the fold, which is the whole first impression),
**full desktop page**, and **mobile**. Plus a short note on the type scale and spacing rhythm you
chose, so it can be implemented consistently rather than eyeballed.
