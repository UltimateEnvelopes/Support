# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository

- **GitHub:** `git@github.com:UltimateEnvelopes/Support.git`
- **Live site:** https://www.ultimateenvelopes.com
- **Local clone:** `/Users/richrscott/Documents/UE 2026/UE 2026 Support/`
- **SSH auth works** — always use SSH for git push/pull

## Local Development

```bash
bundle install          # install gems (first time / after Gemfile changes)
bundle exec jekyll serve  # preview at http://localhost:4000 with live rebuild
bundle exec jekyll build  # one-off build to _site/, matches CI
```

There's no lint or test suite — verify changes by building and/or previewing locally.

## Deploying Changes

Every push to `main` triggers the GitHub Actions workflow at `.github/workflows/deploy.yml`, which runs `bundle exec jekyll build` (Ruby 3.2, Jekyll 4.3) and deploys to GitHub Pages. A local build isn't required before pushing, but running one first catches errors before CI does.

```bash
git add <files>
git commit -m "description"
git push origin main
```

Build status: https://github.com/UltimateEnvelopes/Support/actions

**GitHub Pages source must be set to "GitHub Actions"** (not "Deploy from branch") in repo Settings → Pages. The managed `pages-build-deployment` workflow does not support `jekyll-include-cache`, which this theme requires.

## Theme

Minimal Mistakes (`minimal-mistakes-jekyll` gem, `mint` skin). The theme is installed as a gem — not a remote theme. Custom overrides live in `assets/css/main.scss`, which imports the theme then adds project-specific CSS.

Key theme behaviors:
- `layout: single` pages automatically get the `docs` sidebar and a right-hand TOC if `toc: true` is set
- `layout: splash` (homepage only) ignores the sidebar default
- The page `title:` frontmatter renders as an automatic `<h1>` — never add a manual `# Heading` at the top of a page or the title will appear twice
- `{% include figure image_path="..." alt="..." caption="..." %}` for images
- `{% include video id="YOUTUBE_ID" provider="youtube" %}` for YouTube embeds

## Site Structure

| File/Folder | Purpose |
|---|---|
| `index.md` | Homepage — `splash` layout with `feature_row` sections and video grid |
| `faq.md` | FAQ page |
| `pricing.md` | Pricing page (pay-what-you-want) |
| `videos.md` | Full videos page |
| `privacy.md` / `terms.md` | Legal pages (linked in footer, not sidebar) |
| `ue26/index.md` | UE 26 overview page (`/ue26/`), links to the Sheet and Companion App pages |
| `ue26/google-sheet.md` | UE 26 Sheet documentation |
| `ue26/authorize-script.md` | One-time Apps Script authorization steps (Sheet subpage) |
| `ue26/startup-wizard.md` | Startup Wizard options (Sheet subpage) |
| `ue26/companion-app.md` | UE 26 Companion App documentation |
| `ue26/changelog.md` | Renders changelog via `{% include changelog-content.md %}` |
| `_includes/changelog-content.md` | **Single source of truth for changelog entries** — update this when releasing a new version |
| `_data/navigation.yml` | Sidebar nav and masthead nav — update this when adding pages |
| `assets/images/` | Screenshots and images — reference as `/assets/images/filename.png` |
| `assets/css/main.scss` | Custom CSS overrides (footer color, video grid layout) |
| `CHANGELOG.md` | Root-level changelog for GitHub display — keep in sync with `_includes/changelog-content.md` |

## Navigation

Navigation is **manually defined** in `_data/navigation.yml` — there is no auto-generation. Adding a new page requires adding it to this file or it won't appear in the sidebar.

Current structure:
```
main:       → masthead "Get the Sheet" link (Gumroad)
docs:
  UE 26 Sheet       → /ue26/google-sheet/
    Authorizing the Script → /ue26/authorize-script/
    Startup Wizard  → /ue26/startup-wizard/
  UE 26 Companion   → /ue26/companion-app/
  Pricing           → /pricing/
  FAQ               → /faq/
  Get UE            → Gumroad (external)
```
Privacy Policy and Terms of Service are in the footer only (not sidebar).

## Adding a New Version to the Changelog

Edit `_includes/changelog-content.md` — add the new version at the top. Also update `CHANGELOG.md` in the root to keep GitHub display in sync. The `ue26/changelog.md` page pulls its content automatically via `{% include changelog-content.md %}`.

## Adding Screenshots

Save images to `assets/images/` and reference them with:
```
{% include figure image_path="/assets/images/filename.png" alt="..." caption="..." %}
```

Current sheet page image names: `sheet-envelopes-overview.png`, `sheet-envelopes-tab.png`, `sheet-tracker-tab.png`, `sheet-balances-tab.png`, `sheet-payday-tab.png`.

## Adding YouTube Videos

Use the video ID from the YouTube URL (the part after `?v=` or after `youtu.be/`):
```
{% include video id="0kbGHSoEsjY" provider="youtube" %}
```

All Sheet-page videos are filled in (Getting Started, Payday Funding Workflow, Account Balances Overview, Exploring Envelope Insights, Using Tracker, Envelope Balances). The Companion App Tour video was removed for now — add a `## Videos` section back to `ue26/companion-app.md` (and the homepage grid) once that footage exists. The playlist link in `videos.md` is filled in.
