<!-- ENTRIES -->

## v26.10.1 — 2026-10-05

### Startup Wizard — Set Initial Payday Amount
- If your sheet doesn't have an "Initial balance" category, the wizard now creates it (Type: Income) so your starting balance counts toward Available to Fund
- If you already have an "Initial balance" category that isn't set to Income, the wizard warns you so you can fix it
- Works on a brand-new sheet, even before any transactions have been imported
- The starting-balance transaction now uses a real date, so it sorts and filters like your other transactions
- New confirmation screen after setting a starting balance, with Close Wizard and Set Another Account buttons

### Startup Wizard
- The sheet's version number now shows at the bottom of the wizard

### Menu
- Removed "Show Sidebar" from Beta Tools — the sidebar is being retired

### Version Numbering
- The Sheet jumps from 26.8.0 to 26.10.1 so its version lines up with the Companion App


## v26.8.0 — 2026-09-04

### Beta — Installable onEdit Trigger
- Added an opt-in installable `onEdit` trigger (Beta Tools → Enable/Disable Installable onEdit) for more reliable confirmation dialogs on edits
- Off by default; existing edit behavior is unchanged unless you turn it on, and it can be reverted instantly

### Sheet Management Dialog Redesign
- Added a header bar and a Cancel button
- Refreshed table and button styling to match the app's design system

### Bug Fix — Onboarding
- Fixed an issue where copying or installing a Sheet after setup was already completed could incorrectly reset it back into the startup wizard

### Polish
- Updated dialog fonts to the system font stack for a more native look on each platform
