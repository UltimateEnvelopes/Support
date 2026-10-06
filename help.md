---
layout: single
title: "Documentation"
description: "Every Ultimate Envelopes page in one list, grouped by product."
permalink: /help/
toc: false
---

Find instructions for each part of Ultimate Envelopes. Questions? Email [support@ultimateenvelopes.com](mailto:support@ultimateenvelopes.com).

{% comment %}
  Built from the Documentation group of the "docs" sidebar in _data/navigation.yml, so new pages show up
  here once they're added to the sidebar. Each line's summary comes from that
  page's `description` front matter.
{% endcomment %}
{% assign docs_group = site.data.navigation.docs | where: "title", "Documentation" | first %}{% for product in docs_group.children %}{% if product.children %}
## [{{ product.title | strip_html | remove: "(Now Available)" | remove: "(Coming Soon)" | strip }}]({{ product.url }})

{% assign overview = site.pages | where: "url", product.url | first %}{% if overview.description %}{{ overview.description }}
{% endif %}
<ul class="help-list">
{% for child in product.children %}{% assign p = site.pages | where: "url", child.url | first %}
  <li>
    <a href="{{ child.url }}">{{ child.title | strip_html | remove: "(Now Available)" | remove: "(Coming Soon)" | strip }}</a>{% if p.description %}<span class="help-list__desc">{{ p.description }}</span>{% endif %}
    {% if child.children %}<ul>{% for g in child.children %}{% assign gp = site.pages | where: "url", g.url | first %}
      <li><a href="{{ g.url }}">{{ g.title | strip_html | remove: "(Now Available)" | remove: "(Coming Soon)" | strip }}</a>{% if gp.description %}<span class="help-list__desc">{{ gp.description }}</span>{% endif %}</li>{% endfor %}
    </ul>{% endif %}
  </li>{% endfor %}
</ul>
{% endif %}{% endfor %}

## More Help

<ul class="help-list">
{% assign more = "/videos/,/faq/,/pricing/" | split: "," %}{% for u in more %}{% assign p = site.pages | where: "url", u | first %}
  <li><a href="{{ u }}">{{ p.title }}</a><span class="help-list__desc">{{ p.description }}</span></li>{% endfor %}
</ul>

## Policies

<ul class="help-list">
{% assign legal = "/privacy/,/terms/,/license/" | split: "," %}{% for u in legal %}{% assign p = site.pages | where: "url", u | first %}
  <li><a href="{{ u }}">{{ p.title }}</a><span class="help-list__desc">{{ p.description }}</span></li>{% endfor %}
</ul>
