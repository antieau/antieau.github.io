---
layout: post
title:  "Perry: period-index is false"
stitle: "Perry: period-index is false"
tags: 2026
description: "Alex Perry + GPT proved that the period-index conjecture is false."
---

I was blown away last night to read that Alex Perry had disproved the period-index conjecture with
the help of AI, specifically some version of GPT [\[17\]](#perry). This problem is what my PhD thesis was about,
so it is much more than a curiosity to me.



# The period-index conjecture

The conjecture asserts a relationship between the order of Brauer classes and the sizes of the
division algebras which represent them. The period is the order in the Brauer group; the index is
the square root of the $k$-dimension of the division algebra (a twisted form of a matrix algebra).
One has that $\per(\alpha)$ divides $\ind(\alpha)$ and they have the same prime divisors.

**Conjecture.** Let $K=\bC(X)$ be the function field of a $d$-dimensional variety over the complex
numbers. If $\alpha\in\Br(K)$, then $\ind(\alpha)$ divides $\per(\alpha)^{d-1}$.

For $d=0$, $K=\bC$ so $\Br(K)=0$. For $d=1$, Tsen's theorem implies that $\Br(K)=0$. The $d=2$ case
is a famous result of Johan de Jong [[8]](#dejong). Work of Lieblich over $\bF_q$ [[15]](#lieblich)
and AAIKL over $p$-adic fields [[2]](#aaikl) gives additional results for surfaces. But, there is *no* known example
of a higher-dimensional ($d>3$) function field over *any* base field for which there is a uniform
bound $N$ such that $\ind(\alpha)|\per(\alpha)^N$. Work of Krashen and Matzri [[14]](#krashen-matzri)
uses the Bloch--Kato conjectures to give bounds that depend on the prime divisors of the period.

This conjecture is folklore. It was first raised in print by Jean-Louis Colliot-Thélène in 2001
[[6]](#colliot-thelene). Work of de Jong and Starr [[10]](#dejong-starr) also reduces
the general conjecture to unramified classes, i.e., classes $\alpha$ which lift to
$\Br(X)\subseteq\Br(\bC(X))$ for a smooth proper model $X$.

**Theorem** (Perry). There is a smooth complex $3$-fold $X$ and a class $\alpha\in\Br(X)$ such
that $\per(\alpha)=2$ and $\ind(\alpha)=8$.

This disproves the conjecture and it can be used to disprove it in all dimensions bigger than $3$
as well.



# Surprised, but not surprised

In my PhD thesis, I introduced a more computable variant of the index, the étale index, and showed that it divides
the index and is divisible by the period. I gave general upper bounds on this index and
showed later with Ben Williams that it is not equal in all cases to the period; see [[1]](#antieau),
[[3]](#antieau-williams-etale).

Later, Ben Williams and I introduced and studied the period and index problem for topological
Brauer classes, elements in $\H^3(X,\bZ)_\tors$ of finite CW complexes. We gave general upper
bounds. In particular, we showed that if $X$ has dimension $2d$ and $\per(\alpha)$ is prime to
$(d-1)!$, then

$$\ind(\alpha)|\per(\alpha)^{d-1},$$

exactly the expected bound in algebraic geometry. We did this first in [[4]](#antieau-williams-6) for $d\leq 3$ and in a later
paper for all $d$ [[5]](#antieau-williams-topological), and we proved upper bounds in general without the coprimality condition.
However, when $d=3$, we *also* proved that there were $6=3\cdot 2$-dimensional
finite CW complexes and Brauer classes $\alpha$ with $\per(\alpha)=2$ and $\ind(\alpha)=8$
[[4]](#antieau-williams-6). In fact, the $6$-skeleton of any CW structure on the Eilenberg--Mac Lane space
$K(\bZ/2,2)$ works. Later, my PhD student Xing Gu carried this program out through dimension $8$,
where the naive conjecture fails for $p=3$ as well [[11]](#gu-1), [[12]](#gu-2). It remains an
interesting problem to compute the exact topological period-index
bounds in higher dimensions. This depends on getting a better understanding of the integral cohomology of spaces
like $\mathrm{BPU}_n$.

The work with Williams suggested that period-index should be false in exactly the spot that Perry
found it was. Indeed, when is a topological problem harder than an algebraic one when it comes to
bundles?

However, Crowley--Grant later proved in [[7]](#crowley-grant) that one could not realize our topological obstructions in the
cohomology of a smooth projective $3$-fold. Later, Hotchkiss showed (in private correspondence to
me) that one could not ever get topological obstructions in any dimension.



# Speaking of Hotchkiss, $\ldots$

In his thesis, Hotchkiss produces another flavor of index, which he calls the Hodge-theoretic index
and uses intersection theory [[13]](#hotchkiss). This perspective was further developed by de Jong
and Perry [[9]](#dejong-perry). As with the étale index, one has

$$\per(\alpha) | \ind_{\mathrm{Hdg}}(\alpha) | \ind(\alpha).$$

Moreover, Hotchkiss proved that, like the topological index, for a $d$-dimensional smooth proper
variety $X$ and $\alpha\in\Br(X)$ one has

$$\ind_{\mathrm{Hdg}}(\alpha) | \per(\alpha)^{d-1}$$

if $\per(\alpha)$ is prime to $(d-1)!$ [[13]](#hotchkiss). More specifically, Hotchkiss proved that

$$\ind_{\mathrm{Hdg}}(\alpha) | \per(\alpha)^{d-1}((d-1)!)^{d-2}.$$

When $d=3$, this collapses to the precise
upper bound Ben Williams and I produced in the topological setting.


# The counterexample

The Hodge-theoretic index is a much finer invariant than the topological index, but it remains computable in
practice from the cohomology ring. Perry gives an example of a $3$-fold where $\per(\alpha)=2$ and
$\ind_{\mathrm{Hdg}}(\alpha)=8$. Of course, this implies that $\ind(\alpha)\geq 8$ as well; Perry notes that in
fact $\ind(\alpha)=8$ (see more on that in the next section).

The example is a quotient $(Y\times E)/(\bZ/4)^2$, where $Y$ is a Dwork quartic K3 surface of
Picard rank $19$ and $E$ is an elliptic curve. The group $G=(\bZ/4)^2$ acts diagonally: by translation through
$4$-torsion on $E$, and on $Y$ through a $G$-equivariant deformation of an elliptic K3 surface on
which $G$ acts by translation through $4$-torsion sections [[17]](#perry).



# The future

At least for $3$-folds and period $2$, the answer is now complete: Matzri's general bound gives
$\ind(\alpha)\mid 8,$ and Perry's example shows that this is sharp [[16]](#matzri).

The next obvious step is to construct a $4$-fold with a $3$-torsion class $\alpha$ where
$\ind(\alpha)\geq 3^4$. Then, a $(p+1)$-fold with a $p$-torsion Brauer class with $\ind(\alpha)\geq
p^{p+1}$. After that, one should prove some positive results.





# References

<span id="antieau">
[1] Benjamin Antieau, *Cohomological obstruction theory for Brauer classes and the
period-index problem*, J. K-Theory **8** (2011), no. 3, 419--435.
[arXiv:0909.2352](https://arxiv.org/abs/0909.2352).
</span>

<span id="aaikl">
[2] Benjamin Antieau, Asher Auel, Colin Ingalls, Daniel Krashen, and Max Lieblich,
*Period-index bounds for arithmetic threefolds*, Invent. Math. **216** (2019),
no. 2, 301--335. [arXiv:1704.05489](https://arxiv.org/abs/1704.05489).
</span>

<span id="antieau-williams-etale">
[3] Benjamin Antieau and Ben Williams, *Serre-Godeaux varieties and the étale index*,
J. K-Theory **11** (2013), no. 2, 283--295.
[arXiv:1205.1279](https://arxiv.org/abs/1205.1279).
</span>

<span id="antieau-williams-6">
[4] Benjamin Antieau and Ben Williams, *The topological period-index problem over
6-complexes*, J. Topol. **7** (2014), 617--640.
[arXiv:1208.4430](https://arxiv.org/abs/1208.4430).
</span>

<span id="antieau-williams-topological">
[5] Benjamin Antieau and Ben Williams, *The topological period-index conjecture*,
Math. Res. Lett. **28** (2021), no. 5, 1307--1317.
[arXiv:2003.10539](https://arxiv.org/abs/2003.10539).
</span>

<span id="colliot-thelene">
[6] Jean-Louis Colliot-Thélène, *Die Brauersche Gruppe; ihre Verallgemeinerungen und
Anwendungen in der arithmetischen Geometrie* (2001),
[arXiv:2311.02437](https://arxiv.org/abs/2311.02437).
</span>

<span id="crowley-grant">
[7] Diarmuid Crowley and Mark Grant, *The topological period-index conjecture for
$\mathrm{spin}^c$ $6$-manifolds*, Ann. K-Theory **5** (2020), 605--620.
[arXiv:1802.01296](https://arxiv.org/abs/1802.01296).
</span>

<span id="dejong">
[8] Aise Johan de Jong, *The period-index problem for the Brauer group of an
algebraic surface*, Duke Math. J. **123** (2004), no. 1, 71--94.
</span>

<span id="dejong-perry">
[9] Aise Johan de Jong and Alexander Perry, *The period-index problem and Hodge theory*,
[arXiv:2212.12971](https://arxiv.org/abs/2212.12971).
</span>

<span id="dejong-starr">
[10] Aise Johan de Jong and Jason Starr, *Almost proper GIT-stacks and discriminant
avoidance*, Doc. Math. **15** (2010), 957--972.
</span>

<span id="gu-1">
[11] Xing Gu, *The topological period-index problem over 8-complexes, I*,
J. Topol. **12** (2019), no. 4, 1368--1395.
[arXiv:1709.00787](https://arxiv.org/abs/1709.00787).
</span>

<span id="gu-2">
[12] Xing Gu, *The topological period-index problem over 8-complexes, II*,
Proc. Amer. Math. Soc. **148** (2020), 4531--4545.
[arXiv:1803.05100](https://arxiv.org/abs/1803.05100).
</span>

<span id="hotchkiss">
[13] James Hotchkiss, *Hodge theory of twisted derived categories and the period-index
problem*, [arXiv:2212.10638](https://arxiv.org/abs/2212.10638).
</span>

<span id="krashen-matzri">
[14] Daniel Krashen and Eliyahu Matzri, *Diophantine and cohomological dimensions*,
Proc. Amer. Math. Soc. **143** (2015), no. 7, 2779--2788.
[arXiv:1305.5295](https://arxiv.org/abs/1305.5295).
</span>

<span id="lieblich">
[15] Max Lieblich, *Twisted sheaves and the period-index problem*, Compos. Math.
**144** (2008), no. 1, 1--31.
</span>

<span id="matzri">
[16] Eliyahu Matzri, *Symbol length in the Brauer group of a field*, Trans. Amer. Math. Soc.
**368** (2016), no. 1, 413--427.
[doi:10.1090/tran/6326](https://doi.org/10.1090/tran/6326).
</span>

<span id="perry">
[17] Alexander Perry, *The period-index conjecture is false*,
[arXiv:2608.03684](https://arxiv.org/abs/2608.03684).
</span>
