---
layout: post
title:  "A counterexample for the de Rham filtration on HP"
categories: homology examples
---
Here is an example where the de Rham filtration on periodic cyclic homology
is not exhaustive, motivated by the example of Bhatt and Mondal I describe in the previous [post]({% post_url 2020-12-02-drexample %}).

The close connection between de Rham cohomology and periodic cyclic homology
realized by this filtration
goes back at least to work of Feigin--Tsygan [3], Kassel [4], Loday [5], and Toen--Vezzosi [9] in the case of
$\mathbf{Q}$-algebras and has been studied more recently in general by Bhatt--Morrow--Scholze in [2], myself in [1], Moulinos--Robalo--Toën in [7], and Raksit in [8]. The associated spectral
sequence however already appears in work of Majadas [6] from 1996.

There is a complete filtration on negative cyclic homology
$\mathrm{F}^\star\mathrm{HC}^-(R/k)$ and periodic cyclic homology $\mathrm{F}^\star\mathrm{HP}(R/k)$ with
associated graded pieces given by $$\mathrm{gr}^n\simeq\widehat{\mathrm{dR}}_{R/k}^{\geq
n}[2n]$$ or $$\mathrm{gr}^n\simeq\widehat{\mathrm{dR}}_{R/k}[2n]$$, respectively.
In each case, an additional assumption on the cotangent complex
guarantees that the filtrations are exhaustive as well. Specifically,
this happens if $\mathrm{L}_{R/k}$ has Tor-amplitude in $[0,1]$.

Thomas Nikolaus and I were wondering whether or not, especially in
characteristic zero, the filtration is always exhaustive. The example below
shows that it is not.

Let $R$ be the free animated commutative
$\mathbf{Q}$-algebra on a single element $x$ of degree $2$.[^a] Thus,
$\pi\_*R\cong\mathbf{Q}[x]$ where $|x|=2$. The cotangent complex
$\mathrm{L}\_{R/\mathbf{Q}}$ is equivalent to $R[2]$ while the cotangent
complex $\mathrm{L}\_{\mathbf{Q}/R}$ is equivalent to $\mathbf{Q}[3]$ as one
sees using
the conormal sequence for the sequence $\mathbf{Q}\rightarrow
R\rightarrow\mathbf{Q}$ of animated commutative rings.

[^a]: We work with homological gradings in this post.

It follows that $$\pi_*\widehat{\mathrm{dR}}_{\mathbf{Q}/R}\cong\mathbf{Q}[w]$$ where
$|w|=2$ and that $\pi_*\mathrm{HH}(\mathbf{Q}/R)\cong\mathbf{Q}[z]$ where
$|z|=4$.

The Tate spectral sequence collapses because Hochschild homology
$\mathrm{HH}(R/k)$ is concentrated in even degrees.  We see that if $v$ is a
degree $-2$ generator of $\mathbf{Z}^{\mathrm{h}S^1}$, then
$\pi_0\mathrm{HP}(\mathbf{Q}/R)$ is equivalent to
$\mathbf{Q}[[vz]]$. On the other hand, one checks that
$$\pi_0\mathrm{F}_{-n}\mathrm{HP}(\mathbf{Q}/R)\cong
\mathbf{Q}\cdot\{1,\ldots,(vz)^n\}\subseteq\mathbf{Q}[[vz]].$$
It follows that the colimit is
$$\pi_0\mathrm{F}_{-\infty}\mathrm{HP}(\mathbf{Q}/R)\cong\mathbf{Q}[vz]\subseteq\mathbf{Q}[[vz]].$$
Therefore, the de Rham filtration on $\mathrm{HP}$ is not exhaustive.

For those who would like to avoid thinking about the exact ring structure on
$\pi_0\mathrm{HP}(\mathbf{Q}/R)$, one can see from the HKR filtration that
$\pi_0\mathrm{HP}(\mathbf{Q}/R)$ is uncountable, but that $$\pi_0\mathrm{F}_{-\infty}\mathrm{HP}(\mathbf{Q}/R)$$ is countable.

I do not know at the moment whether or not this kind of behavior is possible
for a map of ordinary commutative rings $k\rightarrow R$, but I would be very
interested if there is such an example.

Finally, let me mention that in characteristic $0$ there is a canonical map
from Hodge filtered derived de Rham cohomology
$$\mathrm{F}^\star_\mathrm{H}\widehat{\mathrm{dR}}_{R/k}\rightarrow\mathrm{F}^\star_{\mathrm{HKR}}\mathrm{HP}(R/k).$$
Which by base change up to $k^{\mathrm{t}S^1}$ induces a filtered map
$$\mathrm{F}^\star_{\mathrm{H}}\widehat{\mathrm{dR}}_{R/k}\otimes_kk^{\mathrm{t}S^1}\rightarrow\mathrm{F}^\star_{\mathrm{HKR}}\mathrm{HP}(R/k).$$
This map is an equivalence on associated graded pieces and the right-hand side is
complete, but it is not an equivalence in general as the example above shows. It follows that $\mathrm{HP}(R/k)$ is the _completed_ tensor product
$$\widehat{\mathrm{dR}}_{R/k}\widehat{\otimes}_kk^{tS^1},$$ where we complete with
respect to the induced Hodge filtration. Finally, we can rewrite these
equivalences as

$$\widehat{\mathrm{dR}}_{R^{\mathrm{t}S^1}/k^{\mathrm{t}S^1}}\simeq\widehat{\mathrm{dR}}_{R/k}\widehat{\otimes}_kk^{\mathrm{t}S^1}\simeq\mathrm{HP}(R/k),$$

where we omit the Hodge and HKR filtrations from the notation. In other words,
in characteristic $0$, $\mathrm{HP}(R/k)$ is the Hodge-complete derived
de Rham cohomology of the $2$-periodic ring $R^{\mathrm{t}S^1}$ over the
$2$-periodic ring $k^{\mathrm{t}S^1}$.

# References

[1] Antieau, *Periodic cyclic homology and derived de Rham cohomology*, Ann.
K-Theory **4** (2019), no. 3, 505-519.

[2] Bhargav Bhatt, Matthew Morrow, and Peter Scholze, *Topological Hochschild homology and integral p-adic Hodge theory*, Publ. Math. Inst. Hautes Études Sci.
**129** (2019), 199–310.

[3] Feĭgin, Tsygan,
_Cyclic homology of algebras with quadratic relations, universal enveloping algebras and group algebras_ in K-theory, arithmetic and geometry (Moscow, 1984–1986), 210–239,
Lecture Notes in Math., **1289**, Springer, Berlin, 1987.

[4] Kassel, _Cyclic homology, comodules, and mixed complexes_,
J. Algebra **107** (1987), no. 1, 195–216.

[5] Loday, _Cyclic homology_, second ed., vol. **301**, Springer-Verlag, Berlin, 1998.

[6] Majadas, *Derived de Rham complex and cyclic homology*, 
Mathematica Scandinavica **79**, no. 2 (1996), pp. 176-188.

[7] Moulinos, Robalo, and Toën, _A universal HKR theorem_, arXiv preprint [arXiv:1906.00118](https://arxiv.org/abs/1906.00118).

[8] Raksit, _Hochschild homology and the derived de Rham complex
revisited_, arXiv preprint
[arXiv:2007.025760l](https://arxiv.org/abs/2007.02576).

[9] Toën, Vezzosi, *Algèbres simpliciales S1-équivariantes, théorie de de Rham et théorèmes HKR multiplicatifs*,
Compos. Math. **147** (2011), no. 6, 1979–2000.

# Footnotes
