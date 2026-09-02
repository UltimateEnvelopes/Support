# Changelog

All notable changes to Ultimate Envelopes are documented here.

---

## Unreleased

---

## v26.8.0 — 2026-09-02

### New — Insights Home Tab
- Added a new "Home" tab (Insights dashboard) — a customizable landing screen with 8 cards: Net Worth, Needs Attention, Envelope Health, This Month's Spending, Funding Progress, Account Balances, Recent Transactions, and Top Categories (30 days)
- Now the default Starting Tab; existing "Starting Tab" preferences are respected, and "Home" was added as a selectable option alongside the existing choices
- Each card is collapsible; click "Customize" to reveal drag handles and reorder cards (works with touch). Layout and collapsed state are saved automatically and sync across devices
- "Needs Attention" surfaces uncategorized transactions, over-budget envelopes, and stale account balances in one place
- Applied to both UE and Tiller versions

### Account Balances — Type Icons
- Accounts in the Balances list and the account details popup now show an icon based on their account Type (checking, savings, credit card, mortgage, loan, investment, retirement, 529, HSA, etc.) instead of one generic bank icon
- Icons are colorized with the app's accent color

### Net Worth — Gap-Filling, Performance, and Table Redesign
- Accounts with infrequent balance updates (e.g. quarterly) no longer get incorrectly flagged stale/excluded mid-history if a later update exists — the 30/90-day staleness rules now only apply to an account's true last-known value
- Net worth header and history now share a short-lived cache, avoiding duplicate "Balance History" sheet reads on page load
- History chart: y-axis now shows compact dollar labels scaled to the actual data range, x-axis shows M/YY, chart scrolls horizontally with the icon controls floating clear of the content
- Debug table: sorted most-recent-first, uses the app's normal font, and each expanded account now shows High/Low balance for the month (with dates) in a cleaner stat-card layout instead of cramped columns

---

## v26.7.2 — 2026-07-09

### Settings — Starting Tab
- Added a "Starting Tab" dropdown to Settings — choose which tab the app opens on
- UE options: Envelopes, Balances, Transactions, Payday; Tiller options: Budget, Balances, Transactions (Tiller has no Payday tab)
- The choice is saved server-side (like other settings) and restored on every startup

### Settings — Font Size Icon
- Replaced the Font Size dropdown row with a compact icon button (big/small "A") in the Settings header, next to the accent color and dark mode icons
- Clicking it opens a small menu with the same options (Small, Default, Large, Extra Large) and a checkmark on the current one
- Applied to both UE and Tiller versions

### Tiller — Instant Recalc on Categorize
- Categorizing a transaction now updates the budget Actuals and Current Amount for the affected categories immediately (client-side), without waiting for a server refresh — works from both the transactions list and the transaction details popup
- If an envelope's detail panel is open, its Budget Insights (Current Balance gauge, Spending Comparison, Spending History, Latest Transactions) now refresh live when an affected transaction is categorized

### Tiller — Actuals Fix
- Budget Actuals now display with the correct polarity — expense spending shows as a positive Actuals so Available/Current Amount = Budget − Actuals (previously it showed negative, inflating the Available amount)
- Actuals also fall back to the sum of the category's current-month transactions when the Monthly Budget sheet reports $0, so the table, Current Amount, and the Current Balance gauge match the transactions the app shows

### Tiller — Critical Fix
- Fixed a duplicate `descText` declaration in the Tiller transaction renderer that was a JavaScript syntax error — it prevented the entire Tiller script from loading (blank/partial page, "closeEnvelopeSettings is not defined"). The Tiller version now loads correctly.

---

## v26.7.1 — 2026-06-27

### Transaction Details — Vendor Logo
- The transaction details popup now shows the vendor logo below the Description label (same logos as the transaction lists)
- Click the logo to open a small editor to set or change that vendor's logo website — scoped to just the selected transaction's vendor, reusing the Settings merchant-logo logic
- Saving updates the logo everywhere immediately; type "ignore" to hide a vendor's logo
- Available in both UE and Tiller

