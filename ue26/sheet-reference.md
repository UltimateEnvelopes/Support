---
layout: single
title: "Sheet Reference"
description: "Connecting Tiller, how transactions affect envelopes, first-time funding, and the Categories sheet columns."
permalink: /ue26/sheet-reference/
toc: true
toc_label: "On This Page"
---

A quick reference for the parts of the Sheet you'll set up once and then come back to now and then: connecting Tiller, how transactions affect your envelopes, funding your envelopes for the first time, and what each column on the Categories sheet does.

New to Ultimate Envelopes? Start with [Getting Started](/ue26/getting-started/) and the [Startup Wizard](/ue26/startup-wizard/) first.
{: .notice--info}

---

## Connecting Tiller (Optional)

Tiller Money Feeds pulls your bank transactions and balances into the Sheet every day, so you don't have to type them in yourself. Ultimate Envelopes works without it, but it works best with it.

### 1. Install the Tiller Money Feeds add-on

In your Sheet, go to **Extensions → Ultimate Envelopes → Setup Tools → Install Tiller Money Feeds**, then click **Install Add-on Directly**.

Tiller has a free 30-day trial. After that it's a paid Tiller subscription, billed by Tiller — not by Ultimate Envelopes.

{% include figure image_path="/assets/images/reference-tiller-install.jpg" alt="Install Tiller Money Feeds prompt with Go to Tiller.com and Install Add-on Directly buttons" caption="Install Tiller Money Feeds" %}

### 2. Launch Tiller and link your Sheet

1. Go to **Extensions → Tiller Money Feeds → Launch**
2. Click **Link Sheet**

{% include figure image_path="/assets/images/reference-tiller-launch.jpg" alt="Extensions menu showing Tiller Money Feeds and the Launch option" caption="Extensions → Tiller Money Feeds → Launch" %}

{% include figure image_path="/assets/images/reference-tiller-link-sheet.jpg" alt="Tiller Money Feeds sidebar with the Link Sheet button" caption="Click Link Sheet" %}

Need help with bank connections or Tiller's feeds? Tiller is a separate service — contact [Tiller support](https://www.tillerhq.com/support/) directly.
{: .notice}

---

## How Transactions Affect Your Envelopes

Every transaction needs a category. The category's **Type** decides what happens:

| Type | Example | Available to Fund | Envelope balance |
|---|---|---|---|
| **Income** | Paycheck | Goes up | No change |
| **Expense** | Groceries | Goes down | Goes down |
| **Transfer** | Credit card payment | No change | No change |

Uncategorized transactions don't count toward anything yet — check the Envelopes tab to see how many still need a category.
{: .notice--warning}

---

## Funding Your Envelopes for the First Time

Funding means giving each envelope its share of the money you have. You'll do this every payday, and the first time takes about five minutes.

Before you start, categorize your transactions and [set your starting balance](/ue26/starting-balance/).
{: .notice--info}

### 1. See how much you have to fund

Open the **Payday** tab. The top of the tab shows how much money is still **left to allocate**.

{% include figure image_path="/assets/images/reference-fund-available.jpg" alt="Payday tab showing the amount left to allocate" caption="How much is left to allocate" %}

### 2. Enter how much goes into each envelope

Below that is a list of all your envelopes. For each one, type an amount in the **Fund Amount** column. The helper columns show how much you've already funded this month and how much is still needed to reach the budget.

{% include figure image_path="/assets/images/reference-fund-amounts.jpg" alt="Payday tab envelope list with Fund Amount column filled in" caption="Enter a Fund Amount for each envelope" %}

**Shortcut:** pick a funding template (e.g. *Paycheck 1*) from the **Select Template** dropdown to fill in every amount at once. Click **Yes** when it asks to fill the envelopes now.
{: .notice--success}

### 3. Set the funding date

The **Funding Date** is when the money shows up in your envelopes.

{% include figure image_path="/assets/images/reference-fund-date.jpg" alt="Funding Date cell on the Payday tab" caption="Set the Funding Date" %}

You can type in any date you like. If you don't, UE fills in a default based on the month picked in **Select Budget Month** at the top of the Envelopes tab:

- **This month:** today's date.
- **A future month:** the 1st of that month.
- **A past month:** today's date.

