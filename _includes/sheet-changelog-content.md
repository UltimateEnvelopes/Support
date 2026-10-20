<!-- ENTRIES -->

## v26.11.0 — 2026-10-19

This release makes major improvements to how budgets and funding templates are managed. Gone are the days of years and years of budget amounts piling up in the Categories sheet. Instead, they've moved to a new **Budget History** tab that records the month each amount starts. Your existing Categories sheet works just as before, and those columns are now read-only. Lastly, we've built a suite of tools to add, edit, and delete budget and template data, and it works in both the Sheet and the Companion App.

### Budget History and Budget Tools
- New **Budget History** tab: budgets and funding templates record the month each amount starts, so you can change them going forward without rewriting past months
- **Migrate Categories Sheet** moves your existing budgets and template amounts into Budget History in one step. It backs up your Categories sheet first and ends with a short Success summary
- **Migrating is optional.** You'll be offered Budget Tools when you open the sheet (Migrate now, Remind me later, or Don't ask again) and at the end of the Startup Wizard. Nothing changes until you say yes, and without it the Sheet works as before. You can migrate any time from **Budget Tools → Migrate Categories Sheet**
- Your Categories sheet keeps its layout, so formulas, reports, and Tiller tools keep working. After migrating:
  - ✏️ **Still editable:** columns A–I (Category, Group, Type, Hide From Reports, Funding Account, Hide From Funding, Favorite, Sweep, Savings Target), N (Emoji), and the four template names in J1–M1
  - 🔒 **Now read-only (shaded):** the template amounts in J–M and the monthly budget columns from O onward. They fill in from Budget History; change them with Budget Tools or the Companion App
- After migrating, the **Budget Tools** menu has **Edit Budgets and Templates** (one envelope at a time), **Bulk Edit** (every envelope at once), **Budget Settings** (how many future months to show), **Rename Template**, and **Refresh Categories Columns**
- Keep as many funding templates as you like. Choose which four show on Categories and the Envelope tab with the dropdowns in the template column headers
- A $0 amount is only recorded when it ends an earlier amount, so Budget History stays short
- On a migrated sheet, the Startup Wizard's imports (from a UE or Tiller sheet) and sample data add their budgets and templates to Budget History instead of overwriting Categories
- Use UE Companion App 26.11.0 or later with a migrated sheet
- Learn more: https://www.ultimateenvelopes.com/ue26/budget-tools/

### Add Envelope
- New **➕ Add Envelope** menu item (on migrated sheets) creates an envelope with a form. Funding Account is a dropdown of your accounts, and the envelope list refreshes automatically

### Envelope Emoji
- New **Emoji** column on Categories. The UE Companion App shows each envelope's emoji

### Admin Tools — Refresh Data Validation
- New **Refresh Data Validation** rebuilds the sheet's dropdowns and checkboxes and cleans up old values (for example, "Visible" in Hide From Funding becomes blank)

### Other Changes
- **Menu:** Setup Tools and Admin Tools now live under **UE Tools**, in alphabetical order, with **Reset All Sheets!!!** at the very bottom. Beta Tools is removed
- **Sweep** is now a standard checkbox (checked or blank)
- **Startup Wizard:** importing from another sheet no longer fails when a value isn't in a dropdown's list; the value is kept
- **Fixed:** an envelope name with two spaces in a row (for example "Gym  / Sports") could show blank budget and template amounts
- **Sidebar removed:** the retired sidebar is gone. Use the [UE Companion App](https://www.ultimateenvelopes.com/ue26/companion-app/) instead
- **Version numbering:** the Sheet and the Companion App are both 26.11.0 and are released together


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
- Removed "Show Sidebar" from Beta Tools — the sidebar is being retired. Use the [UE Companion App](/ue26/companion-app/) instead

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
