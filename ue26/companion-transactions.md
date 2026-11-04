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

Transactions are grouped by day. Each day's header shows the date with that day's total right after it, for example **TUE, NOV 3 · −$104.00**. Tap a day to open or close it, or use **+** / **−** at the top of the list to open or close every day at once.

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

## The Toolbar <span class="badge-updated"><i class="fas fa-pen" aria-hidden="true"></i> Updated</span>
{: #the-transactions-menu}

One row at the top of the list holds everything you need:

| Control | What it does |
|---|---|
| **All** / **Uncategorized** | Show every transaction, or only the ones that still need an envelope. The number on Uncategorized is how many are left. |
| **Search** | Type to find transactions. See [Search and Filter](#search-and-filter). |
| **⌄** (chevron) | Open the full-width search and the detailed filters. Tap it again to close them. |
| **＋** | Add a transaction. |

To hide the row and give the list more room, tap **Transactions** in the tab bar again (the small arrow next to the name is the hint). Tap it once more to bring the row back. The app remembers your choice on each device.

---

## Add a Transaction

1. Tap **＋** at the end of the toolbar.
2. Fill in the date, description, amount, envelope, and account.
3. Tap **Add Transaction**. It shows in the list right away and saves to your Google Sheet in the background.

{% include figure class="phone-screenshot" image_path="/assets/images/companion-add-transaction.jpg" alt="Add Transaction form" caption="Adding a transaction from the side panel on desktop" %}

---

## Search and Filter <span class="badge-updated"><i class="fas fa-pen" aria-hidden="true"></i> Updated</span>
{: #search-and-filter}

Type in the search box to match a transaction's description, envelope, account, amount, date, or tags.

For more, tap the **⌄** chevron. The search box moves to its own line and a filter card opens below it:

| Filter | What it does |
|---|---|
| **Envelope** (Tiller: **Category**) | Show only one envelope's transactions. |
| **Account** | Show only one account's transactions. |
| **Tag** | Show only transactions with a certain tag. |
| **Dates** | Show only transactions from one date to another. Leave either end empty to keep it open. |
| **Clear filters** | Remove every filter. The card also shows how many transactions match. |

While the filter card is open, the search box matches descriptions only. Use the filters for the rest.

**Filter chips.** Close the card and each filter you've set shows as a small chip above the list, for example **Groceries ✕** or **11/1/26 – 11/30/26 ✕**. Tap a chip to remove just that filter, or **Clear** to remove them all. The Transactions tab icon also gets a small red search badge, so you can tell from any tab that the list isn't showing everything.
{: .notice--info}

---

## Categorize Transactions <span class="badge-updated"><i class="fas fa-pen" aria-hidden="true"></i> Updated</span>
{: #categorize-transactions}

Transactions that still need an envelope show a dashed **Choose envelope** pill (Tiller sheets: **Choose category**). Tap it to pick an envelope from the Recent, Frequent, Expense, Income, or Transfer tabs. The change shows straight away and saves in the background.

When any transaction needs an envelope, a card at the top of the list shows how many. Tap **Review** to see only those transactions, or **✕** to hide the card.

{% include figure class="phone-screenshot" image_path="/assets/images/companion-transaction-categorization.jpg" alt="Envelope picker for categorizing a transaction, organized into Recent, Frequent, Expense, Income, and Transfer tabs" caption="Assigning an envelope to a transaction" %}

---

## Learn More

- [Categorizing Transactions](/ue26/categorize-transactions/): suggested envelopes, confidence scores, and the full walkthrough
- [Split Transaction](/ue26/split-transaction/): split one transaction across several envelopes
- [Merchant Logos](/ue26/companion-settings/#merchant-logos): add logos for merchants the app doesn't recognize
