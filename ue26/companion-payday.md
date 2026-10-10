---
layout: single
title: "Payday Tab"
description: "Fund your envelopes when you get paid, and manage funding templates."
permalink: /ue26/companion-payday/
toc: true
toc_label: "On This Page"
---

When you get paid, use the Payday tab to give every dollar a job. Enter how much goes into each envelope, then fund them all at once.

Payday funding is available when the app is connected to a UE Sheet. It doesn't apply to Tiller Foundation sheets.
{: .notice}

---

## The Payday Screen

At the top, two numbers keep you on track:

- **Available to Fund:** income that hasn't been put into envelopes yet.
- **Remaining to Fund:** how much your envelopes still need. It counts down to $0.00 as you enter amounts.

When everything is covered, you'll see **Congrats! All money has been allocated!**

Envelopes are grouped by their funding account. Tap an account to open it, or use **+** / **−** to open or close them all. Each account's header shows how much its envelopes still need.

{% include figure class="phone-screenshot" image_path="/assets/images/companion-payday-overview.jpg" alt="Payday tab showing Available to Fund and Remaining to Fund, Show Payday Controls, and envelopes grouped by funding account" caption="The Payday tab" %}

---

## Each Envelope

{% include figure class="phone-screenshot" image_path="/assets/images/companion-payday-envelope.jpg" alt="Eating Out envelope on the Payday tab with funding amount box, plus-minus button, progress bar, balance, budget, funded, remaining, and notes" caption="An envelope on the Payday tab" %}

- **Funding amount:** type how much to add.
  - Use **±** to make it negative and take money *out* of the envelope.
  - You can type simple math, like `250+75`, and it's worked out for you.
- **Under the name:** how much the envelope still needs to be fully funded, or **Fully Funded** once it's covered.
- **Progress bar and numbers:** the envelope's **Balance**, **Budget**, **Funded** so far this month, and **Remaining** to fund.
- **Notes:** add a comment. It's saved with the funding in your sheet's Funding Transactions.

---

## Fund Your Envelopes

1. Enter amounts for the envelopes you want to fund, or apply a [funding template](#funding-templates).
2. Check the **Funding Date**. It defaults to today (or the 1st, if you're viewing a future month).
3. Tap **Fund Envelopes** at the bottom of the screen.

The amounts are saved to your sheet's **Funding Transactions**, and your envelope balances update.

---

## Payday Controls

Tap **Show Payday Controls** to open them.

{% include figure class="phone-screenshot" image_path="/assets/images/companion-payday-controls.jpg" alt="Payday Controls with Funding Templates dropdown, Funding Date, and Sweep Eligible Envelopes button" caption="Payday Controls" %}

| Control | What it does |
|---|---|
| **Funding Templates** | Pick a saved template to fill in amounts for a specific paycheck or account. |
| **Funding Date** | The date the funding is recorded on. |
| **Sweep Eligible Envelopes** | Fills in amounts that bring every sweep-enabled envelope back to $0.00. |

### Sweeping Envelopes

Sweeping empties an envelope's leftover balance (or covers its overspending) so it starts fresh. It works on envelopes that have **Sweep** turned on.

- **One envelope:** tap the broom icon next to its name.
- **All of them:** tap **Sweep Eligible Envelopes**.

A note like *"Swept $-25.00 on …"* is added automatically. Tap the broom again to undo before you fund.

---

## Funding Templates

Templates save the amounts you usually give each envelope, for example one per paycheck. Pick one under **Payday Controls** to fill in its amounts, then adjust anything before you fund.

Using [Budget Tools](/ue26/budget-tools/) in your sheet? Then the app isn't limited to the sheet's four templates:

- The list shows your four sheet templates first, then every other template under **More templates**.
- Template amounts can change from month to month. The amounts filled in are the ones for the month of your **Funding Date**.

### Edit a Template

1. Tap **Payday** in the tab bar again, then tap **Edit Templates**.
2. Choose the template to edit (for example, **Paycheck 1**, **Paycheck 2**).
3. Change the amounts. Each account header shows how many envelopes have an amount and the total.
4. Tap **Save Template**. To leave without saving, tap **×**.

{% include figure class="phone-screenshot" image_path="/assets/images/companion-payday-edit-templates.jpg" alt="Editing template screen with Paycheck 1, Paycheck 2, Chase, and Savings template chips, and envelope amounts grouped by account" caption="Editing a funding template" %}

Editing a template only changes its saved amounts. Nothing is funded until you use the template on the Payday screen and tap **Fund Envelopes**.
{: .notice--info}

On a sheet using [Budget Tools](/ue26/budget-tools/), template changes start from the sheet's budget month. Earlier months keep their amounts. To change a template from a different month, use **Budget & Templates** in an [envelope's details](/ue26/companion-envelopes/#budget--templates).

### Add a Template

*Available on sheets using [Budget Tools](/ue26/budget-tools/).*

1. In **Edit Templates**, tap **+ New Template** at the end of the template list.
2. Type a name and tap **Add** (or press Enter).
3. Enter amounts for the envelopes that should get money from it.
4. Tap **Save Template**. The new template now appears in the **Funding Templates** list.

A new template is only kept once it has at least one amount saved.

### Retire or Delete a Template

*Available on sheets using [Budget Tools](/ue26/budget-tools/), for templates other than the sheet's four.*

- **Retire:** set every amount to $0.00 and tap **Save Template**. The template disappears from the Payday list but its history is kept. In Edit Templates it moves to the end of the list, faded. Enter amounts again to bring it back.
- **Delete:** once a template's amounts are all saved at $0.00, its **🗑 Delete** button turns on. Tap it, then **Delete** to confirm. The template and its history are removed for good.

The sheet's four templates can't be deleted from the app. To stop using one, pick a different template for that column in the sheet. See [Budget Tools](/ue26/budget-tools/#choose-which-four-templates-the-sheet-shows).
{: .notice}
