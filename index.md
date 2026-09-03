---
layout: splash
title: "Ultimate Envelopes"
permalink: /
header:
  overlay_color: "#1a4731"
  side_image: "/assets/images/sheet-envelopes-overview.jpg"
  actions:
    - label: "Get the Sheet"
      url: "https://ultimateenvelopes.gumroad.com/l/2026"
excerpt: >
  Envelope budgeting built entirely in Google Sheets.
  Your data stays in your spreadsheet — no external servers, no lock-in.
feature_row:
  - title: "Ultimate Envelopes 2026"
    excerpt: "Envelopes, transactions, account balances, and a Payday funding workflow — all in a Google spreadsheet you own forever."
    url: "/ue26/google-sheet/"
    btn_label: "Learn More"
    btn_class: "btn--primary"
  - title: "UE 2026 Companion"
    excerpt: "A mobile-friendly browser app for your budget. Add transactions and check balances from any device — no install needed."
    url: "/ue26/companion-app/"
    btn_label: "Learn More"
    btn_class: "btn--primary"
  - title: "FAQ"
    excerpt: "Common questions about setup, Tiller integration, the companion app, and how your data is handled."
    url: "/faq/"
    btn_label: "Browse FAQ"
    btn_class: "btn--inverse"
feature_row_tiller:
  - title: "Works With or Without Tiller"
    excerpt: >
      Choose the **standard version** and enter transactions manually,
      or use the **Tiller version** to have your bank transactions imported automatically.
      Both versions are included with every purchase.
    url: "https://www.tillerhq.com"
    btn_label: "Learn About Tiller"
    btn_class: "btn--inverse"
feature_row_privacy:
  - title: "Your Data Never Leaves Google"
    excerpt: >
      All processing happens inside your browser and within Google Sheets.
      Transaction amounts, balances, and budget data are never sent to external servers.
      Your spreadsheet is yours — delete the add-on and everything stays in your Drive.
feature_row_mobile:
  - title: "Built for Mobile"
    excerpt: >
      The companion app is optimized for phone use. Add it to your home screen
      for one-tap access — works on iPhone and Android with no App Store required.
    url: "/ue26/companion-app/#installing-to-your-home-screen"
    btn_label: "How to Install"
    btn_class: "btn--inverse"
---

{% include feature_row %}

## See It in Action

<div class="video-grid">
  <div class="video-item">
    <h3>Envelope Balances</h3>
    {% include video id="Ff9TOTuwgpg" provider="youtube" %}
  </div>
  <div class="video-item">
    <h3>Account Balances Overview</h3>
    {% include video id="mTcKWrYdGgY" provider="youtube" %}
  </div>
  <div class="video-item">
    <h3>Using Tracker</h3>
    {% include video id="vxsIE_s_jGw" provider="youtube" %}
  </div>
</div>

<div style="text-align: center; margin-bottom: 3rem;">
  <a href="/videos/" class="btn btn--primary">View All Videos</a>
</div>

{% include feature_row id="feature_row_tiller" type="left" %}

{% include feature_row id="feature_row_privacy" type="right" %}

{% include feature_row id="feature_row_mobile" type="left" %}
