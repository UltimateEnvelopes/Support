---
layout: single
title: "Setting Your Starting Balance"
description: "Make the money you have to fund match your bank balance before you fund your envelopes the first time."
permalink: /ue26/starting-balance/
toc: true
toc_label: "On This Page"
---

Setting a starting balance accounts for the difference between what's in your bank account today and what's in your envelopes. Do it once, before you fund your envelopes for the first time.

Here's how it works:

1. **Your envelopes are effectively zeroed out.** You start from a clean slate.
2. **Your current bank balance becomes your starting funding amount.** This is the money you have to put into envelopes.
3. **You fill your envelopes with it for the first time.**

There are two ways to do it. Both add the same starting-balance transaction:

- **[Use the Startup Wizard](#method-1-use-the-startup-wizard) (recommended).** It finds your balances, does the math, and adds the transaction for you.
- **[Do it manually](#method-2-do-it-manually).** You look up two numbers, subtract, and add the transaction yourself. This is handy if you don't use Tiller or want to see exactly what's happening.

## Before you start

These steps are the same for both methods.

1. **Bring in your transactions.** Connect Tiller and use **Fill**, or enter or import them yourself.
2. **Categorize every transaction.** Uncategorized transactions aren't counted, so the starting balance would come out wrong. See [How Transactions Affect Your Envelopes](/ue26/sheet-reference/#how-transactions-affect-your-envelopes).
3. **Make sure today's bank balances are in the sheet.** With Tiller, refresh your accounts. The wizard can't use an account that wasn't updated today.

After categorizing, some envelopes may show odd or negative balances. That's normal at this point. The starting balance accounts for them.
{: .notice--info}

---

## Method 1: Use the Startup Wizard

In the [Startup Wizard](/ue26/startup-wizard/), choose **Set Initial Payday Amount**, or open it on its own from **Extensions → Ultimate Envelopes → Setup Tools → Set Starting Balance**.

1. **Step 1 – Refresh Accounts.** If you still need to update your balances, click **Go to Tiller**.
2. **Step 2 – Select Funding Account.** Pick the account your paychecks land in, usually checking. You'll see its bank balance, its total envelope balance, and how many transactions are still uncategorized.

{% include figure image_path="/assets/images/starting-balance-wizard-account.jpg" alt="Set Initial Payday Amount Step 2 showing the selected account's bank balance, total envelope balance, and uncategorized count" caption="Step 2: pick your funding account" %}
3. **Step 3 – Select liability accounts.** Check any credit cards you pay from this account. Their balances are counted so the starting balance accounts for what you already owe.
4. **Step 4 – Review Balance Adjustment.** The wizard shows the **Adjustment Amount**: your bank balance (including any cards you checked) minus your total envelope balance. You can change the amount if you need to. Then click **Update Initial Amount**.

{% include figure image_path="/assets/images/starting-balance-wizard-review.jpg" alt="Set Initial Payday Amount Step 4 showing bank balance, envelope balance, and the adjustment amount" caption="Step 4: review the adjustment" %}

When you see **Starting Balance Set**, you're done. Have paychecks landing in more than one account? Click **Set Another Account** and repeat for each one.

### What the wizard adds to your sheet

One transaction on the **Transactions** sheet:

- **Description:** Adjust Funding Balance
- **Category:** Initial balance (added to your Categories sheet as an **Income** category if you don't have it)
- **Date:** the day before your oldest transaction, so it doesn't land in your current budget month
- **Amount:** the adjustment from Step 4

Already have an **Initial balance** category? It's reused as-is. Make sure its **Type** is **Income**, or the amount won't count toward Available to Fund. The wizard warns you if it isn't.
{: .notice--warning}

---

## Method 2: Do It Manually

### 1. Find your two numbers

Open the **Balances** tab and find the account your paychecks land in, usually checking. Note its:

- **Bank Balance:** what's in the account today
- **Envelope Balance:** what UE thinks is in your envelopes for that account

Pay a credit card from this account? Add that card's **Bank Balance** too. Card balances are negative, so this lowers your starting balance by what you already owe.

{% include figure image_path="/assets/images/starting-balance-balances-tab.jpg" alt="Balances tab with the Bank Balance and Envelope Balance columns for a checking account highlighted" caption="Find your Bank Balance and Envelope Balance" %}

### 2. Work out the adjustment

**Bank Balance** (plus any card balances) **− Envelope Balance = Adjustment Amount**

For example, if checking has **$3,500.00**, your Visa shows **−$400.00**, and the Envelope Balance is **−$1,250.00**:

$3,500.00 + (−$400.00) − (−$1,250.00) = **$4,350.00**

### 3. Make sure you have an income category for it

On the **Categories** sheet, add a category named **Initial balance** with **Type** set to **Income**, if you don't already have one. It has to be an Income category, or the amount won't count toward Available to Fund.

### 4. Add the transaction

On the **Transactions** sheet, add a new row:

- **Date:** the day before your oldest transaction. For example, if your transactions start on 1/1/2026, use 12/31/2025. This keeps it out of your current budget month.
- **Description:** Adjust Funding Balance
- **Category:** Initial balance
- **Amount:** your adjustment amount from step 2
- **Account:** the account from step 1

{% include figure image_path="/assets/images/starting-balance-transaction.jpg" alt="Transactions sheet with an Adjust Funding Balance row in the Initial balance category" caption="The starting-balance transaction" %}

Open the **Payday** tab. The amount left to allocate now includes your starting balance.

Have paychecks landing in more than one account? Repeat these steps for each one.

---

## Made a Mistake?

Delete the **Adjust Funding Balance** row on the Transactions sheet, then use either method again.

**Next:** [fund your envelopes for the first time](/ue26/sheet-reference/#funding-your-envelopes-for-the-first-time).
