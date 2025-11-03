---
layout: page
title: seminars
permalink: /seminars/
---

<a href="../workshops/202511-scop.html">SCoP Chicago Seminar</a>.

<a href="../workshops/202305-topology.html">Topology seminar</a>.

<a href="../workshops/202304-preprint.html">FRG preprint seminar</a>.

{% for seminar in site.seminars reversed %}
<a href="{{ seminar.url }}">{{ seminar.term }} - {{ seminar.title }}</a>.
{% endfor %}

<a href="https://eldenelmanto.com/eakts-electronic-algebraic-k-theory-seminar/">2020 and 2021 - electronic algebraic K-theory seminar</a>.

<a href="https://math.northwestern.edu/~antieau/akts.html">2014-2019 - UIC
algebraic K-theory seminar</a>.

<a
href="https://math.northwestern.edu/~antieau/18FOS.html">2018 Fall - Perfectoid rings</a>.

<a
href="https://math.northwestern.edu/~antieau/has.html">2015 Spring - Homotopy algebras
seminar</a>.
