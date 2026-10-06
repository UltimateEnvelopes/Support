---
layout: single
title: "Startup Wizard"
description: "Set up your sheet: start fresh, upgrade from a previous UE Sheet, or set starting balances."
permalink: /ue26/startup-wizard/
toc: true
toc_label: "On This Page"
---

Migrate with ease. The first time you open your copy of the sheet, the Startup Wizard walks you through getting set up. Pick the option that matches where you're starting from. Each one is explained below.

{% include figure image_path="/assets/images/sheet-startup-wizard.jpg" alt="Startup Wizard with options to start fresh, upgrade, migrate from Tiller, set initial Payday amount, or load sample data" caption="The Startup Wizard" %}

| If you… | Choose |
|---|---|
| Are new to UE and want an empty sheet | Start Fresh |
| Used an earlier version of UE | Upgrade from a Previous UE Sheet |
| Use the Tiller Foundation Template today | Migrate from Tiller Foundation Sheet |
| Want to try UE before entering your own numbers | Load Sample Data |

**Need the wizard again later?** Open it any time from **Extensions → Ultimate Envelopes → Setup Tools → Run Setup Wizard**.
{: .notice--info}

---

## Start Fresh with Blank UE Sheet

A 100% blank slate: no envelopes, no transactions, and no account balances.

1. Select **Start Fresh with Blank UE Sheet**, then click **Continue**.
2. Click **Start Fresh**.

Then follow the next steps the wizard shows:

1. **Install Tiller Money Feeds** (optional) to bring in your bank transactions automatically. You can also enter or import transactions yourself.
2. **Create your categories.** These are your envelopes.
3. **Categorize your transactions.**
4. **Fund your envelopes.**

---

## Upgrade from a Previous UE Sheet

Bring your envelopes and history forward from an earlier Ultimate Envelopes sheet. **Your old sheet isn't changed.** The wizard only copies from it.

This happens in two phases.

### Phase 1: Sync Tiller first

Connect your new sheet to Tiller and fill it before importing. This prevents duplicate transactions.

1. Install **Tiller Money Feeds** if you haven't already.
2. Open **Extensions → Tiller Money Feeds** and link your accounts to this new sheet.
3. Use Tiller's **Fill** option to pull in your latest transactions.
4. Back in the wizard, click **Phase 1 Complete — Continue to Migration**.

### Phase 2: Import your data

1. Paste the **URL** (or ID) of your previous UE sheet.
2. Choose which sheets to bring over. All are selected by default:
   - Categories
   - Transactions
   - Funding Transactions
   - Balance History
   - Accounts
3. Leave **Archive existing sheets before migrating** checked. It saves hidden backup copies of the new sheet's tabs before they're overwritten.
4. Click **Migrate Data** and wait for every step to finish.

---

## Migrate from Existing Tiller Foundation Sheet

Switching from the Tiller Foundation Template? This copies your data into UE. **Your Tiller sheet isn't changed.**

1. Paste the **URL** (or ID) of your Tiller Foundation sheet.
2. Click **Migrate Data**.

The wizard copies these sheets:

- Categories
- Transactions
- Balance History
- Accounts

---

## Set Initial Payday Amount

Gives your envelopes a starting balance to fund from, based on what's in your bank account today. You can also open this step on its own from **Extensions → Ultimate Envelopes → Setup Tools → Set Starting Balance**.

1. **Refresh your accounts** in Tiller first. Accounts that weren't updated today can't be selected.
2. **Select your funding account.** This is the account your paychecks land in.
3. **Select any linked liability accounts**, such as a credit card you pay from that account.
4. **Review the balance adjustment**, then click **Update Initial Balance**.

---

## Load Sample Data

Explore Ultimate Envelopes with realistic example data before entering your own.

The wizard **archives** your current sheets first, so nothing is lost. Then it replaces these with sample versions:

- Transactions
- Funding Transactions
- Categories
- Balance History

1. Select **Load Sample Data**, then click **Start**.
2. Wait for each step to finish, then click **Close**.

{% include figure image_path="/assets/images/sheet-startup-wizard-sample-data.jpg" alt="Startup Wizard loading sample data, showing progress through archiving sheets and copying sample transactions" caption="Loading sample data to explore Ultimate Envelopes before entering your own" %}

When you're ready to use your own numbers, run the wizard again and choose **Start Fresh**, **Upgrade**, or **Migrate**.

---

## Troubleshooting

- **The wizard didn't open.** Make sure you finished the one-time authorization in [Getting Started](/ue26/getting-started/), then refresh the sheet.
- **A migration stopped partway.** Run the wizard again and choose the same option. If you left "Archive existing sheets" checked, your earlier copies are saved as hidden tabs; show them with **Extensions → Ultimate Envelopes → Admin Tools → Unhide All Sheets**.
- **Still stuck?** Email [support@ultimateenvelopes.com](mailto:support@ultimateenvelopes.com).
