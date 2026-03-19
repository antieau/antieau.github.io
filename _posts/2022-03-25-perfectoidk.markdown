---
layout: post
title:  "New paper: the K-theory of perfectoid rings"
stitle: "New paper: K-theory of perfectoids"
tags: 2021
---

<!--ëéłö-->

Matthew Morrow, Akhil Mathew, and I have posted our new paper [\[1\]](#amm) on the algebraic
$\K$-theory of smooth algebras over perfectoid rings. The main results all say
that the $p$-adic $\K$-theory of smooth algebras over perfectoid rings
which contain a perfectoid valuation ring behaves like the $\K$-theory of
smooth commutative rings.

Here are the main theorems, in the mixed characteristic case.

**Theorem**.
Let $\Oscr$ be a perfectoid valuation ring of mixed characteristic and let $A$
be a perfectoid $\Oscr$-algebra. If $R$ is a smooth $A$-algebra of fiber dimension
$\leq d$, then
 - $\K(A;\bZ_p)\rightarrow\K(A[\tfrac{1}{p}];\bZ_p)$ is $0$-truncated,
 - $\K(R;\bZ_p)\rightarrow\K(R[\tfrac{1}{p}];\bZ_p)$ is $d$-truncated,
 - $\K(R;\bZ_p)\we\mathrm{KH}(R;\bZ_p)$,
 - and if $A=\Oscr$, then in fact $\K(R;\bZ_p)\we\K(R[\frac{1}{p}];\bZ_p)$.

 Note that recent results of Clausen--Bhatt--Mathew and
 Land--Mathew--Meier--Tamme imply that the $\K(1)$-local $\K$-theory of $R$ and
 $R[\tfrac{1}{p}]$ agree for *any* commutative ring $R$. However, to get the
 concrete bounds as in the theorem requires further hypotheses.

 The strategy of the proofs is to first use $\mathrm{arc}_p$-descent to reduce
 the case of general perfectoid $\Oscr$-algebras to perfectoid valuation
 rings. Then, a combination of commutative algebra results and classical
 arguments in higher algebraic K-theory are used to show that $p$-torsion modules do not contribute to $K$-theory.

 One of the ideas in the paper is to `tilt' the stable $\infty$-category of perfect
 $p$-torsion complexes to reduce to a characteristic $p$ situation, where we
 argue directly.

 A similar result was proved by Nizioł in [\[2\]](#niziol) in the case where $A=\Oscr$ is the ring of integers in the $p$-completed algebraic closure of $\overline{\bQ}_p$ and was used by her to give a new
 proof of the crystalline comparison theorem in $p$-adic Hodge theory.

 One question in commutative algebra came up in our work which we did not
 answer.

 **Question**. Suppose that $R$ is a commutative ring and that $t\in R$ is a
 non-zero divisor such that $R/t$ is weakly regular stable coherent.
 Does every finitely presented projective $R[\tfrac{1}{t}]$-module $M$ extend to a
 finitely presented *and $t$-torsion free* $R$-module?

 At some point, we make an argument with a Bass-style delooping argument which
 would be more straightforward if the answer to the question is `yes'.
 If you know, please email me and I'll include an answer here.

# References

<span id="amm">
[1] Antieau, Mathew, and Morrow, *The K-theory of perfectoid rings*,
    [<tt>arXiv:2203.06472</tt>](https://arxiv.org/abs/2203.06472).
</span>

<span id="niziol">
[2] Nizioł, *Crystalline conjecture via K-theory*, Ann. sci. Ec. Norm. Sup.
(4), **31** (1998), 659-681.
</span>
