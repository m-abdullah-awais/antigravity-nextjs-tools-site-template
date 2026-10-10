---
name: Analyze & Fix SEO Reports
description: Analyzes all SEO report files inside temp/seo-reports/, activates required skills (SEO Optimizer, Frontend Design, Senior Backend), and executes all recommended fixes and technical/content implementations to perfection.
---

# Analyze & Fix SEO Reports Skill

Use this skill whenever processing SEO reports placed inside `temp/seo-reports/`.

## Trigger & Goal
When requested to process SEO reports or when files are present in `temp/seo-reports/`:
Automatically analyze every report file, activate workspace skills, and systematically implement all fixes, optimizations, and requirements specified in the reports.

## Execution Steps

1. **Scan & Analyze Report Files:**
   - Recursively inspect and read all files in `temp/seo-reports/` (Markdown, JSON, HTML, CSV, or text reports).
   - Categorize issues by priority:
     - **Critical / Technical:** Meta tags, canonicals, schema markup, robots.txt, sitemaps, HTTP headers, broken links.
     - **Performance / Core Web Vitals:** Image compression, LCP/CLS fixes, script deferral, font loading.
     - **Content & On-Page:** Heading structures (H1-H6), keyword integration, alt attributes, internal linking.
     - **UI / Design Improvements:** Visual spacing, contrast, accessibility (a11y), responsive layout adjustments.

2. **Activate Core Workspace Skills:**
   - Read and apply directives from:
     - `.agents/skills/seo-optimizer/SKILL.md`
     - `.agents/skills/frontend-design/SKILL.md`
     - `.agents/skills/senior-backend/SKILL.md`

3. **Execute All Implementations & Fixes:**
   - Edit codebase files directly to resolve all identified issues.
   - Ensure all fixes are complete, high-quality, and robust (no temporary patches or placeholders).

4. **Verification & Logging:**
   - Verify that code changes compile cleanly (`npm run build` or dev check).
   - Document all resolved issues and implemented changes in `AGENTS.md`.
