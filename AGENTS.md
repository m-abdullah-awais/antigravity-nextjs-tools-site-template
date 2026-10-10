# Agent Workspace Memory & Decision Log

## Overview
This file tracks project memory, architectural decisions, and progress for the Next.js multilingual website project.

## Workflow Rules & Protocols
1. Project rules are defined in `.agents/rules/project-rules.md`.
2. Multilingual SEO content rules are defined in `.agents/rules/seo-content-rules.md`.
3. Architecture and speed rules are defined in `.agents/rules/nextjs-architecture.md`.
4. Implementation plans follow `.agents/rules/planning-template.md`.
5. Master prompt is stored at `temp/master_prompt.txt`.
6. Build Tools Site skill is defined at `.agents/skills/build-tools-site/SKILL.md`.

## Data Source Protocol
- Website details, keyword research, competitor lists, and content assets are placed in `resources/`.
- The agent must automatically read and analyze all contents of `resources/` before planning or building.

## Session Log & Progress
- Master prompt configured to instruct agent to analyze `resources/` directly.
- Project rules updated with Rule 12 (pre-analysis of `resources/`), Rule 13 (`--multilingual` flag for multi-language), and Rule 14 (mandatory `Run.bat` root launcher on unique non-default port e.g., `3050`).
- Planning template updated to include resource synthesis in Section 1 and `Run.bat` custom port launcher in Section 9.
- Created `/build-tools-site` skill (`.agents/skills/build-tools-site/SKILL.md`) to automatically read `resources/`, run `/plan`, and generate `Run.bat` on a custom port (e.g., `3050`).


