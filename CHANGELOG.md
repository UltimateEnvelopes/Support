# Changelog

All notable changes to Ultimate Envelopes are documented here.

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
