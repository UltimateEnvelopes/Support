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

## Documentation Style

This site is UE's primary source of end-user support documentation — write for a non-technical customer reading on a phone or laptop, not for a developer.

- Favor short paragraphs, bullet lists, and numbered steps over dense prose — most visitors are scanning, not reading start to finish.
- Lead every page/section with what the reader gets out of it before explaining how to do it.
- Use screenshots and short video walkthroughs liberally (see "Adding Screenshots" / "Adding YouTube Videos" below) — a picture usually beats a paragraph for setup/UI steps.
- Keep pages skimmable at mobile width: avoid wide tables or long inline code blocks on end-user-facing pages when a simpler list would do.
- Every page should stay simple to update: plain Markdown plus the existing includes (`figure`, `video`), no page-specific layouts or one-off components — a future edit should only ever touch that page's own Markdown file.
- Visual appeal comes from consistency, not decoration: reuse existing patterns (the "Coming Soon" badge, the screenshot-grid/carousel includes, the video-grid) rather than inventing new ones per page.

## Site Structure

| File/Folder | Purpose |
|---|---|
| `index.md` | Homepage — `splash` layout with `feature_row` sections and video grid |
| `faq.md` | FAQ hub (`/faq/`): buttons to the two product FAQs, plus general Pricing and Support questions |
| `ue26/sheet-faq.md` | UE Sheet FAQ (Sheet subpage). Three screenshots are pending and hidden with `{% comment %}` tags. Remove the tags once `faq-cc-payment-category.jpg`, `faq-envelope-transfer.jpg`, and `faq-funding-account.jpg` are in `assets/images/` |
| `ue26/companion-faq.md` | Companion App FAQ (Companion subpage) |
| `pricing.md` | Pricing page (pay-what-you-want) |
| `videos.md` | Full videos page |
| `privacy.md` / `terms.md` | Legal pages (linked in footer, not sidebar) |
| `ue26/index.md` | UE overview page (`/ue26/`), links to the Sheet and Companion App pages |
| `ue26/google-sheet.md` | UE Sheet documentation |
| `ue26/getting-started.md` | One-time Apps Script authorization walkthrough with screenshots (Sheet subpage) |
| `ue26/startup-wizard.md` | Startup Wizard options (Sheet subpage) |
| `ue26/sheet-reference.md` | Connecting Tiller, transaction types, first-time envelope funding, Categories sheet columns, Funding Transactions (Sheet subpage) — rebuilt for 26.x from `old docs/`. **Draft: unlisted** (not in nav, `sitemap: false`, `search: false`) until screenshots are added |
| `ue26/companion-app.md` | UE Companion App overview: requirements, a table linking each tab page, screenshot carousel, home-screen install |
| `ue26/companion-home.md` / `companion-envelopes.md` / `companion-balances.md` / `companion-transactions.md` / `companion-payday.md` / `companion-settings.md` | One page per app tab (Companion subpages). Each covers what the tab shows, then that tab's own settings. Per-tab settings (Envelope/Balance Settings) live on that tab's page; app-wide settings and Merchant Logos live on the Settings page |
| `ue26/companion-setup.md` | Companion App deployment/connection walkthrough (Companion subpage) |
| `ue26/categorize-transactions.md` | Categorizing transactions in the Companion, incl. Suggested envelopes (Companion subpage) |
| `ue26/split-transaction.md` | Split Transaction walkthrough (Companion subpage) — nav title carries the "Now Available" badge |
| `ue26/changelog.md` | Companion App changelog — renders via `{% include changelog-content.md %}` |
| `_includes/changelog-content.md` | **Single source of truth for Companion App changelog entries** — update this when releasing a new version |
| `ue26/sheet-changelog.md` | Google Sheet changelog — renders via `{% include sheet-changelog-content.md %}` |
| `_includes/sheet-changelog-content.md` | **Single source of truth for Sheet changelog entries** — updated automatically by `scripts/promote.py` in the UE-26-Sheet repo; entries are inserted after the `<!-- ENTRIES -->` marker |
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
  UE Sheet       → /ue26/google-sheet/
    Getting Started → /ue26/getting-started/
    Startup Wizard  → /ue26/startup-wizard/
    FAQ             → /ue26/sheet-faq/
    Changelog       → /ue26/sheet-changelog/
  UE Companion App → /ue26/companion-app/
    Getting Started           → /ue26/companion-setup/
    Home                      → /ue26/companion-home/
    Envelopes                 → /ue26/companion-envelopes/
    Balances                  → /ue26/companion-balances/
    Transactions              → /ue26/companion-transactions/
      Categorizing Transactions → /ue26/categorize-transactions/
      Split Transaction (Now Available badge) → /ue26/split-transaction/
    Payday                    → /ue26/companion-payday/
    Settings                  → /ue26/companion-settings/
    FAQ                       → /ue26/companion-faq/
    Changelog                 → /ue26/changelog/
  Pricing           → /pricing/
  FAQ               → /faq/  (hub: pricing, support, links to both product FAQs)
  Get UE            → Gumroad (external)
