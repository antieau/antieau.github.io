---
layout: post
title:  "New paper: the K-theory of Z$/p^n$"
stitle: "New paper: K-theory of Z$/p^n$"
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

Achim Krause, Thomas Nikolaus, and I have uploaded our research announcement
[\[1\]](#akn) on the $\K$-groups of $\bZ/p^n$ to the arXiv. We have constructed an algorithm to compute the
syntomic cohomology $\bZ_p(i)$ in the sense of Bhatt--Morrow--Scholze of $\bZ/p^n$ or
more generally $\Oscr_K/\varpi^n$ where $K$ is a finite extension of $\bQ_p$
and $\varpi$ is a uniformizer of the ring of integers $\Oscr_K$.

The BMS spectral sequence in this case collapses entirely and hence the
algorithm gives a way to compute the $p$-adic $\K$-groups:

$$\K_{2i-1}(\Oscr_K/\varpi^n;\bZ_p)\cong\H^1(\bZ_p(i)(\Oscr_K/\varpi^n))$$

for $i\geq 1$ and

$$\K_{2i-2}(\Oscr_K/\varpi^n;\bZ_p)\cong\H^2(\bZ_p(i)(\Oscr_K/\varpi^n))$$

for $i\geq 2$. The $\K$-groups are torsion and the prime-to-$p$ information is governed by
Quillen's computation of the $\K$-theory of finite fields.

Please see the announcement for tables of computations. After running our
algorithm in a bunch of cases, we conjectured that in fact the even groups vanish for $i$
sufficiently large. This is indeed the case.

**Theorem** (Even vanishing theorem). If

$$i\geq\frac{p^2}{(p-1)^2}\left(p^{\lceil\tfrac{n}{e}\rceil}-1\right),$$

then $\K_{2i-2}(\Oscr_K/\varpi^n)=0$.

Recall that Bhatt and Scholze proved the odd vanishing conjecture, namely that
odd $\K$-groups vanish quasisyntomic-locally. (This had been prove in
characteristic $p$ first in BMS2.) In particular, Bhatt and Scholze proved that
$\K_*(\Oscr_{\bC_p}/p^n;\bZ_p)$ is concentrated in even degrees.
Combined with our theorem, one obtains the following consequence.

**Corollary**. If $i\geq\frac{p^2(p^n-1)}{(p-1)^2}$,  then
$\K_{2i-2}(\Oscr_{\bC_p}/p^n;\bZ_p)$
is $p$-torsion free.

**Proof**. Write $\Oscr_{\bC_p}/p^n$ as a filtered colimit of
flat $\bZ/p^n$-algebras,
$\Oscr_K/\varpi^m$, where $K$ has ramification index $e$ over $\bQ_p$ and hence
$n=\tfrac{m}{e}$. In particular, the exponent $\lceil\tfrac{m}{e}\rceil=n$ in the bound from the even
vanishing theorem is independent of $K$. It follows that
$$\mathrm{colim}_K\K_{2i-2}(\Oscr_K/\varpi^n;\bZ_{(p)})$$ vanishes for $i\geq 2$.
Now, the odd vanishing theorem of Bhatt and Scholze implies that

$$\lim^0_r(\K_{2i-1}(\Oscr_K/\vari^n;\bZ/p^r))=0$$

and

$$\lim^1_r(\K_{2i-1})(\Oscr_K/\varpi^n;\bZ/p^r))\iso\K_{2i-2}(\Oscr_{\bC_p}/p^n;\bZ_p).$$

# References

<span id="akn">
[1] Antieau, Krause, and Nikolaus, *The K-theory of $\bZ/p^n$*,
    [<tt>arXiv:2204.03420</tt>](https://arxiv.org/abs/2204.03420).
</span>
