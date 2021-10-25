---
layout: page
title: workshops
permalink: /workshops/
---


{% for workshop in site.workshops reversed %}
<a href="{{ workshop.url }}">{{ workshop.title }}, {{ workshop.dates }}</a>.
{% endfor %}
