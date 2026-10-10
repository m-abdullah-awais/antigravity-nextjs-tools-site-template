# Next.js Project Context

## Fixed Technical Constraints

- **Framework:** Next.js (App Router, latest stable version)
- **Hosting:** Vercel (optimize for Vercel's edge network, static deployment, image optimization, and analytics)
- **Type:** Purely static multilingual website. NO database, NO data storage, NO API routes, NO server-side data fetching.
- **Languages:** English (UK), German, Spanish, French, Italian, Dutch, and Polish (7 languages total)
- **Rendering:** ALL pages must be statically generated (SSG) at build time. Every page ships as pre-rendered HTML. No SSR, no ISR unless explicitly requested.
- **Styling:** Vanilla CSS (no Tailwind unless explicitly requested)
- **Forms/Contact:** Use third-party form services (Formspree, Getform, etc.) or mailto links. No backend processing.

## Architecture Requirements

- Project structure uses Next.js App Router (`app/` directory) with i18n routing.
- Internationalization via route-based locales: `app/[locale]/` with static params for all 7 locales (`/en/`, `/de/`, `/es/`, `/fr/`, `/it/`, `/nl/`, `/pl/`).
- Content stored as JSON/MDX files per locale inside the project. No CMS, no database.
- `next.config.js` must include security headers: CSP, X-Frame-Options, X-Content-Type-Options, Referrer-Policy, Permissions-Policy.
- Bundle optimization: only the active locale's content loads per page. Use `next/dynamic` for heavy client components. Tree-shake aggressively.
- Static export compatible (`output: 'export'`) if needed.

## Speed Targets (highest priority)

- **Lighthouse Performance: 100** on every page in every locale.
- **LCP < 1.5s:** next/image with `priority` and static imports for hero images. Preload critical fonts per language. Zero render-blocking CSS. React Server Components by default, `"use client"` only when absolutely necessary.
- **INP < 100ms:** Near-zero client-side JS. Interactive elements (mobile menu, accordion, language switcher) use lightweight vanilla JS or minimal client components. No heavy libraries.
- **CLS = 0:** Explicit width/height on every image and video. Font size-adjust to prevent layout shift. No dynamic content injection above the fold. Reserve space for ad scripts.
- **TTFB < 200ms:** Guaranteed by Vercel edge CDN + static pages.
- **Page weight: < 500KB** per page (HTML + CSS + JS + fonts). Images via next/image excluded (optimized and lazy-loaded).
- **Fonts:** Maximum 2 font families via `next/font`. Subset to used characters. Language-specific subsets (e.g., Latin Extended for Polish).
- **Third-party scripts:** All ad/analytics scripts via `next/script` with `afterInteractive` or `lazyOnload`. Must NEVER block initial render or impact Lighthouse score.

## Ad Integration Requirements

- Google Ads: gtag.js via `next/script` with `afterInteractive`. Per-language conversion actions.
- Meta Pixel: via `next/script` with `lazyOnload`.
- Conversion tracking: events for each goal per language (form submissions, button clicks, phone clicks).
- Google Ads Quality Score: every landing page maximizes relevance, experience, and expected CTR.
- UTM parameter handling: read and preserve UTM params across language switches.
- Analytics: GA4 via `next/script` + Vercel Analytics (built-in). Track per-language performance.
- Cookie consent: lightweight GDPR banner (CSS-only with minimal JS). Compliant across UK, DE, ES, FR, IT, NL, PL.
- All tracking scripts load AFTER the page is interactive. They must NEVER impact Lighthouse score.
