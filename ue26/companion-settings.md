---
layout: single
title: "Settings Tab"
description: "Colors, text size, starting tab, merchant logos, and your sheet connection."
permalink: /ue26/companion-settings/
toc: true
toc_label: "On This Page"
---

Make the app look and work the way you like. Settings live in two places:

- **The Settings tab** (this page) for app-wide choices: colors, text size, which tab opens first, and your sheet connection.
- **Each tab's own settings** for what that screen shows. Tap the tab again in the tab bar to open its tools panel, then **More Settings**. See [Envelope Settings](/ue26/companion-envelopes/#envelope-settings) and [Balance Settings](/ue26/companion-balances/#balance-settings).

---

## App Settings

Tap **Settings** at the right end of the tab bar.

{% include figure class="phone-screenshot" image_path="/assets/images/companion-settings-tab.jpg" alt="Settings tab with palette, theme, and font size icons at the top, then Starting Tab, Transaction Record Limit, Merchant Logos, Sheet Connection, and the cache date at the bottom" caption="The Settings tab" %}

The three icons at the top right of the Settings card:

| Icon | What it does |
|---|---|
| **Palette** | Pick the accent color used for buttons and highlights. |
| **Sun** (Theme) | **Light Mode**, **Dark Mode**, or **System** (follows your phone or computer's setting and switches automatically). |
| **AA** (Font size) | **Small**, **Default**, **Large**, or **Extra Large**. |

Below them:

| Setting | What it does |
|---|---|
| **Starting Tab** | The tab the app opens to: **Home** (the Insights tab), **Envelopes**, **Balances**, **Transactions**, or **Payday**. |
| **Transaction Record Limit** | How many recent transactions the app loads: **1000**, **2500**, or **5000**. Higher shows more history but loads more slowly. |
| **Merchant Logos** | Tap **Update Logos** to add logos for merchants that don't have one yet. See [Merchant Logos](#merchant-logos) below. |
| **Sheet Connection** | Shows which sheet the app is connected to. Tap **Change Connected Sheet** to switch to a different one. |
| **Cache last updated** | At the bottom left: when the app last read your sheet fresh. See [How the App Loads Your Data](#how-the-app-loads-your-data). |

These choices are saved with your app, so they're the same on every device.

Looking for the Tiller shortcut? It moved to the **ⓘ** menu at the bottom right of the footer, next to **Help & Docs**, on every tab except Settings. See [Help Inside the App](/ue26/companion-app/#help-inside-the-app-now-available).
{: .notice--info}

<div class="screenshot-grid">
{% include figure class="phone-screenshot" image_path="/assets/images/companion-settings-accent-color.jpg" alt="Settings page with an accent color picker open" caption="Personalizing the accent color" %}
{% include figure class="phone-screenshot" image_path="/assets/images/companion-dark-mode.jpg" alt="Companion app in dark mode" caption="Dark Mode works across all tabs" %}
</div>

---

## How the App Loads Your Data <span class="badge-new"><i class="fas fa-star" aria-hidden="true"></i> New</span>
{: #how-the-app-loads-your-data}

The app opens quickly by showing the data it saved on your device last time, then checks your sheet for anything newer. What happens depends on how old that data is:

| Your data was last read from the sheet | What you see |
|---|---|
| **Less than 30 minutes ago** | Your data appears straight away, with a green **Viewing recent cached data** message at the bottom. Nothing is reloaded. |
| **30 minutes to a day ago** | Your data appears straight away, with **Showing cached data - refreshing…** at the bottom while the app reads your sheet. Each screen updates as the new numbers arrive, then the message says **Up to date**. |
| **More than a day ago**, or this device hasn't opened the app before | **Loading data…** while the app reads your sheet. |

The age comes from **Cache last updated** at the bottom of the Settings tab: the last time the app read your sheet fresh, from any of your devices. Each phone or computer keeps its own copy of what it showed you, so if another device has read newer data since, yours refreshes in the background.

**What loads first.** Envelopes, Balances, your newest 500 transactions and Payday load first, so every tab opens quickly. The rest of your transactions (up to your **Transaction Record Limit**) follow, with **Loading older transactions…** at the bottom of the screen.

**Refresh button.** The ↻ button at the bottom left always reloads everything fresh from your sheet. Use it after you've changed your sheet directly.

**Changing the month.** The app reloads that month's data. Payday shows **Loading Payday data…** until the new month's numbers are in.

The saved copy is kept in your browser on each device. Private windows, and browsers set to block site data, don't keep it, so the app reads your sheet each time you open it there.
{: .notice--info}

---

## Merchant Logos

The app shows a logo next to transactions from merchants it recognizes. Teach it the ones it's missing by matching each merchant to its website.

1. On the **Settings** tab, tap **Update Logos**.
2. The **Merchant Mappings** panel lists your most frequent merchants that don't have a logo yet (up to 20, each with at least 2 transactions).
3. For each merchant, either:
   - **Type its website** (for example, `cinemark.com`). The logo appears next to the name so you can check it's right.
   - Tap **Ignore** for merchants that don't need a logo. They won't be suggested again.
4. Tap **Save Selected**.

{% include figure class="phone-screenshot" image_path="/assets/images/companion-merchant-mappings.jpg" alt="Merchant Mappings panel listing merchants with website fields and Ignore buttons, plus Save Selected and Clear" caption="Type a website to add a logo, or tap Ignore" %}

**Don't see a merchant in the list?** Use **Add Manual Entry** at the top of the panel. Enter a word from the transaction description (for example, `starbucks`) and the website (`starbucks.com`), then tap **Add**.

- **Clear** empties the websites you've typed but haven't saved. Ignored merchants stay ignored.
- Keywords need at least 3 characters, so they don't match too many transactions.
- If you see **No new merchants to add!**, every frequent merchant already has a logo or has been ignored.

Your mappings are saved in a **MerchantMappings** tab in your budget sheet (columns: Keyword, Domain, Date Added). You can edit or delete rows there directly. To match several spellings to one logo, put them in one cell separated by commas.
{: .notice--info}
