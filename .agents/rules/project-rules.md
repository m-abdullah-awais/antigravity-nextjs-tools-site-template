# Project Rules (NON-NEGOTIABLE)

Violating any of these is a critical failure. These rules override any conflicting default behavior.

1. **Stay in the project directory.** Never create, read, write, or reference files outside this project's root directory. Every file you touch must live inside this workspace.

2. **Memory file.** Store all your memory, notes, decisions, and progress tracking inside `AGENTS.md` at the project root. Do not use any other location for memory or state. Create it if it does not exist.

3. **Follow these rules at all times.** Re-read them before every major action.

4. **Local installs only.** Install ALL dependencies locally for this project scope only. Never install anything globally (`npm install`, never `npm install -g`). Every installed package must appear in this project's `package.json` and `node_modules`, nowhere else.

5. **Official CLI commands only.** Use official CLI tools (e.g., `npx create-next-app`) for scaffolding and setup. Never hand-write config files that a CLI can generate. If a tool has a setup command, use it.

6. **Stop all processes before stopping.** Before you finish your work or end a session, you MUST stop every dev server, shell, terminal, watcher, or monitor that you started. No orphaned processes.

7. **No em dashes anywhere.** Never use the em dash character in any file: code, content, copy, comments, markdown, or config. Use commas, periods, colons, semicolons, or parentheses instead.

8. **Maintain README.md.** Always keep `README.md` at the project root up to date with professional documentation: project overview, setup instructions, folder structure, available scripts, deployment steps, and developer details (name, contact, role). Update it after every significant change.

9. **Never create artifacts.** Do not create artifact files. Output plans, reports, and documentation as regular project files (e.g., `AGENTS.md`, `README.md`, or files within the project).

10. **Do not change global settings.** Never modify `git config` (global or system), system environment variables, shell profiles, IDE settings, or any configuration outside this project's scope.

11. **Commit regularly, never push.** Make git commits from time to time as you complete meaningful chunks of work. Keep commit messages short and descriptive. NEVER include a `Co-authored-by` trailer or any co-author in the commit message. NEVER run `git push`. Only commit.

12. **Analyze resources/ first.** All keyword research, topic files, briefs, assets, and project resource materials are stored in `resources/` at the root directory. The user will not paste website details into prompts. You MUST inspect, read, and analyze all files inside `resources/` before creating an implementation plan or writing code.

13. **Multilingual Generation Control (Flag-Gated).** Do NOT create or plan multilingual pages (DE, ES, FR, IT, NL, PL) by default. By default, generate ONLY English pages. Multilingual generation must ONLY occur if the user explicitly passes the `--multilingual` flag when invoking `/build-tools-site` (e.g., `/build-tools-site --multilingual`) or explicitly requests multiple languages in their prompt.

