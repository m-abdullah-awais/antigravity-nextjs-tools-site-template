# Implementation Plan Template

When creating an implementation plan (via /plan), it MUST cover ALL of the following sections. Do not skip any.

## SECTION 1: Project Understanding and Ad Strategy
- Restate the website idea, niche, and key takeaways synthesized from analyzing `resources/` to confirm understanding.
- Identify the target audience per language market (English by default; DE, ES, FR, IT, NL, PL ONLY if `--multilingual` flag is active).
- Propose a concrete subject, audience, and primary job for the design (per /frontend-design skill).
- Keyword research plan: outline the approach, seed terms, and expected topical clusters. If `--multilingual` flag is active, specify per-language strategy without translating English terms; otherwise focus on English.
- SEO content strategy: topic clusters, pillar pages, and target featured snippets per language.
- Ad landing page strategy: which pages serve as landing pages per language, conversion goal per page, Google Ads Quality Score optimization.

## SECTION 2: Next.js Multilingual Architecture and Vercel Deployment
- Full project structure using `app/[locale]/` directory pattern.
- Rendering strategy: ALL pages SSG. Justify any exception.
- Content storage: JSON/MDX per locale.
- Vercel optimizations: next/image, Vercel Analytics, Speed Insights, @vercel/og per locale.
- next.config.js: security headers, redirects, locale detection.
- Bundle optimization: per-locale isolation, tree-shaking.

## SECTION 3: Speed and Performance Architecture
- Lighthouse 100 target. LCP < 1.5s, INP < 100ms, CLS = 0, TTFB < 200ms.
- Page weight < 500KB.
- Font strategy via next/font (max 2 families, subsetted).
- Third-party script loading strategy (afterInteractive/lazyOnload).
- Specific techniques per target for this project.

## SECTION 4: Frontend Design System (per /frontend-design skill)
- Two-pass design workflow:
  - Pass 1: Color palette (4 to 6 named hex values), typography (typefaces via next/font supporting all 7 language character sets), layout concept (ASCII wireframes), design principles.
  - Pass 2: Self-review against the brief. Revise generic defaults. Document changes.
- CSS design token system (custom properties).
- Per-page visual identity and hero treatment.
- Component library: components, variants, states, responsive behavior.
- Language switcher design: native language names (Deutsch, Espanol, Francais, Italiano, Nederlands, Polski), not flags.
- Conversion-focused design: CTA placement, above-the-fold hierarchy, trust signals.
- Text expansion handling: German/Polish text 30 to 40 percent longer than English.
- CSS-only animations. prefers-reduced-motion support.
- Accessibility: keyboard focus, WCAG AA contrast, semantic HTML, lang attribute per locale.

## SECTION 5: Page-by-Page SEO Spec (per /SEO Optimizer skill and SEO content rules)
For every page in every language, specify:
- Title tag (under 60 chars), meta description (at most 155 chars), H1 with head phrase, heading hierarchy.
- Target keywords, semantic coverage plan.
- 8 FAQ entries with FAQPage schema.
- JSON-LD schemas: WebApplication, BreadcrumbList, FAQPage, Organization.
- Open Graph and Twitter Card meta.
- Self-referencing canonical. Reciprocal hreflang across all 7 languages.
- At least 3 internal links.

## SECTION 6: Technical SEO and Internationalization
- Multilingual sitemap.xml with hreflang annotations.
- robots.txt configuration.
- Per-language internal linking map.
- URL structure with native keyword slugs per language.
- Image optimization pipeline.
- Structured data validation plan.
- Mobile-first responsive strategy.
- Locale detection and redirect strategy.

## SECTION 7: Ad Integration and Conversion Tracking
- Google Ads gtag.js integration.
- Meta Pixel integration.
- Per-language conversion tracking events.
- UTM parameter handling.
- GA4 + Vercel Analytics setup.
- GDPR cookie consent (lightweight, EU-compliant).
- All scripts load after interactive, never impacting Lighthouse.

## SECTION 8: Phased Delivery Roadmap
- Phase 1 (Speed-First MVP): English UK core pages, design system, SSG, Vercel deploy, Lighthouse 100, and pre-configured root `Run.bat` launcher.
- Phase 2 (Multilingual): DE, ES, FR, IT, NL, PL with native content, hreflang validated (ONLY if `--multilingual` flag active).
- Phase 3 (SEO Depth): Full content, FAQ sections, internal linking, OG images, Search Console per locale.
- Phase 4 (Ads and Conversion): Ad pixels, conversion tracking, cookie consent, landing page optimization.
- Per phase: deliverables and definition of done.

## SECTION 9: Development Commands & One-Click Launcher
- npx create-next-app initialization with exact flags.
- Pre-configured root `Run.bat` file containing `@echo off`, Node.js check, dependency check, `start http://localhost:3050`, and `npm run dev` for 1-click user execution without terminal.
- npx next build (verify all pages show static in build output).
- Lighthouse CLI audit per locale.
- Vercel CLI: preview and production deployment.
- Bundle analysis via @next/bundle-analyzer.
- Hreflang and schema markup validation.
