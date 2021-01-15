---
layout: page
title: seminars
permalink: /seminars/
---

{% for seminar in site.seminars %}
<a href="{{ seminar.url }}">{{ seminar.term }} - {{ seminar.title }}</a>.
{% endfor %}
