---
name: Build Tools Site
description: Automatically reads and analyzes keyword research and resource files in resources/, activates SEO, frontend design, and backend skills, and triggers /plan to architect a fast, SEO-optimized tools website. Defaults to Single Language (English) unless the --multilingual flag is explicitly passed.
---

# Build Tools Site Skill

Use this skill to initialize and plan a Next.js web tools platform using research assets stored in `resources/`.

## Language Flag Policy (IMPORTANT)
- **Default (No Flag):** Single-Language mode (English only). Do NOT generate non-English pages (DE, ES, FR, IT, NL, PL) unless explicitly requested.
- **Multilingual Mode (`--multilingual`):** Activated ONLY when the user explicitly includes the `--multilingual` flag (e.g. `/build-tools-site --multilingual`). When active, generates pages across all 7 target languages (EN, DE, ES, FR, IT, NL, PL).

## Workflow Trigger

When the user runs `/build-tools-site`, "build tools site", or requests to initialize the tools website:

1. **Check for Multilingual Flag:**
   - Check if `--multilingual` or explicit request for all languages is present. If absent, set target language scope to English only (`en`).

2. **Scan and Read Resources:**
   - Inspect all files, spreadsheets, notes, and keyword research documents inside `resources/`.
   - Extract tool specifications, target niche, seed search queries, competitor benchmarks, and ad monetization targets (for the active language scope).

3. **Load Architecture Rules and Active Skills:**
   - Read `.agents/rules/project-rules.md`
   - Read `.agents/rules/nextjs-architecture.md`
   - Read `.agents/rules/seo-content-rules.md`
   - Read `.agents/rules/planning-template.md`
   - Activate skills: `/seo-optimizer`, `/frontend-design`, `/senior-backend`

4. **Generate Tools Implementation Plan & Deliverables:**
   - Automatically execute `/plan` adhering strictly to `.agents/rules/planning-template.md` across all 9 required sections.
   - Respect the single-language default (English only) unless `--multilingual` flag was provided.
   - Use the analyzed data from `resources/` as the baseline context.
   - Permanently configure package.json dev script to `"next dev -p 3050"` and create a `Run.bat` file in the project root so double-clicking it opens `http://localhost:3050` and starts `npm run dev`. Never use default port 3000.
