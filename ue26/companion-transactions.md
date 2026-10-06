---
layout: single
title: "Transactions Tab"
description: "Add, search, filter, and edit transactions."
permalink: /ue26/companion-transactions/
toc: true
toc_label: "On This Page"
---

Add, find, and categorize transactions without opening Google Sheets.

---

## Your Transactions

Transactions are grouped by day, with each day's total in its header. Tap a day to open or close it, or use **+** / **−** at the top of the list to open or close every day at once.

Each transaction shows:

- The merchant's logo and description
- The amount
- Its envelope, shown as a pill (tap it to change the envelope)
- The account it came from

{% include figure class="phone-screenshot" image_path="/assets/images/companion-transactions-list.jpg" alt="Transactions grouped by date with daily totals, each showing a merchant logo, description, amount, envelope pill, and account" caption="Transactions grouped by day" %}

The bar at the bottom shows how many transactions are loaded and the date range they cover. To load more history, raise the **Transaction Record Limit** on the [Settings tab](/ue26/companion-settings/).

The red number on the **Transactions** tab is how many transactions still need an envelope.
{: .notice--info}

---

## The Transactions Menu

Tap **Transactions** in the tab bar again to open its menu.

{% include figure class="phone-screenshot" image_path="/assets/images/companion-transactions-menu.jpg" alt="Transactions menu open, showing Add, Search, and Filter" caption="Tap Transactions again for Add, Search, and Filter" %}

| Option | What it does |
|---|---|
| **Add** | Add a new transaction. |
| **Search** | Opens the search box. Tap the arrow beside it to show more filters. |
| **Filter** | Opens the search box with all the filters already showing. |

---

## Add a Transaction

1. Tap **Transactions** again, then **Add**.
2. Fill in the date, description, amount, envelope, and account.
3. Tap **Add Transaction**. It's saved to your Google Sheet right away.

{% include figure class="phone-screenshot" image_path="/assets/images/companion-add-transaction.jpg" alt="Add Transaction form" caption="Adding a transaction from the side panel on desktop" %}

---

## Search and Filter

Narrow the list to just the transactions you're looking for:

| Filter | What it does |
|---|---|
| **Search all fields** | With just the search box open, matches description, envelope, account, amount, date, and tags. Once the extra filters are open, it matches the description only. Use the dropdowns for the rest. |
| **All Envelopes** | Show only one envelope's transactions. |
| **All Accounts** | Show only one account's transactions. |
| **All Tags** | Show only transactions with a certain tag. |
| **Start Date** / **Finish Date** | Show only transactions in a date range. |
| **Show Uncategorized Only** | Show only transactions that still need an envelope. |
| **Clear** | Remove all filters. |

{% include figure class="phone-screenshot" image_path="/assets/images/companion-transactions-filters.jpg" alt="Search and filter panel with search box, envelope, account, and tag dropdowns, date range, Clear, and Show Uncategorized Only" caption="Search and filter options" %}

---

## Categorize Transactions

Tap a transaction's envelope pill to pick an envelope from the Recent, Frequent, Expense, Income, or Transfer tabs. Transactions still missing one are flagged **Needs Categorization**.

{% include figure class="phone-screenshot" image_path="/assets/images/companion-transaction-categorization.jpg" alt="Envelope picker for categorizing a transaction, organized into Recent, Frequent, Expense, Income, and Transfer tabs" caption="Assigning an envelope to a transaction" %}

{% include figure class="phone-screenshot" image_path="/assets/images/companion-needs-categorization.jpg" alt="Transaction flagged as Needs Categorization" caption="Transactions missing an envelope are flagged Needs Categorization" %}

---

## Learn More

- [Categorizing Transactions](/ue26/categorize-transactions/): suggested envelopes, confidence scores, and the full walkthrough
- [Split Transaction](/ue26/split-transaction/): split one transaction across several envelopes
- [Merchant Logos](/ue26/companion-settings/#merchant-logos): add logos for merchants the app doesn't recognize
