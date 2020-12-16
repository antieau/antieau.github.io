---
layout: post
title:  "Best of the 2010s: the universal property of algebraic K-theory"
tags: 2010s bestof
---
<div style="display:none">
$
\newcommand\A{\mathrm{A}}
\newcommand\E{\mathrm{E}}
\newcommand\H{\mathrm{H}}
\newcommand\K{\mathrm{K}}
\newcommand\L{\mathrm{L}}
\newcommand\M{\mathrm{M}}
\newcommand\Cscr{\mathcal{C}}
\newcommand\Escr{\mathcal{E}}
\newcommand\dR{\mathrm{dR}}
\newcommand\HH{\mathrm{HH}}
\newcommand\TC{\mathrm{TC}}
\newcommand{\bMap}{\mathbf{Map}}
\newcommand{\End}{\mathrm{End}}
\newcommand\bE{\mathbf{E}}
\newcommand\bZ{\mathbf{Z}}
\newcommand\bAM{\mathbf{AM}}
\newcommand\bLM{\mathbf{LM}}
$
</div>
One of the most important lines of thought in the last 10 or so years has been
the characterization of algebraic $$\K$$-theory as an invariant of stable
$$\infty$$-categories. This remarkable theorem was proved by Andrew Blumberg,
David Gepner, and Goncalo Tabuada in [bgt13], following related work in the
setting of dg categories by Tabuada and Cisinski--Tabuada. Other versions
have appeared, in the case of $R$-linear stable $\infty$-categories by
Hoyois--Scherotzke--Sibilla and in the case of Waldhausen
$$\infty$$-categories by Barwick.

All of these invariants generalize the universal property of Grothendieck's
$$\K_0$$ functor, which is the universal home for Euler characteristics.
However, the work of the authors above externalizes this property and finds
the universal property of algebraic $$\K$$-theory *as a functor*. Here is the
theorem in the setting of [bgt13].

There is an $\infty$-category $\bAM$ of noncommutative **additive motives**
with the following universal property: if $\Cscr$ is a stable $\infty$-category
with colimits, then to give a colimit-preserving functor $\bAM\rightarrow\Cscr$
is the same as giving an **additive invariant**, i.e., a functor
$H\colon\Cat_\infty^\st\rightarrow\Cscr$ which commutes with colimits and which
sends split exact sequences

$$\Escr_0\rightleftarrows\Escr_1\rightleftarrows\Escr_2$$

to split cofiber sequences

$$H(\Escr_0)\rightleftarrows H(\Escr_1)\rightleftarrows H(\Escr_2).$$ In
particular, $H(\Escr_1)\simeq H(\Escr_0)\oplus H(\Escr_1)$.

Similarly, there is an $\infty$-category $\bLM$ of noncommutative **localizing
motives**. It is a localization of $\bAM$ and it has the following universal
property: if $\Cscr$ is a stable $\infty$-category
with colimits, then to give a colimit-preserving functor $\bLM\rightarrow\Cscr$
is the same as giving a **localizing invariant**, i.e., a functor
$H\colon\Cat_\infty^\perf\rightarrow\Cscr$ which commutes with colimits and which
sends exact sequences

$$\Escr_0\rightarrow\Escr_1\rightarrow\Escr_2$$

to cofiber sequences

$$H(\Escr_0)\rightarrow H(\Escr_1)\rightarrow H(\Escr_2).$$
In particular, there are long exact sequences

$$\cdots \pi_{n+1} H(\Escr_2)\rightarrow\pi_n H(\Escr_0)\rightarrow\pi_n
H(\Escr_1)\rightarrow H(\Escr_2)\rightarrow\cdots.$$

This style of thinking has revolutionized how we think about algebraic
$$\K$$-theory as well as related invariants like Hochschild homology
$$\HH(-/\bZ)$$, topological cyclic homology $$\TC$$, and any other
noncommutative invariant.

The most satisfying aspect of these theorems is that they get at what algebraic
$$\K$$-theory really is. But, they have important theoretical implications as
well. Here are two things that one can do with the universal properties.

First, one can settle once and for all how algebraic $$\K$$-theory interacts
with symmetric monoidal structures or more generally $\bE_n$-monoidal
structures, where $\bE_n$ denotes the little $$n$$-disks operad. If $\Escr$ is
an $\bE_n$-monoidal stable $\infty$-category, then $\K(\Escr)$ naturally admits
the structure of a $\bE_{n-1}$-algebra in spectra. In particular, if $\Escr$ is
$\bE_\infty$, then $\K(\Escr)$ is $\bE_\infty$. This resolves a huge amount of
confusion and ambiguity in the literature.

Mention [bgt2]. See also [ggn].

Second, one can show that all possible constructions of the trace map
$\K\rightarrow\TC$ agree and indeed one can construct the trace map to begin
with.



# Localizing invariants and Zariski descent.

As an example, let me explain how to prove that algebraic K-theory satisfies
Zariski descent using the universal property. In fact, we will show that *any*
localizing invariant satisfies Zariski descent. A stronger statement, that
algebraic K-theory satisfies Nisnevich descent is also true. These results were
proved by Thomason in [TT], but our approach is anti-historical: the isolation
of the universal property of algebraic K-theory above is based on the insight
gained in Thomason's paper, which proved for the first time in some sense that
K-theory *is* indeed a localizing invariant, even though this notion had yet to
be invented. It is remarkable that this simple property of algebraic K-theory
is enough to pin it down.



# General versus special.

This post has been about the place of K-theory among all localizing invariants:
it is the unit. However, the other posts in our series will focus on facets of
K-theory which are particular to algebraic K-theory itself.


# Open problem.

The $\infty$-category $\bAM$ is easily seen to be compactly generated and it is
not difficult either to work out additive invariants of compact
$\bE_1$-algebras here. Specifically,
$\bMap_{\bAM}(\M_\A(A),\Escr)\simeq\K(\Rep_A(\Escr))$,
the algebraic $K$-theory of the $\infty$-category of representation of $A$
in $\Escr$. However, it is unknown to me whether $\bLM$ is compactly generated
or, if so, what a class of compact generators would be. Relatedly, I do not
know what something like $\bMap_{\bLM}(\M_\L(\bS[t]),\Escr)$ would be. In
$\bAM$, we have $\bMap_{\bAM}(\M_\A(\bS[t]),\Escr)\simeq\K(\End(\Escr))$, the
$\infty$-category of obhjects of $\Escr$ equipped with an endomorphism. One can
prove that our unknown spectrum is *not* the nonconnective $K$-theory spectrum
of $\End(\Cscr)$ in general. How? It is possible to show that the assignment
$\Escr\mapsto\K(\End(\Escr))$ is not a localizing invariant!



