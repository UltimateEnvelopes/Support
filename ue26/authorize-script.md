---
layout: single
title: "Authorizing the Script"
permalink: /ue26/authorize-script/
toc: true
toc_label: "On This Page"
---

The first time you open your copy, a **Read Me First** sheet walks you through authorizing the Apps Script that powers Ultimate Envelopes. You must complete this before the [Startup Wizard](/ue26/startup-wizard/) will run.

1. Open **Extensions → Apps Script** to enter the script editor, and select the top file named `RunFirst.gs`.
2. Run the `runFirst` function.
3. Google will show an authorization prompt.
4. Click the link at the bottom of the pop-up — it says "Unsafe," but it's safe.
5. Choose the account you want to authorize, then click **Authorize**.
6. Once the script finishes running, refresh your sheet — the Startup Wizard will run automatically.

The Read Me First sheet hides itself once the script has run.
