---
layout: post
title:  "Hodge numbers are derived invariants for complex fourfolds"
stitle: "Hodge numbers of fourfolds"
tags: 2026
description: "A signature argument showing that derived-equivalent smooth projective complex fourfolds have the same Hodge numbers."
---

In July 2026 several members of my [FRG grant]({% link _grants/202209-frg.markdown %}) met at UC Berkeley to work. Several
participants were coming directly from the ICM and AI was an impossible-to-avoid topic. [Akhil
Mathew](https://math.uchicago.edu/~amathew/) and I had been playing around extensively with these
tools for quite a while, but not everyone had, so we decided to brainstorm a list of problems
related to our grant and pose them as
problems to Codex and Claude Code. The most surprising result is a Codex proof that Hodge numbers
are derived invariants in dimension $4$, the proof of which we present below.

The [Leiden Declaration](https://leidendeclaration.ai/) asserts the primacy of human authors. To
that end, and since this is my blog, I am the author of this blog post. Full credit to humans and
models is given toward the end of this post.



# Background and statement of theorem

Let $X$ and $Y$ be smooth projective varieties over $\mathbf C$. Orlov's
conjecture [[5]](#orlov) asserts that an equivalence

$$D^b(X)\simeq D^b(Y)$$

implies that the rational Chow motives of $X$ and $Y$ are isomorphic, which in turn implies
$h^{p,q}(X)=h^{p,q}(Y)$ for all $p,q$.

Popa and Schnell proved that Hodge numbers are derived invariants for complex threefolds
[[6]](#popa-schnell). The characteristic-zero hypothesis is essential:
Addington and Bragg constructed derived-equivalent Calabi--Yau threefolds in
characteristic $3$ with different Hodge numbers [[2]](#addington-bragg).

**Theorem A.** If $X$ and $Y$ are derived-equivalent smooth projective complex fourfolds,
then

$$h^{p,q}(X)=h^{p,q}(Y)$$

for every $p,q$.




# Reductions

We can assume that $X$ and $Y$ are connected and of dimension $4$.
We have *Serre duality*, which implies that $h^{p,q}=h^{4-p,4-q}$, and *Hodge symmetry*, which implies
that $h^{p,q}=h^{q,p}$.

Popa and Schnell in [[6]](#popa-schnell) prove that $h^{0,1}$ is a derived invariant (for $X$ and
$Y$ of any dimension, in characteristic $0$).

Abuaf [[1]](#abuaf) proved that, in dimensions at most four and in characteristic $0$, derived
equivalence preserves the Hodge numbers $h^{0,q}$. Addington and Bragg [[2]](#addington-bragg),
Appendix A, streamline his argument.

A final classical argument is to use the derived invariants of Hochschild homology together with
HKR degeneration. Specifically, $\dim_k\HH_i(X/k)$ is a derived invariant and we have by HKR that

$$\dim_k\HH_i(X/k)=\sum_j h^{i+j,j}.$$

Taken together, the facts above imply that for fourfolds in characteristic $0$ the only ambiguity is what happens in
$\HH_0$. Of course, $h^{0,0}$ and $h^{4,4}$ are derived invariants and we have
$h^{1,1}=h^{3,3}$. By Hochschild homology, $2h^{1,1}+h^{2,2}$ is a derived invariant.

It remains to find an additional relation that lets us separate $h^{1,1}$ from $h^{2,2}$.



# Topological signature

The main insight due to GPT 5.6 Sol is that the topological signature is a derived invariant of
*even-dimensional* smooth projective complex varieties. If $X$ is a $2d$-dimensional smooth
projective complex variety, then the cup product pairing on $\H^{2d}(X;\mathbf{R})$ is symmetric and non-degenerate. The topological signature of $X$, denoted here by $\sigma(X)$,
is the signature of this pairing. Hirzebruch's signature formula gives
$$\sigma(X)=\sum_{p,q}(-1)^qh^{p,q}.$$
See Voisin [[7]](#voisin), Theorem 6.33.

**Theorem B.** Let $X$ and $Y$ be derived equivalent smooth projective complex varieties of even
dimension. Then, $\sigma(X)=\sigma(Y)$.

*Theorem B implies Theorem A.* By our previous reductions, we have

$$0=\sigma(X)-\sigma(Y)=(h^{2,2}(X)-2h^{1,1}(X))-(h^{2,2}(Y)-2h^{1,1}(Y)).$$

Thus, the quantity $h^{2,2}-2h^{1,1}$ is a derived invariant. Together with the derived invariance
of $2h^{1,1}+h^{2,2}$, this implies the derived invariance of $h^{1,1}$ and $h^{2,2}$, which
completes the proof of Theorem A.



# The Mukai pairing and the proof of Theorem B.

A derived equivalence, represented by a Fourier--Mukai kernel, induces an isomorphism on
topological $K$-theory that preserves the index pairing. The Mukai vector
$v_X(-)=\operatorname{ch}(-)\sqrt{\operatorname{td}(X)}$ identifies
$K^0_{\mathrm{top}}(X)\otimes\bQ$ with $\H^{\mathrm{ev}}(X;\bQ)$ and transports the index pairing
to the Mukai pairing. Thus the Mukai pairing on even cohomology is a derived invariant.

In this form, if $\alpha=\sum\alpha_j$ is an element of $\H^\mathrm{ev}(X;\bC)=\oplus_j\H^{2j}(X;\bC)$, then let

$$\alpha^\vee=\sum_j (-1)^j \alpha_j.$$

In terms of $\H^\mathrm{ev}(X;\bC)$, the Mukai pairing is

$$
 P_X(\alpha,\beta)
 =\int_X e^{c_1(X)/2}\alpha^\vee\beta.
$$

see Căldăraru and Willerton
[[3]](#caldararu-willerton) or Huybrechts [[4]](#huybrechts), Propositions
5.39 and 5.44. 

We can symmetrize the Mukai pairing to obtain

$$
P_X(\alpha,\beta)+P_X(\beta,\alpha)=\int_X
e^{c_1(X)/2}\alpha^\vee\beta+e^{c_1(X)/2}\beta^\vee\alpha.$$

Since the involution $(-)^\vee$ acts by $(-1)^{2d}=1$ on top cohomology,

$$\int_X e^{c_1(X)/2}\beta^\vee\alpha=\int_X e^{-c_1(X)/2}\alpha^\vee\beta,$$

so that

$$
S_X(\alpha,\beta):=P_X(\alpha,\beta)+P_X(\beta,\alpha)
=2\int_X\mathrm{cosh}(c_1(X)/2)\alpha^\vee\beta.
$$

Put

$$
Q_X(\alpha,\beta)=\int_X\alpha^\vee\beta
\qquad\text{and}\qquad
B_X=\sqrt{\mathrm{cosh}(c_1(X)/2)}.
$$

Since $B_X^\vee=B_X$, we have

$$S_X(\alpha,\beta)=2Q_X(B_X\alpha,B_X\beta).$$

Multiplication by $B_X$ is a real automorphism, and the factor $2$ is positive, so $S_X$ and
$Q_X$ have the same signature. For $j<d$, the restriction of $Q_X$ to

$$\H^{2j}(X;\mathbf{R})\oplus\H^{4d-2j}(X;\mathbf{R})$$

is hyperbolic by Poincaré duality and therefore has signature zero. On the middle cohomology
$\H^{2d}(X;\mathbf{R})$, the pairing $Q_X$ is $(-1)^d$ times the ordinary cup product pairing.
Consequently,

$$\operatorname{sig}(S_X)=(-1)^d\sigma(X).$$

A derived equivalence preserves $P_X$, hence also $S_X$, and it preserves the dimension. It
therefore preserves $\sigma(X)$. This completes the proof of Theorem B.



# Comments on the process

I provided the following prompt.

<code>There is a conjecture that if
X and Y are derived equivalent smooth projective varieties over the complex numbers, then they have
the same Hodge numbers. Can you find a counterexample to this conjecture (or prove it)? If so,
please write this up as a TeX/PDF file for me to read.</code>

This resulted in a summary after 20 minutes of the state of the art. I asked the model to keep
pushing. After an additional 1 hour and 50 minutes it had solved dimension $4$, but hadn't stopped.
It was working on the general case. I paused it and asked for the proof in dimension $4$, which it
provided [here]({% link assets/pdf/fourfold_hodge_invariance.pdf %}), after some back-and-forth on
the correctness of some results in the literature (a paper it cited on the arXiv had been withdrawn).

As you can see from the prompt, I expect this to be false in general. I was pleasantly surprised to see a proof in
dimension $4$.

The original output included a formalization, but it was very incomplete, just formalizing Theorem
A from Theorem B and all of the easy reduction steps. Theorem B itself was not formalized. I have
no doubt this could have been done; however, the humans were able to check the proof directly.

Thanks to Bryna Kra for suggesting I include the exact details here.



# Contributions and support

The following uses the
[CRediT contributor-role taxonomy](https://credit.niso.org/contributor-roles-defined/).

- **GPT-5.6 Sol Extra High** (OpenAI): Conceptualization, Formal analysis,
  Investigation, Methodology, Validation, Writing -- original draft.
- **Opus 5.0** (Anthropic): Validation.
- **Benjamin Antieau** (Northwestern): Formal analysis, Funding
  acquisition, Validation, Writing -- review & editing.
- **[Andrei Căldăraru](https://people.math.wisc.edu/~caldararu/)** (Wisconsin): Formal analysis,
  Funding acquisition, Validation, Writing -- review & editing.
- **[Akhil Mathew](https://math.uchicago.edu/~amathew/)** (Chicago): Formal analysis, Funding
  acquisition, Validation, Writing -- review & editing.
- **[Martin Olsson](https://sites.google.com/berkeley.edu/martin-olsson/)** (Berkeley): Formal analysis,
  Funding acquisition, Validation, Writing -- review & editing.
- **[Ruoxi Li](https://math.berkeley.edu/people/ruoxi-li)** (Berkeley): Formal analysis,
  Validation, Writing -- review & editing.
- **[Noah Olander](https://noaholander.github.io/)** (Berkeley): Formal analysis,
  Validation, Writing -- review & editing.
- **[Joshua Mundinger](https://joshuamundinger.github.io/)** (Berkeley): Formal analysis,
  Validation, Writing -- review & editing.

All of the named contributors checked the proof carefully. Benjamin Antieau
provided the subscription used to access GPT-5.6 Sol Extra High and Akhil
Mathew provided the subscription used to access Opus 5.0. This work was
supported by NSF grant DMS-2152235, *FRG: Higher categorical structures in
algebraic geometry* (Benjamin Antieau, Andrei Căldăraru, Akhil Mathew, and
Martin Olsson).


# References

<span id="abuaf">
[1] Roland Abuaf, *Homological units*, Int. Math. Res. Not. IMRN **2017**,
no. 22, 6943--6960.
[arXiv:1510.01583](https://arxiv.org/abs/1510.01583).
</span>

<span id="addington-bragg">
[2] Nicolas Addington and Daniel Bragg, *Hodge numbers are not derived
invariants in positive characteristic*, Math. Ann. **387** (2023), 847--878.
[arXiv:2106.09949](https://arxiv.org/abs/2106.09949).
</span>

<span id="caldararu-willerton">
[3] Andrei Căldăraru and Simon Willerton, *The Mukai pairing, I: a
categorical approach*, New York J. Math. **16** (2010), 61--98.
[arXiv:0707.2052](https://arxiv.org/abs/0707.2052).
</span>

<span id="huybrechts">
[4] Daniel Huybrechts, *Fourier--Mukai transforms in algebraic geometry*,
Oxford Mathematical Monographs, Oxford University Press, 2006.
</span>

<span id="orlov">
[5] Dmitri Orlov, *Derived categories of coherent sheaves and motives*,
Russian Math. Surveys **60** (2005), 1242--1244.
[doi:10.1070/RM2005v060n06ABEH004292](https://doi.org/10.1070/RM2005v060n06ABEH004292).
</span>

<span id="popa-schnell">
[6] Mihnea Popa and Christian Schnell, *Derived invariance of the number of
holomorphic $1$-forms and vector fields*, Ann. Sci. Éc. Norm. Supér. (4)
**44** (2011), 527--536.
[doi:10.24033/asens.2149](https://doi.org/10.24033/asens.2149).
</span>

<span id="voisin">
[7] Claire Voisin, *Hodge theory and complex algebraic geometry, I*,
Cambridge Studies in Advanced Mathematics **76**, Cambridge University Press,
2002.
</span>
