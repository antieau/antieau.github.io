---
layout: post
title:  "A de Rham cohomology example"
tags: homology examples
---
<div style="display:none">
$
\newcommand\L{\mathrm{L}}
\newcommand\E{\mathrm{E}}
\newcommand\H{\mathrm{H}}
\newcommand\dR{\mathrm{dR}}
$
</div>

While discussing an interesting forthcoming preprint [2], I asked [Shubhodip Mondal](https://lsa.umich.edu/math/people/phd-students/smondal.html)
whether there was an example in characteristic $$0$$ where Hodge-complete
derived de Rham cohomology is not coconnective, i.e., whether there is a
map of commutative $$\mathbf{Q}$$-algebras $$k\rightarrow R$$ such that $$\H^n(\widehat{\mathrm{dR}}_{R/k})\neq 0$$
for some $n<0$. Such examples are known in characteristic $p$ by [1]. He suggested the following example of Bhatt.

Let $R=\mathbf{Q}[x^{1/2^\infty}]/(x)$. It is easy to see that the cotangent
complex $\L_{R/\mathbf{Q}}$ of $R$ has Tor-amplitude in $[-1,0]$ as it is a
filtered colimit of lci commutative $\mathbf{Q}$-algebras. It follows from the
cofiber sequence
$\mathbf{Q}\otimes_R\L_{R/\mathbf{Q}}\rightarrow\L_{\mathbf{Q}/\mathbf{Q}}\rightarrow\L_{\mathbf{Q}/R}$
that if
we let $R\rightarrow\mathbf{Q}$ be the map which sends $x^{1/2^n}$ to zero for
each $n$, then $\L_{\mathbf{Q}/R}$ has Tor-amplitude in $[-2,-1]$. However, an
easy exercise shows that in fact that Tor-amplitude of $\L_{\mathbf{Q}/R}$ is
in $[-2,-2]$ and moreover that $\L_{\mathbf{Q}/R}\simeq\mathbf{Q}[2]$.

Now, recall the Hodge--de Rham spectral sequence
$$\E_2^{s,t}=\H^t(\Lambda^s\L_{\mathbf{Q}/R})\Rightarrow\H^{s+t}(\widehat{\dR}_{\mathbf{Q}/R}).$$
The derived exterior powers $\Lambda^s(\mathbf{Q}[2])$ vanish for $s>1$, so the
spectral sequence collapses and we find
$\H^*(\widehat{\dR}_{\mathbf{Q}/R})\cong\mathbf{Q}[z]/(z^2)$ where $|z|=-1$.

This example is in contrast to the results of Bhatt in [1], which in
particular say that if $k\rightarrow R$ is a finite type map of noetherian
$\mathbf{Q}$-algebras, then $\widehat{\mathrm{dR}}\_{R/k}$ _is_ coconnective.

If we drop the requirement that the commutative $\mathbf{Q}$-algebras $k$ and $R$ are discrete, it is very easy
to come up with examples where the Hodge-completed derived de Rham cohomology
is not coconnective. For example, a kind of universal example is given by
considering $R=\mathbf{Q}[x]/(x^2)$ where $|x|=-1$ (the free cdga over
        $\mathbf{Q}$ on a
class in cohomological degree $-1$) and the map $R\rightarrow\mathbf{Q}$ which sends $x$ to $0$.
As above, we have $\L_{\mathbf{Q}/R}\simeq\mathbf{Q}[2]$ and the rest of the
computation is the same. This line of thinking led us to a nice example for
periodic cyclic homology, described in the next [post]({% post_url 2020-12-02-hpexample %}).

# References

[1] Bhatt, _Completions and derived de Rham cohomology_, [<tt>arXiv:1207.6193</tt>](https://arxiv.org/abs/1207.6193). 

[2] Mondal, _forthcoming_.
