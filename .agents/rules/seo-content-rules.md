# Multilingual SEO Content Rules

These rules are MANDATORY. Apply to every page in every language.

## Keyword Research Per Market

Start every page with keyword research FOR ITS OWN language market. Never translate English keywords. For each language:
- Run live Google autocomplete (a to z plus question words: who, what, when, where, why, how).
- Analyze the top 5 ranking pages for the target query in that language.
- Gather People Also Ask results in that language.
- Review forums, communities, and official vocabulary in that language.
- Group results into search intents and build a topical map per language.
- Write each language NATIVELY from its own topical map. Never translate from English.

## On-Page Keyword Strategy

- Choose ONE head phrase per page per language.
- Put the head phrase in the title tag and the H1.
- Use the head phrase at most TWICE in the body text.
- Cover the topic semantically: use synonyms, inflected forms, and the related entities and NLP terms that at least 3 of the top 5 pages share.
- Write in the domain's own vocabulary for each language.
- NEVER keyword stuff. NEVER repeat headings. NEVER repeat any four-word phrase. NEVER open multiple sections with the same term.

## Content Structure (every page must follow this)

1. A 40 to 60 word DIRECT ANSWER immediately after the H1 (targets featured snippets).
2. Every section opens with a plain sentence that answers its heading. The first section opening must be at most 80 words and must never point at a table or the tool.
3. One or two headings phrased as real search questions (how people actually type into Google).
4. 8 FAQ entries with FAQPage schema markup per page.
5. Sentences under about 30 words. No em dashes.

## Source Citation Requirements

- Every figure, statistic, and factual claim must come from cited primary sources (laws, official agencies, peer-reviewed studies).
- Include a "verified on" date for each citation.
- Name the author of the source.
- Link to or reference a methodology page.
- Include worked examples checked against official cases.
- For money and tax topics: EXPLAIN, never advise. No financial advice.
- Every claim must be literally true.

## Technical SEO Per Page

- Title tag: under 60 characters, head phrase included, native language.
- Meta description: at most 155 characters, compelling with CTA, native language.
- H1 containing the head phrase, followed immediately by 40 to 60 word direct answer.
- Full heading hierarchy with 1 to 2 headings phrased as real search questions.
- 8 FAQ entries per page with FAQPage schema.
- Schema markup (JSON-LD): WebApplication, BreadcrumbList, FAQPage, and Organization on every page.
- Open Graph meta: og:title, og:description, og:image, og:type, og:locale.
- Twitter Card meta.
- Self-referencing canonical per page.
- Reciprocal hreflang tags across all 7 languages on every page (each page links to all its language variants). Include x-default pointing to English (UK).
- At least 3 internal links per page.

## Technical SEO Sitewide

- Auto-generated multilingual `sitemap.xml` via Next.js metadata API (`app/sitemap.ts`) with hreflang annotations.
- `robots.txt` via Next.js metadata API (`app/robots.ts`).
- Per-language internal linking map. Each language version links internally within its own locale. Cross-language links only via language switcher.
- URL structure: `/{locale}/{page-slug}`. Clean, keyword-rich slugs in each language (native keyword slugs, NOT translated from English).
- Image pipeline: next/image with static imports, WebP/AVIF auto-format, blur placeholders (`placeholder="blur"`), descriptive alt text in each language, `priority` on above-fold images.
- Structured data validated using Google Rich Results Test.
- Mobile-first: responsive breakpoints, touch targets (48x48px minimum), 16px minimum font size, proper viewport meta.
- Locale detection: Accept-Language header redirect via Vercel middleware, user preference remembered.
