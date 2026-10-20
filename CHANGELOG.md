# Changelog

All notable changes to Ultimate Envelopes are documented here.

---

## Unreleased

---

## v26.11.0 — 2026-10-19

### Help
- The Help panel now opens a page listing every help topic for the UE Sheet and the Companion App, so you can jump straight to what you need

### Insights Tab
The home dashboard is now the **Insights** tab, right in the tab bar (the title no longer links to it).
- **Edit layout** (below the widgets) lets you rearrange the dashboard on the page itself: drag a card to move it, pick its size with **S | M | L**, and hide it with the eye. **Done** saves it; **List view** opens the list version
- **Top Envelopes** (was Top Categories): **Expense / Income / Transfer** pills, color-coded, for **this week, month, quarter or year** (tap the period to change it). Tap an envelope to open its details
- **Recent Transactions:** the same type pills and colored dots, a list that matches the period in the header, and the date under each amount
- **Account Balances:** when each balance was last updated
- The **Needs Attention** card is removed. Uncategorized Transactions and Envelope Health cover its transactions and envelopes, and stale balances are still marked in the net worth breakdown on Balances

### Tiller Foundation Sheets
Tiller sheets now use the same app as UE sheets, so everything in this release works for them too, in Tiller's terms.
- **Insights** tab with Net Worth, Category Health, This Month's Spending, Account Balances, Recent Transactions, Top Categories and Uncategorized Transactions (no Funding Progress or Favorites, which Tiller doesn't have)
- **Net Worth** on Insights and Balances, worked out from Balance History the same way as UE sheets
- Tools panels, Transactions search and the **ⓘ** menu, as on UE sheets. The Budget tab groups by Group or Type
- Opens with **recent cached data**, like UE sheets

### Envelopes Tab — Filters, Sorting and Tools
- **Filter pills** at the top of the tab: Visible, Favorite, Overspent, Positive, Zero, Income, Transfer, All, Hidden. Group totals follow the filter
- The chevron opens a **tools panel** with **Group By** pills and the actions (New Envelope, More Settings), replacing the Filter By and Group By dropdowns
- **Sort from the column headers** (name or balance, either direction); the groups are sorted too
- Collapsed progress bars show **% spent** (spending ÷ starting balance + funded) on the right
- New **Progress Bar** setting in Envelope Settings: **Show expanded by default**. Each envelope remembers if you open or close it

### Balances, Transactions and Payday — Tools Panels
- Each tab has the same chevron tools panel as Envelopes: Group By on Balances, All / Uncategorized and Add Transaction on Transactions, Edit Templates on Payday
- **Transactions:** the search bar is always shown, with the detailed filters behind its chevron. When the list is filtered, a **Filtered · N of M · Clear** line appears and the Transactions tab icon gets a red search badge

### Footer — Help & Tiller
- Help & Docs and Open Tiller moved into one small **ⓘ** menu at the bottom right of the footer (they were in the title bar and on Settings)

### Other Changes
- $0.00 balances are neither positive nor negative (they no longer show as overspent)
- The **Negative** filter is now **Overspent**, and Envelope Health says "Overspent envelopes"
- The budget month in the title is a size larger, with a calendar icon
- The refresh icon spins while data loads, including background refreshes
- Net worth table view: no chart axis, and the header stays on top when scrolling

### Budgets & Funding Templates
This release makes major improvements to how budgets and funding templates are managed. Gone are the days of years and years of budget amounts piling up in the Categories sheet. Instead, they've moved to a new **Budget History** tab that records the month each amount starts. Your existing Categories sheet works just as before, and those columns are now read-only. Lastly, we've built a suite of tools to add, edit, and delete budget and template data, and it works in both the Sheet and the Companion App.
- 🔒 **Read-only on Categories after migrating:** template amounts (J–M) and the monthly budget columns (O onward)
- ✏️ **Still editable:** columns A–I, Emoji (N), and the four template names in J1–M1

### Envelope Details — Budget & Templates
- New **Budget & Templates** section in an envelope's details: change its monthly budget and funding template amounts from any month, right from the app
- Two tabs, each with its own month picker: **Budget** (current amount up top, then New Amount) and **Funding Templates** (only the templates the envelope uses that month)
- Add a template from a list of your existing templates, or create a new one; × removes a template from the chosen month on
- A ⏱ marks amounts that change in a later month, and the Budget tab spells out the next change
- Save buttons stay off until something has changed
- Appears on sheets that use the Sheet's Budget Tools (Budget History), and saves to the same place as the Sheet's Edit Budgets and Templates

