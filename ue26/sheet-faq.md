---
layout: single
title: "UE Sheet FAQ"
permalink: /ue26/sheet-faq/
toc: true
toc_label: "Topics"
sitemap: false
search: false
---

Questions about the Google Sheet. For the mobile app, see the [Companion App FAQ](/ue26/companion-faq/).

---

## Getting Started

### Do I need a Tiller subscription to use Ultimate Envelopes?

No. UE includes both a standard version and a Tiller version. The standard version works without Tiller — you enter transactions manually or import them yourself. The setup screen lets you choose which version to use.

### What do I need to get started?

- A Google account (free)
- Google Sheets (free, included with Google)
- Your UE sheet, available on [Gumroad](https://ultimateenvelopes.gumroad.com/l/2026)

That's it. No additional installs, no subscriptions.

### How do I get my copy of the sheet?

After purchasing on Gumroad, you'll receive a link to the Google Sheet template. Open it, then go to **File → Make a copy** to save it to your own Google Drive. The copy is yours permanently.

---

## The Sheet

### Does my financial data leave Google Sheets?

No. All processing happens inside your browser and within Google's infrastructure. Your transaction amounts, account balances, and budget data are never sent to external servers.

### Can I use the sheet on multiple devices?

Yes. Because your budget lives in Google Sheets, you can open it from any device with a browser.

---

## Transactions

### How do I add transactions without Tiller?

Type them into the **Transactions** tab: description, amount, category (envelope), and account. You can also add them from your phone with the [Companion App](/ue26/companion-app/).

### Can I import transactions from a CSV?

Manual CSV import depends on your sheet setup. For automatic importing, Tiller is the recommended option.

---

## Credit Cards

### How do I categorize a credit card payment?

A credit card payment isn't an expense — it's just moving money from your bank to pay off things you already bought (and already took out of your envelopes).

1. Create a category like **Credit Card Payment** with **Type = Transfer** (or use the built-in **Transfer** category).
2. Give **both sides** of the payment that category — the withdrawal from your bank *and* the payment received on the card.

{% include figure image_path="/assets/images/faq-cc-payment-category.jpg" alt="Categories sheet showing a Credit Card Payment category with Type set to Transfer" caption="Set the payment category's Type to Transfer" %}

Paying interest? Create an **Expense** envelope for credit card interest and budget for it like any other bill.
{: .notice}

### How do I track what I owe on my credit cards?

When you buy something with a card, the envelope goes down but your bank balance doesn't. The money stays in the bank, set aside for the card bill.

On the **Balances** tab, the **Delta** between your **Bank Balance** and **Envelope Balance** is that set-aside money. It should match what you owe on your cards.

### I already have a balance on my card. How do I start?

Use **Extensions → Ultimate Envelopes → Setup Tools → Set Starting Balance**. In **Step 3**, check the credit cards tied to that bank account and it'll account for what you already owe when it sets your starting balance.

---

## Envelopes & Funding

### How do I move money from one envelope to another?

Say you want to move $100 from **Shopping** to **Groceries**. On the **Payday** tab:

1. Enter **-100** in the **Fund Amount** next to Shopping.
2. Enter **100** next to Groceries.
3. Add a comment if you want — it's saved with the funding history.
4. Choose **Select Action → Fund Envelopes**.

{% include figure image_path="/assets/images/faq-envelope-transfer.jpg" alt="Payday tab with -100 next to Shopping and 100 next to Groceries" caption="Moving $100 from Shopping to Groceries" %}

### What is a funding account?

It's the bank account where an envelope's money actually sits. For example, Groceries money in **Checking**, car insurance money in **Savings**.

Set it in the **Funding Account** column on the **Categories** sheet.

{% include figure image_path="/assets/images/faq-funding-account.jpg" alt="Funding Account dropdown on the Categories sheet" caption="Choose a Funding Account for each envelope" %}

Only set funding accounts on **expense** categories. Adding one to an Income category will throw off your account balances.
{: .notice--warning}

### My account isn't in the Funding Account dropdown

The list only shows accounts that aren't hidden. Go to the **Accounts** sheet and make sure the account isn't marked as hidden.

### Why does every envelope need a funding account?

Two reasons:

- **View by Account** on the Envelopes tab groups envelopes by their funding account.
- The **Balances** tab uses it to check that each bank account's balance matches the envelopes it holds. If they don't match, you'll see a warning.

### Does the funding account decide how much I can fund?

No. The money you can put into envelopes comes from **income transactions** — anything categorized with **Type = Income**, like a paycheck. As soon as you categorize a paycheck, that money is available to fund.

---

## Tiller

### What is Tiller?

[Tiller Money](https://www.tillerhq.com) is a separate service that connects to your bank accounts and automatically imports your transactions into Google Sheets. Ultimate Envelopes can use this transaction data when you choose the Tiller version.

### What if I use Tiller?

UE is fully compatible with the Tiller Foundation Sheet. All existing Tiller feeds will operate as expected.

Tiller imports your bank transactions automatically. You then categorize them in the **Transactions** tab by assigning each one to an envelope.

### Why isn't UE listed on Tiller's Template section of the add-on?

Tiller does not support the use of Google Apps Script in templates it hosts, so Ultimate Envelopes has to be hosted somewhere else.

### Who do I contact for Tiller issues?

Tiller is an independent service. For issues with transaction imports, bank connections, or Tiller's feeds, contact [Tiller support](https://www.tillerhq.com/support/) directly.

---

## More Help

- [What's changed in each Sheet version](/ue26/sheet-changelog/)
- [Pricing and support options](/faq/)
