---
layout: post
title:  "New paper: spherical Witt vectors and integral models for spaces"
stitle: "New paper: SW"
tags: 2022
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
\newcommand\Mscr{\mathcal{M}}
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
\newcommand\DAlg{\mathrm{DAlg}}
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
\newcommand\LBr{\mathrm{LBr}}
\newcommand\TMF{\mathrm{TMF}}
\newcommand\Pic{\mathrm{Pic}}
\newcommand\shpic{\mathbf{pic}}
\newcommand\KO{\mathrm{KO}}
\newcommand\KU{\mathrm{KU}}
\newcommand\iso{\cong}
$
</div>

<!--ëéłö-->

I have just uploaded my paper [\[1\]](#sw) to the `arXiv`.
It arose first as an attempt to better understand the spherical Witt vector functor
constructed in Burklund--Schlank--Yuan [\[2\]](#bsy). Their proof uses deformation theory and
an existence result of Lurie. My proof uses instead the notion of transmutation.

After figuring this out, I went on a bit of a wild goose chase, aiming to understand how to solve
Grothendieck's problem (see for example [\[7\]](#toen)) and capture all of the information about a finite type nilpotent space $X$
from its $\bZ$-cochains $\bZ^X$. The idea I came up with for this was a notion of binomial derived
rings, which are derived $\lambda$-rings (derived in the sense of Bhatt, Brantner, Mathew, and Raksit)
equipped with compatible trivializations of their $\psi^p$ Adams operations.

At the time, I was unware of the work of Kriz [\[4\]](#kriz) in characteristic $p$ or the recent work of Horel [\[3\]](#horel) over
$\bZ$. Last week, another perspective came out in a paper [\[5\]](#ksz) of Kubrak, Shuklin, and Zakharov
[\[5\]](#ksz).

All three papers [1,3,5] on binomial rings give slightly different $\infty$-categorical models. Horel uses cosimplicial
binomial rings with weak equivalences inverted, Kurbak--Shuklin--Zakharov directly derive the
binomial ring monad, and I work with derived $\lambda$-rings with additional trivializations of the
Frobenii. My applications are to spherical Witt vectors and spherical lifts of these binomial rings.
Horel studies an integral version of the Grothendieck--Teichmüller group. Kubrak--Shuklin--Zakharov
used derived binomial rings to give a definition of integral cochain models of the Kato--Nakayama spaces
arising in log geometry.

I want to explain here one problem, not stated in [\[1\]](#sw), which I'd be interested to
understand. Let $\CAlg_{\bF_p}^\perf$ denote the category of perfect commutative $\bF_p$-algebras
and let $\DAlg_{\bF_p}^\perf$ denote the $\infty$-category of perfect derived commutative
$\bF_p$-algebras, i.e., those derived commutative rings $R$ such that the Frobenius $\varphi\colon
R\rightarrow R$ is an equivalence. Consider the right Kan extension $F$ of the inclusion
$\CAlg_{\bF_p}^\perf\rightarrow\DAlg_{\bF_p}^\perf$ along itself.

**Question**. Is $F$ equivalent to the identity functor of $\DAlg_{\bF_p}^\perf$?

It is possible, using Toën's affinization theorem (see [\[7\]](#toen) for an overview), to show that the analogous result for non-perfect rings
is `yes`: the right Kan extension of the inclusion of discrete commutative $\bF_p$-algebras into
coconnective derived commutative $\bF_p$-algebras along itself is the identity functor of
$\DAlg_{\bF_p}^{\mathrm{ccn}}$. However, this does not help answer our question as the inverse limit
perfection $R^\perf$ of a discrete commutative $\bF_p$-algebra is typically derived because of
a non-vanishing $\lim^1$.

The question has a positive answer if and only if for each perfect derived commutative
$\bF_p$-algebra $R$, the natural map $R\rightarrow\lim_{R\rightarrow S}S$ is an equivalence, where
the limit ranges over all maps from $R$ to *discrete* perfect commutative $\bF_p$-algebras.


# References

<span id="sw">
[1] Antieau, *Spherical Witt vectors and integral models for spaces*,
    [<tt>arXiv:2308.07288</tt>](https://arxiv.org/abs/2308.07288).
</span>

<span id="bsy">
[2] Burklund, Schlank, Yuan, *The chromatic Nullstellensatz*,
    [<tt>arXiv:2207.09929</tt>](https://arxiv.org/abs/2207.09929).
</span>

<span id="horel">
[3] Horel, *Binomial rings and homotopy theory*,
    [<tt>arXiv:2211.02349</tt>](https://arxiv.org/abs/2211.02349).
</span>

<span id="kriz">
[4] Kriz, *p-adic homotopy theory*,
    Topology Appl. **52** (1993), no. 3, 279–308.
</span>

<span id="ksz">
[5] Kubrak, Shuklin, Zakharov, *Derived binomial rings I: integral Betti cohomology of log schemes*,
    [<tt>arXiv:2308.01110</tt>](https://arxiv.org/abs/2308.01110).
</span>

<span id="mandell">
[6] Mandell, *Cochains and homotopy type*,
    Pub. Math. IHES **103** (2006), 213-246.
</span>

<span id="toen">
[7] Toën, *Le problème de la schématisation de Grothendieck revisité*,
    Épijournal Géom. Algébrique **4** (2020), Art. 14.