### Envelopes Tab — Row Progress Bar (Tiller)
- The Tiller budget view now has the same envelope-row progress bar (UE got it in v26.7.0)
- Collapsed: a light-grey track represents the Budget; remaining (Variance) fills as green from the left with the spent portion grey to its right; negative remaining shows red growing from the left; a $0 remaining shows just the grey track
- Tap to expand into a Budget vs Spent composition — budget blue (red if negative), spending red when spent or green when a refund — with a Budget / Spent / Remaining breakdown and matching legend dots
- "Show envelope progress bar" toggle added under Envelope Settings → Display

---

## v26.7.0 — 2026-06-26

### Envelopes Tab — Row Progress Bar (UE)
- Each envelope row now has a thin, subtle full-width progress bar tucked just beneath the row
- Collapsed: a light-grey track represents the total (Beginning Balance + Funded); the current balance fills as green from the left with the spent portion grey to its right; a negative balance instead shows red growing from the left; a $0 balance shows just the grey track
- Tap to expand into a taller composition bar where each segment is colored by the sign of its value: starting amount blue (red if negative), funded green-hatched (red-hatched if funds were removed), and spending green if positive (refund) or red if negative (spent) — with a Start / Funded / Spent / Remaining breakdown whose legend dots match each segment's actual color and hatching
- New "Show envelope progress bar" toggle under Envelope Settings → Display

---

## v26.6.2 — 2026-06-25

### Envelopes & Balances — Group Header Amounts
- Group-by header totals now show full currency with cents (e.g. $1,234.56) instead of rounding to the nearest dollar
- Applied to both UE and Tiller versions

---

## v26.6.1 — 2026-06-15

### Mobile Amount Input
- Added +/- toggle button before currency fields on mobile (payday funding, add transaction, edit transaction) to allow sign changes on numeric keypads that lack a dedicated sign key
- Applied to both UE and Tiller versions

### Transaction List Expand/Collapse
- Date groups (Transactions tab) now default to expanded only for today's date or groups with uncategorized transactions; all others collapsed
- Month groups (envelope detail and balances popups) default to expanded only for the current month or groups with uncategorized transactions; all others collapsed
- Applied to both UE and Tiller versions

---

## v26.4.4 — 2026-04-10

### Dark Mode — Balances Tab
- Group headers now display in the accent color (matching envelopes and transactions) instead of dark grey
- Fixed multiple overlapping CSS rules that were overriding the accent color background on group header rows

### Dark Mode — Transactions Tab (Mobile)
- Removed unwanted dark background color from transaction card rows on small screens
- Envelope/category pill text is now white in dark mode on mobile

### Net Worth Chart
- Added Apple PWA meta tags for "Add to Home Screen" experience
- Preloaded chart data fetches in background on app startup for instant rendering

---

## v26.4.3 — 2026-04-08

### Notification Bar
- Notification bar now shrinks from the right when a side panel is open, so it no longer overlaps the panel

### Side Panel
- Side panel extends to the bottom of the screen (removed reserved space for notification bar)
- Transaction details and Add Transaction now use the resizable draggable split-panel on both UE and Tiller versions

### Add Transaction Form
- Envelope, Account, and Notes fields are now keyboard-tabbable
- Mobile: form opens without auto-focusing the description field (no unwanted keyboard popup)

### Settings — Sheet Connection
- Disconnect confirmation message stays below the button instead of shifting beside labels

### Setup Screen (Mobile)
- Sheet Type Selection screen fits both cards without scrolling on small screens

### Tiller Version
- Add Transaction moved to first position in the Transactions actions menu
- Removed non-functional Google Drive sheet picker from both UE and Tiller versions

---

## v26.5.0 — 2026-04-06

### Transactions Tab
- **Add Transaction side panel** — On desktop (>=900px), the "Add Transaction" form now opens in the side panel instead of the full-screen modal, matching the transaction details split-view pattern
- Save button shows spinner while saving and green checkmark on success before auto-closing
- Double-click guard prevents duplicate transaction submissions

### Loading
- Fixed loading overlay on UE version to match Tiller behavior — overlay now stays visible until data fully loads instead of hiding prematurely

### Tiller Version
- Added Tiller frontend files (`indextiller.html`, `scriptstiller.html`, `stylestiller.html`)
- Backend additions in `code.js` for Tiller multi-sheet support

---

## v26.4.0 — 2026-03-30

### Envelope Table
- Groups now render collapsed by default on load — eliminates the flash where the table appeared fully expanded before user preferences were applied
- Group states re-applied immediately when server preferences arrive, even if the table is already rendered