### Envelope Details — Layout
- **Recent Activity** replaces the separate Latest Transactions and Funding Transactions sections, with **Spending** and **Funding** tabs and a count on each
- **Additional Details** is now a tidy Setup card: Funding Account, Group, Type, Savings Target, and Favorite / Sweep / Hidden from funding tags
- The hide/show eye now appears only while editing an envelope (it takes the pencil's place), so it can't be tapped by accident

### Envelope Insights — Summary Card
- New **Summary** card, first in the Insights rotation: Balances (current, total), Spending (this month, last month), and Budget / Funding (budget, funded) with a color-coded **Budget used** bar
- Turn it off or reorder it in Envelope Settings → Envelope Insight Charts
- Fixed: the Current Balance card's legend could overlap the balance amount

### Payday — Totals and Loading
- **Remaining to Fund** and each account's total now count envelopes that are over-funded, so they match the envelopes' Remaining amounts
- An over-funded envelope says **Overfunded $X** in red, and an over-funded account shows **$X over-funded** in red in its header
- Changing the month reloads Payday (Available to Fund, templates, amounts) and shows **Loading Payday data…** instead of last month's numbers
- Payday opens faster: it's loaded with the rest of the app and reuses the envelope data
- When all money is allocated, a small **All money allocated** badge replaces the large Congrats banner

### Balances
- Group headers line up like the Envelopes table: the group name under Account and its total under Balance

### Payday — Funding Templates
- On sheets using Budget Tools, Payday is no longer limited to four templates: every template is listed, with the Sheet's four first and the rest under "More templates"
- Applying a template uses its amounts for the month of the Funding Date
- Edit Templates has a round **+** to create a template, and the template list scrolls sideways on phones, with ‹ › arrows when there are more to see
- Setting every amount in a template to $0 retires it: it's hidden from the Payday list, keeps its history, and comes back when you give it amounts again
- A retired template can be deleted with 🗑 Delete (the Sheet's four templates are changed in the Sheet instead)
- Fixed: applying a template could use amounts from before your latest template edits

### Envelope Emoji
- Envelopes can have an emoji (Categories sheet **Emoji** column). It replaces the envelope icon in the envelope list and details; savings envelopes show the money bag plus the emoji
- New Emoji box to the left of the name when editing or creating an envelope. Tap it to open an emoji picker with search and categories; the emoji you pick replaces the old one, and Remove clears it

### Faster Updates
- Saving an envelope, splitting a transaction, editing templates, or hiding an envelope now updates the app straight away, without reloading all your data
- The app opens with the data it saved on your device last time: under 30 minutes old it shows a green **Viewing recent cached data** and doesn't reload; up to a day old it shows **Showing cached data - refreshing…** and updates in the background; older than that, it loads fresh as before. The age comes from **Cache last updated** in Settings
- Envelopes, Balances, your newest 500 transactions and Payday load first, so every tab opens quickly; older transactions follow
- The footer shows one loading line that updates as each part arrives, then a short summary, or which part didn't load. The refresh button reloads everything fresh
- Hiding or showing an envelope is much faster, and the envelope list updates immediately
- Fixed: hiding an envelope could clear its Sweep setting

---

## v26.10.1 — 2026-10-04

### Help — Support Site Inside the App
- New help icon (?) in the title bar opens the Ultimate Envelopes support site (ultimateenvelopes.com) right inside the app
- Help opens in a panel inside the app, so the title and tab bar stay visible; tap any tab or × to close it
- Use the open-in-browser button to view the same page in a full browser tab
- On phones, when you scroll down and the tab bar is replaced by the ☰ menu, Help moves into that menu
- The bottom of the Help panel links to support@ultimateenvelopes.com for anything the help pages don't answer

### Settings — Tiller Shortcut
- New Tiller icon at the bottom of the Settings tab opens my.tiller.com in a new tab (Tiller doesn't allow its site to be shown inside other apps)

---

## v26.10.0 — 2026-10-02

### Envelope Picker — Suggested Envelopes for Uncategorized Transactions
- New "✨ Suggested" tab when categorizing an uncategorized transaction: suggests envelopes based on past transactions with a similar description
- Each suggestion shows a confidence score — 100% when the description and amount match a past transaction exactly, lower when the amount differs, the description only partly matches, or past transactions were split across different envelopes
- The picker opens on Suggested automatically when there are matches; transactions with no similar history open as before
- Searching in the envelope picker now includes hidden envelopes, without needing to tick "Show Hidden"
- Fixed: reopening the envelope picker after searching could leave the old search applied, hiding groups until you typed again

---

## v26.9.1 — 2026-10-02

### Transaction Details — Split Transaction (targeted for v26.9.1)
- New: split a single transaction into two or more line items, each with its own envelope/category and amount, right from the transaction detail view
- Split amounts must add up exactly to the original transaction's total before saving
- The original transaction becomes the first split (updated in place); the rest are added as new rows directly below it, keeping the whole split grouped together

---

## v26.9.0 — 2026-09-13

### Insights Home — Uncategorized Transactions Widget
- Renamed from "Uncategorized" to "Uncategorized Transactions"
- Header now shows the total dollar amount of uncategorized transactions alongside the count
- Fixed title and value sizing/spacing so the card no longer overlaps or gets cut off at any card size (Small/Medium/Large) or screen width — including mobile, where the title now wraps instead of truncating
- Removed the small eyebrow label above each card's title across all Insights cards for a cleaner header
- Small-sized cards no longer expand when tapped — they're too narrow to show body content without overlapping

### Payday
- Insights Home's Funding Progress card now has a "Go to Payday" button linking straight to the Payday tab
- Funding Account group headers on the Payday tab show the dollar amount still needed for that group (hidden once a group is fully funded)
- On mobile, each envelope's "$X to fund" subtitle is now bold when it still needs funding, and reads "Fully Funded" (capitalized) once it doesn't
- Fixed the "Show/Hide Funding Controls" toggle showing the wrong label after being clicked — it now correctly reads "Show/Hide Payday Controls"
- The top summary's "Funding Amount" box is now "Remaining to Fund" — it shows the total dollar amount still needed across all envelopes, counting down to $0.00 as you enter funding amounts, instead of counting up from $0.00

### Main Tab Bar
- The active tab now shows a small chevron-down next to its label, hinting it can be tapped again to open its quick-actions menu (Envelopes, Balances, Transactions, Payday only — Settings has no such menu)

### Settings — Theme
- Dark mode is now a 3-way Light Mode / Dark Mode / System choice (dropdown menu in Settings, same style as the Font Size menu) instead of a simple on/off toggle
- "System" follows the device's OS-level light/dark setting and switches live if that changes while the app is open
- Existing users' current light/dark preference carries over automatically the first time this loads
- Fixed the Font Size and Theme dropdown menus rendering with oversized, bold, wrapping text — a global button style was unintentionally overriding their intended compact appearance

### Header
- Fixed the "September 2026" date's tap/click area spanning the full header width — it now only responds to taps on the text itself

### Account Name Display
- Account names now display in Title Case everywhere they're shown (e.g. "HOUSE SAVINGS ACCOUNT" → "House Savings Account") — Balances tab, Payday tab group headers, Envelopes tab "Group By: Account" headers, account and transaction detail popups, Funding Account dropdowns, and the Account Balances Insights card
- Purely cosmetic — the underlying sheet values, saved edits, filters, and lookups are all unaffected and still use the original casing

### Envelopes Tab
- Fixed the "Group By: Account" header row — the group name and total were crammed into one merged cell that didn't line up with the columns below; they're now in separate cells aligned with the "Envelope" and "Current Balance" columns
- Fixed hover/tap highlighting on that same header row only lighting up one of the two cells instead of the whole row

### Envelope Funding Transactions
- Fixed a bug where an envelope's funding history could be missing transactions, especially recent ones — the data was being read in a way that silently dropped entries once the underlying sheet grew past a fixed size, and was vulnerable to breaking further if that sheet was ever manually sorted
- Fixed slow loading of an envelope's funding transactions — caching for this data had silently stopped working once the fix above made it read more data; it now loads instantly from cache and refreshes in the background, the same pattern already used for the main Transactions tab
- The amount of funding history loaded now follows the same "Transaction Record Limit" setting (1000/2500/5000) used by the Transactions tab, instead of a separate fixed amount
- Funding transactions dated in the future are now called out — the month they fall under is bolded/italicized with a "Future Funding" badge, so scheduled funding is easy to tell apart from funding that's already happened

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