```
Privacy Policy and Terms of Service are in the footer only (not sidebar).

The sidebar supports three levels: a section (e.g. UE Companion App), its `children`, and one more level of `children` under a child (e.g. Categorizing / Split under Transactions). The custom `_includes/nav_list` renders a child that has its own `children` as an expandable `details.nav__subsection` (arrow, collapsed by default) with the third level in `ul.nav__grandchildren`, indented but not shrunk further (see `main.scss`). A section, and an expandable child, auto-expands when the current page is inside it.

## Adding a New Version to the Changelog

**Companion App:** Edit `_includes/changelog-content.md` — add the new version at the top. Also update `CHANGELOG.md` in the root to keep GitHub display in sync. The `ue26/changelog.md` page pulls its content automatically via `{% include changelog-content.md %}`.

**Google Sheet:** Handled by `scripts/promote.py` in the UE-26-Sheet repo (`/Users/richrscott/Documents/UE 2026/UE 2026 Sheets/`) — it bumps the Sheet's version, updates its own `CHANGELOG.md`, and inserts a matching entry into `_includes/sheet-changelog-content.md` here (after the `<!-- ENTRIES -->` marker), then commits and pushes both repos. Only edit `_includes/sheet-changelog-content.md` by hand for corrections after the fact.

## Adding Screenshots

Save images to `assets/images/` and reference them with:
```
{% include figure image_path="/assets/images/filename.png" alt="..." caption="..." %}
```

Current sheet page image names: `sheet-envelopes-overview.jpg`, `sheet-envelopes-tab.jpg`, `sheet-envelopes-funding-view.jpg`, `sheet-tracker-tab.jpg`, `sheet-balances-tab.jpg`, `sheet-payday-tab.jpg`, `sheet-startup-wizard.jpg`, `sheet-startup-wizard-sample-data.jpg`.

`og-image.png` (1200×630, cropped from the UE26 cover image) is the default link-preview image set by `og_image` in `_config.yml`.

Only commit images that UE owns. Third-party or reference images stay out of `assets/images/`.

## Adding YouTube Videos

Use the video ID from the YouTube URL (the part after `?v=` or after `youtu.be/`):
```
{% include video id="0kbGHSoEsjY" provider="youtube" %}
```

All Sheet-page videos are filled in (Getting Started, Payday Funding Workflow, Account Balances Overview, Exploring Envelope Insights, Using Tracker, Envelope Balances). The Companion App Tour video was removed for now — add a `## Videos` section back to `ue26/companion-app.md` (and the homepage grid) once that footage exists. The playlist link in `videos.md` is filled in.

## FAQs

Each product has its own FAQ in its own sidebar section. Put a question in the FAQ for the product it's about:

- `ue26/sheet-faq.md`: the Google Sheet (tabs, Startup Wizard, funding, credit cards, Tiller feeds)
- `ue26/companion-faq.md`: the Companion App (setup, phone use, app features)
- `faq.md`: only questions that apply to both, such as pricing and support

Before adding an answer, check which product the feature is actually in. Both have Envelopes, Balances, and Payday tabs, but they work differently. The UE vs. Tiller Foundation choice exists only in the Companion.
