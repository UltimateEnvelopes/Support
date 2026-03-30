---
layout: default
title: Changelog
parent: UE 26
nav_order: 3
---

{% capture changelog_content %}
{% include_relative ../CHANGELOG.md %}
{% endcapture %}
{{ changelog_content | remove_first: "---" | markdownify }}