### Bug Fixes
- Fixed duplicate +/− buttons appearing in envelope popup Latest Transactions section (caused by `replace_all` edit that double-inserted the title row)

---

## v26.3.4 — 2026-03-29

### Payday Tab
- Added +/− expand/collapse all buttons to the funding envelopes table (right-aligned, matches other tables)

### Group State Persistence
- Envelope, balance, and funding group collapse/expand states now saved to Google UserProperties (server-side), keyed separately for mobile vs desktop — survives iOS Safari localStorage purges across all sessions and devices

### Bug Fixes
- Fixed `updateEnvelopesTable is not defined` and `updateBalancesTable is not defined` errors on load (removed dead `loadData()` batch system that was calling non-existent functions)
- Fixed +/− buttons left-aligned on Payday tab mobile (added `width: 100%` to flex container and `text-align: right` to table cell)

### Performance
- Removed all remaining informational `console.log` calls from `merchant-mappings.html`, including per-transaction match logging and debug counter logic
- Removed `console.warn` on favicon 404s (images already hidden via `onerror`; browser-level 404s are not suppressible)

---

## v26.3.3 — 2026-03-29

### Envelope Popup
- Added dedicated eye/eye-slash visibility toggle button in popup header (always accessible, no edit mode required)
- Removed "Hide from Funding" checkbox from edit and new envelope forms (redundant with toggle button)
- Moved Update/Cancel buttons into notification footer bar on mobile; large screens keep buttons inside popup
- Fixed button area width overflow in side-panel mode by calling `applySplitPosition` on edit mode enter
- Removed eye-slash icon from popup title text (covered by new visibility button)

### Account Details Popup
- Added +/− expand/collapse all buttons to Latest Transactions section (matches envelope popup behavior)
- Fixed `popup-main-content` not restoring when switching from envelope to account popup
- Ensured `transactions-collapsible` section is always visible when account popup opens

### Bug Fixes
- Fixed popup closing immediately on first click after page load (data refresh callbacks were calling `showTab` which unconditionally closed the popup; now only closes on tab switch)

### Performance
- Removed 201 informational `console.log` calls across `scripts.html`, `index.html`, and `code.js`
- Removed 86 informational `Logger.log` calls from `code.js` backend

---

## v26.3.2 — 2026-03-15

### New Features
- **Spending History chart** — 12-month bar chart in Envelope Insights, computed client-side from cached transaction data; click bar to select month; legend shows total spend, transaction count, and trend vs previous month
- **Chart visibility toggles** — Envelope Settings section lists charts with checkboxes; check order = display order; numbered circle badges show order
- **Collapsible settings sections** — Column Visibility and Chart sections in Envelope Settings collapse/expand with left-side chevron
- **Balances Settings panel** — gear icon via Balances tab submenu; Group By (Group, Type, Class, Institution), Net Worth visibility toggle, Account Insights chart toggle, Column Visibility (Last Updated, Envelope Balance, Difference)

### Improvements
- Checkbox accent color follows app accent color
- Balance column visibility mirrors envelope column visibility behavior (check order = display order)

---

## v26.2.8 — 2026-02-01

- Font and chart consistency improvements

---

## v26.2.4 — 2026-01-20

- Balances tab polish and net worth fixes

---

## v26.2.0 — 2026-01-10

- Mobile table and group header improvements

---

## v26.1.49 — 2025-12-15

- Responsive envelope group headers

---

## v26.1.48

- Envelope picker improvements

---

## v26.1.46

- Persist envelope column widths via injected CSS rule

---

## v26.1.45

- Envelope filter improvements and icon updates

---

## v26.1.44

- Fix horizontal overflow on envelopes and balances tabs on mobile

---

## v26.1.43

- New envelope reuses popup panel (matches edit envelope behavior)

---

## v26.1.42

- New/edit envelope form improvements

---

## v26.1.41

- Sticky mini-nav bar and large tab bar visibility fix

---

## v26.1.40

- Payday funding workflow

---

## v26.1.39

- Payday tab Funding Progress column and mobile improvements

---

## v26.1.38

- Payday tab mobile UI improvements

---

## v26.1.37

- Live uncategorized refresh, cache-busting refresh, balances column widths