The default updates whenever you change the budget month, and resets after you fund.

### 4. Fund your envelopes

From the **Select Action** dropdown, choose **Fund Envelopes**. When you see *Envelopes Have Been Filled*, click **OK**.

{% include figure image_path="/assets/images/reference-fund-action.jpg" alt="Select Action dropdown with Fund Envelopes highlighted" caption="Select Action → Fund Envelopes" %}

That's it — your envelopes are funded. Each amount is recorded on the [Funding Transactions](#funding-transactions-sheet) sheet.

Made a mistake before funding? Choose **Clear Values** from **Select Action** to start over.
{: .notice}

---

## Categories Sheet Columns

Ultimate Envelopes uses Tiller's standard Categories sheet, plus a few extra columns of its own. Each row on this sheet is one envelope.

{% include figure image_path="/assets/images/reference-categories-sheet.jpg" alt="Categories sheet with the Ultimate Envelopes columns highlighted" caption="The Categories sheet — Ultimate Envelopes columns highlighted" %}

### Funding Account

The bank account where this envelope's money actually sits.

*Example:* Groceries money lives in Checking, while your annual car insurance money lives in Savings.

### Hide From Funding

Hides the category from the Envelopes and Payday tabs while keeping it available everywhere else.

*Example:* Hide Income and Investment categories if you don't budget them as envelopes.

### Favorite

Mark the handful of envelopes you check all the time. Pick **View Favorites** from the view menu on the Envelopes tab to see just those.

{% include figure image_path="/assets/images/reference-favorites-view.jpg" alt="Envelopes tab filtered to show only Favorite envelopes" caption="View Favorites" %}

### Sweep

Lets this envelope be **swept** — its leftover balance is cleared out so you can put that money toward other envelopes.

Sweeping only changes balances in the Sheet. It doesn't move any real money between bank accounts.
{: .notice--info}

### Savings Target

A goal amount for the envelope. Envelopes with a target show a money-bag icon on the Envelopes tab.

*Example:* Saving $2,000 for a car insurance bill? Enter `2000`.

To see your progress, expand the Envelopes section and set **Select View** to **Saving**. Next to each envelope you'll see its **Savings Target**, **Time to Target**, **% of Target**, and **Remaining to Target**.

{% include figure image_path="/assets/images/reference-savings-target.jpg" alt="Envelopes tab expanded with Select View set to Saving, showing Savings Target, Time to Target, % of Target, and Remaining to Target for each envelope" caption="Select View → Saving shows progress toward each target" %}

### Funding Templates (4 columns)

Preset amounts for funding many envelopes at once from the Payday tab. Name them whatever fits how you're paid — *Paycheck 1*, *Paycheck 2*, *Monthly*, and so on.

{% include figure image_path="/assets/images/reference-funding-templates.jpg" alt="Categories sheet funding template columns with example amounts" caption="Funding template columns" %}

### Monthly Budget Columns

How much you plan to **put into** each envelope that month — not how much you plan to spend.

Use **Extensions → Ultimate Envelopes → Budget Tools** to update budgets, bulk-edit envelopes, or add a new envelope without editing the sheet directly.
{: .notice--success}

---

## Funding Transactions Sheet

Every time you fund, transfer, or sweep an envelope, a row is added here. Envelope balances are calculated from this sheet, so it's a full history of when and why each envelope changed.

{% include figure image_path="/assets/images/reference-funding-transactions.jpg" alt="Funding Transactions sheet listing funding entries by category" caption="Funding Transactions sheet" %}

The **Date** column is the *funding date* — the day the money becomes available in the envelope. Set it in the future to fund next month's envelopes early. Using the Payday tab is the easiest way to do this.

Editing or deleting rows here changes your envelope balances. Use the Payday tab instead whenever you can.
{: .notice--warning}

---

## Behind-the-Scenes Sheets

**Envelope Calculations**, **Account Calculations**, and **Sheet References** hold the formulas that power everything else. They're usually hidden.

Don't edit these sheets. If something looks off, try **Extensions → Ultimate Envelopes → Admin Tools → Refresh Formulas** first, then [email support](mailto:support@ultimateenvelopes.com).
{: .notice--danger}
