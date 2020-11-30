---
layout: post
title:  "A counterexample for the de Rham filtration on HP"
date:   2020-11-23 13:28:00 -0600
categories: homology examples
---
Here is an example where the de Rham filtration on periodic cyclic homology
is not exhaustive. This filtration goes back at least to work of Majadas, Feigin and Tsygan, and Loday, Toen--Vezzosi, for the case of
$\mathbf{Q}$-algebras and has been studied more recently in general by Bhatt,
Morrow, and Scholze in [2], myself in [1], Moulinos,
Robalo, and Toën in [mrt], and Raksit in [raksit]. In each of these sources,
    one obtains a complete filtration on negative cyclic homology
    $\mathrm{HC}^-(R/k)$ and periodic cyclic homology $\mathrm{HP}(R/k)$ with
    associated graded pieces given by $$\mathrm{gr}^n\simeq\widehat{\mathrm{dR}}_{R/k}^{\geq
        n}[2n]$$ or $$\mathrm{gr}^n\simeq\widehat{\mathrm{dR}}_{R/k}[2n]$$, respectively.
        In each case, an additional assumption on the cotangent complex
        guarantees that the filtrations are exhaustive as well. Specifically,
        this happens if $\mathrm{L}_{R/k}$ has Tor-amplitude in $[0,1]$.

Thomas Nikolaus and I were wondering whether or not, especially in
characteristic zero, the filtration is always exhaustive. The example below
shows that it is not.

Let $R$ be the free animated commutative
$\mathbf{Q}$-algebra on a single element $x$ of degree $2$. Thus,
$\pi\_*R\cong\mathbf{Q}[x]$ where $|x|=2$. The cotangent complex
$\mathrm{L}\_{R/\mathbf{Q}}$ is equivalent to $R[2]$ while the cotangent
complex $\mathrm{L}\_{\mathbf{Q}/R}$ is equivalent to $\mathbf{Q}[3]$ as one
sees using
the conormal sequence for the sequence $\mathbf{Q}\rightarrow
R\rightarrow\mathbf{Q}$ of animated commutative rings.

It follows that $$\pi_*\widehat{\mathrm{dR}}_{\mathbf{Q}/R}\cong\mathbf{Q}[w]$$ where
$|w|=2$ and that $\pi_*\mathrm{HH}(\mathbf{Q}/R)\cong\mathbf{Q}[z]$ where
$|z|=4$.

We will actually work with negative cyclic homology instead. The homotopy $S^1$
fixed points spectral sequence collapses because Hochschild homology
$\mathrm{HH}(R/k)$ is concentrated in even degrees.  We see that if $v$ is a
degree $-2$ generator of $\mathbf{Z}^{\mathrm{h}S^1}$, then
$\mathrm{HC}^-_0(\mathbf{Q}/R)$ is equivalent to
$\mathbf{Q}[[vz]]$. On the other hand, one checks that
$$\pi_0\mathrm{F}_{-n}\mathrm{HC}^-(\mathbf{Q}/R)\cong
\mathbf{Q}\cdot\{1,\ldots,(vz)^n\}\subseteq\mathbf{Q}[[vz]].$$
It follows that the colimit is
$$\pi_0\mathrm{F}_{-\infty}\mathrm{HC}^-(\mathbf{Q}/R)\cong\mathbf{Q}[vz]\subseteq\mathbf{Q}[[vz]].$$

I do not know at the moment whether or not this kind of behaviour is possible
for a map of commutative rings $R\rightarrow S$, but the expectation.

# References

[1] Antieau, *Periodic cyclic homology and derived de Rham cohomology*, Ann.
K-Theory **4** (2019), no. 3, 505-519.

[2] Bhargav Bhatt, Matthew Morrow, and Peter Scholze, *Topological Hochschild homology and integral p-adic Hodge theory*, Publ. Math. Inst. Hautes Études Sci.
**129** (2019), 199–310.

[3] Loday, _Cyclic homology_, second ed., vol. 301, Springer-Verlag, Berlin, 1998.

[4] Majadas, *Derived de Rham complex and cyclic homology*, 
Mathematica Scandinavica **79**, no. 2 (1996), pp. 176-188.

[5] Moulinos, Robalo, and Toën, _A universal HKR theorem_, arXiv preprint [arXiv:1906.00118](https://arxiv.org/abs/1906.00118).

[6] Raksit, _Hochschild homology and the derived de Rham complex
revisited_, arXiv preprint
[arXiv:2007.025760l](https://arxiv.org/abs/2007.02576).

[7] Toën and Vezzosi, *Algèbres simpliciales S1-équivariantes, théorie de de Rham et théorèmes HKR multiplicatifs*,
Compos. Math. **147** (2011), no. 6, 1979–2000.
