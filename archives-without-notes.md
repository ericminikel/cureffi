---
layout: page
title: Archives
permalink: /archives-without-notes/
---

<p class="meta"><a href="/archives/">everything</a> &middot; no notes</p>

<ul>
{% for post in site.posts %}
  {% unless post.tag %}
  <li>
    {{ post.date | date: "%Y-%m-%d"  }} &mdash; <a href="{{ post.url }}">{{ post.title }}</a>
  </li>
  {% endunless %}
{% endfor %}
</ul>