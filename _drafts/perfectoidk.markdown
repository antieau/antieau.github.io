---
layout: post
title:  "New paper: the K-theory of perfectoid rings"
stitle: "New paper: K-theory of perfectoids"
tags: 2021
---
<div style="display:none">
$
\newcommand\nil{\mathrm{nil}}
\newcommand\gfrak{\mathfrak{g}}
\newcommand\A{\mathrm{A}}
\newcommand\B{\mathrm{B}}
\newcommand\C{\mathrm{C}}
\newcommand\D{\mathrm{D}}
\newcommand\E{\mathrm{E}}
\newcommand\F{\mathrm{F}}
\newcommand\G{\mathrm{G}}
\newcommand\H{\mathrm{H}}
\newcommand\h{\mathrm{h}}
\newcommand\K{\mathrm{K}}
\newcommand\L{\mathrm{L}}
\newcommand\M{\mathrm{M}}
\newcommand\R{\mathrm{R}}
\newcommand\t{\mathrm{t}}
\newcommand\T{\mathrm{T}}
\newcommand{\bA}{\mathbf{A}}
\newcommand{\bF}{\mathbf{F}}
\newcommand{\bG}{\mathbf{G}}
\newcommand{\bH}{\mathbf{H}}
\newcommand{\bT}{\mathbf{T}}
\newcommand{\bW}{\mathbf{W}}
\newcommand{\Gm}{\bG_m}
\newcommand\Ascr{\mathcal{A}}
\newcommand\Cscr{\mathcal{C}}
\newcommand\Dscr{\mathcal{D}}
\newcommand\Escr{\mathcal{E}}
\newcommand\Fscr{\mathcal{F}}
\newcommand\Kscr{\mathcal{K}}
\newcommand\Lscr{\mathcal{L}}
\newcommand\Oscr{\mathcal{O}}
\newcommand\Perf{\mathrm{Perf}}
\newcommand\Perfscr{\mathcal{P}\mathrm{erf}}
\newcommand\Acscr{\mathcal{A}\mathrm{c}}
\newcommand\heart{\heartsuit}
\newcommand\cn{\mathrm{cn}}
\newcommand\op{\mathrm{op}}
\newcommand\gr{\mathrm{gr}}
\newcommand\Gr{\mathrm{Gr}}
\newcommand\fil{\mathrm{fil}}
\newcommand\Ho{\mathrm{Ho}}
\newcommand\dR{\mathrm{dR}}
\newcommand\dRhat{\widehat{\dR}}
\newcommand\we{\simeq}
\newcommand\Sym{\mathrm{Sym}}
\newcommand\HH{\mathrm{HH}}
\newcommand\HC{\mathrm{HC}}
\newcommand\HP{\mathrm{HP}}
\newcommand\TC{\mathrm{TC}}
\newcommand\TR{\mathrm{TR}}
\newcommand\THH{\mathrm{THH}}
\newcommand{\bMap}{\mathbf{Map}}
\newcommand{\End}{\mathrm{End}}
\newcommand{\Mod}{\mathrm{Mod}}
\newcommand{\coMod}{\mathrm{coMod}}
\newcommand{\Fun}{\mathrm{Fun}}
\newcommand{\bMap}{\mathbf{Map}}
\newcommand\bE{\mathbf{E}}
\newcommand\bZ{\mathbf{Z}}
\newcommand\bS{\mathbf{S}}
\newcommand\bQ{\mathbf{Q}}
\newcommand\bC{\mathbf{C}}
\newcommand\bN{\mathbf{N}}
\newcommand\bAM{\mathbf{AM}}
\newcommand\bLM{\mathbf{LM}}
\newcommand\Spec{\mathrm{Spec}\,}
\newcommand\CAlg{\mathrm{CAlg}}
\newcommand\aCAlg{\mathfrak{a}\CAlg}
\newcommand\dCAlg{\mathfrak{d}\CAlg}
\newcommand{\Cat}{\mathrm{Cat}}
\newcommand{\Sscr}{\mathcal{S}}
\newcommand{\poly}{\mathrm{poly}}
\newcommand{\perf}{\mathrm{perf}}
\newcommand\Sp{\mathrm{Sp}}
\newcommand\CycSp{\mathrm{CycSp}}
\newcommand\TCart{\mathrm{TCart}}
\newcommand\Fr{\mathrm{Fr}}
\newcommand\Br{\mathrm{Br}}
$
</div>

<!--ëéłö-->

Matthew Morrow, Akhil Mathew, and I have posted our new paper on the algebraic
$\K$-theory of smooth algebras over perfectoid rings. The main results all say
something like the $p$-adic $K$-theory of smooth algebras over perfectoid rings
which contain a perfectoid valuation ring behaves like the $\K$-theory of
smooth commutative rings.

Here are the main theorems, in the most interesting mixed characteristic case.

**Theorem**.
Let $\Oscr$ be a perfectoid valuation ring of mixed characteristic and let $A$
be a perfectoid $\Oscr$-algebra. If $R$ is a smooth $A$-algebra of fiber dimension
$\leq d$, then
 - $\K(A;\bZ_p)\rightarrow\K(A[\tfrac{1}{p}];\bZ_p)$ is $0$-truncated,
 - $\K(R;\bZ_p)\rightarrow\K(R[\tfrac{1}{p}];\bZ_p)$ is $d$-truncated,
 - $\K(R;\bZ_p)\we\mathrm{KH}(R;\bZ_p)$,
 - and if $A=\Oscr$, then in fact $\K(R;\bZ_p)\we\K(R[\frac{1}{p}];\bZ_p)$.

 Note that recent results of Clausen--Bhatt--Mathew and
 Land--Mathew--Meier--Tamme imply that the $K(1)$-local $K$-theory of $R$ and
 $R[\tfrac{1}{p}]$ agree for *any* commutative ring $R$. However, to get the
 concrete results such as in the theorem requires further hypotheses.

 The strategy of the proofs is to first use $\mathrm{arc}_p$-descent to reduce
 the case of general perfectoid $\Oscr$-algebras to perfectoid valuation
 rings. Then, a combination of commutative algebra results and classical
 arguments in higher algebraic K-theory are used to show that $p$-torsion modules do not contribute to $K$-theory.

 In the end, the idea is to `tilt' the stable $\infty$-category of perfect
 $p$-torsion complexes to reduce to a characteristic $p$ situation, where we
 argue directly.

 A similar result was proved by Nizioł in 1998 and used by her to give a new
 proof of the crystalline comparison theorem in $p$-adic Hodge theory.

 One question in commutative algebra came up in our work which we did not
 answer.

 **Question**. Suppose that $R$ is a commutative ring and that $t\in R$ is a
 non-zero divisor such that $R/t$ is weakly regular stable coherent.
 Does every finitely presented $R[\tfrac{1}{t}]$-module $M$ extend to a
 finitely presented *and $t$-torsion free* $R$-module?

 At some point, we make an argument with a Bass-style delooping argument which
 would be more straigtforward if the answer to the question is `yes'.
 If you know, please email and I'll include an answer here.

# References

<span id="atjls">
[1] Alonso Tarrio, Jeremias Lopez, and Saorin, *Compactly generated t-structures on
the derived category of a Noetherian ring*, J. Algebra **324** (2010), no. 3, 313-346.
</span>

<span id="agh">
[2] Antieau, Gepner, and Heller, *K-theoretic obstructions to bounded t-structures*, Invent. Math. **216** (2019), no. 1, 241-300.
</span>

<span id="amm">
[3] Antieau, Mathew, and Morrow, *The K-theory of perfectoid rings*,
    [<tt>arXiv:2203.06472</tt>](https://arxiv.org/abs/2203.06472).
</span>

<span id="barwick-heart">
[3] Barwick, *On exact $\infty$-categories and the theorem of the heart*, Compos. Math. **151** (2015), no. 11, 2160-2186.
</span>

<span id="neeman-counterexample">
[4] Neeman, *A counterexample to some recent conjectures*, [<tt>arXiv:2006.16536</tt>](https://arxiv.org/abs/2006.16536).
</span>

<span id="neeman-bounded">
[5] Neema, *Bounded $t$–structures on the category of perfect complexes*, 
[<tt>arXiv:2202.08861</tt>](https://arxiv.org/abs/2202.08861).
</span>

<span id="schlichting-negative">
[6] Schlichting, *Negative K-theory of derived categories*, Math. Z. **253** (2006), no. 1, 97–134.
</span>

<span id="smith">
[7] Smith, *Bounded t-structures on the category of perfect complexes over a
Noetherian ring of finite Krull dimension*,
[<tt>arXiv:1910.07697</tt>](https://arxiv.org/abs/1910.07697).
</span>
