---
layout: post
title:  "What I have asked AI about mathematics"
stitle: "What I asked AI about mathematics"
social_title: "What I asked AI about mathematics"
date: 2026-09-04
tags: 2026
description: "An audit of the mathematics questions and major computer-algebra tasks I have asked AI."
image: /assets/social/what-i-asked-ai-about-mathematics.png
---

I have been using agentic systems heavily since February 2026, mostly for coding, but more recently
for mathematics. Despite the insane successes, most lines of inquiry do not directly solve big
open problems. They usually surface facts I was not aware of or next cases or interesting
propositions.

These theorems and questions reflect my mathematical tastes and interests.
Despite the brief summaries below, many of these led to multiple-day runs or conversations.
Some of the questions below were contributed by colleagues of mine, like Nick Addington or Achim
Krause, or arose from the FRG working group which led to the Hodge numbers of fourfolds example I
wrote about [here](https://antieau.github.io/2026/07/31/hodge-fourfolds.html).

In one census, I recovered **2,271** computer algebra scripts written and run by the agents across
31 mathematics sessions. One additional temporary script was identified but could not be recovered.
This does not include the work I did on the [SAIR IGP24
competition](https://competition.sair.foundation/competitions/igp24/overview).

The models used below were a mix of Opus 4.8, Opus 5.0, Fable 5.0 from Anthropic and ChatGPT 5.6 Sol from OpenAI.

Below is a summary, created with the help of ChatGPT, of those conversations.
Here is a table.

| Mathematical questions not solved by these AI runs | 12 |
| Not solved by my AI runs, but subsequently solved by others | 2 |
| Produced a theorem, disproof, computation, or definitive answer | 9 |
| Large programming tasks unfinished | 3 |
| Computer-algebra scripts recovered in the census | 2,271 |

The quoted questions are exact except for light copyediting of notation and obvious typographical errors.
“Internally reviewed” means checked by another model; it does not mean independently checked by mathematicians.


# Not solved by these AI runs

**Question 1.** Orlov's conjecture predicts that derived equivalent smooth projective varieties over finite fields have the same zeta functions (and hence the same number of points). Give a counterexample.

***Remark.*** *No counterexample was found. For derived-equivalent fourfolds, the run obtained the exact reduction*
$$
\#X(\mathbf F_{q^n})-\#Y(\mathbf F_{q^n})
=(q^n-1)^2\left(\operatorname{Tr}(F^n\mid H^2(X))-\operatorname{Tr}(F^n\mid H^2(Y))\right).
$$


**Question 2.** An old folklore conjecture asserts that every smooth proper dg category over the complex numbers is geometric, i.e. admits a fully faithful functor to $D^b(X)$ for $X$ a smooth proper scheme. I've always suspected this should be false. It's worth thinking about stacks, but if a counterexample comes from that direction, we'd just expand the notion of geometric and would still be hoping for a genuinely noncommutative counterexample. Can you find one?

***Remark.*** *No. The run eliminated several candidates, including bounded acyclic complexes of vector bundles, nonprojective complex tori, and various finite or periodic $A_\infty$ categories. The general geometricity question remains open.*


**Question 3.** Construct new examples of smooth compact hyperkähler manifolds that are not of K3/abelian type or the two exceptional examples of O'Grady.

***Remark.*** *No new example was constructed. The best candidate is a $20$-dimensional relative Picard space associated to Gushel--Mukai geometry. Smoothness along the compactification boundary and nondegeneracy of the symplectic form remain unproved.*


**Question 4.** Let $\alpha$ be a Brauer class and let $\operatorname{degset}(\alpha)$ be the set of degrees of Azumaya algebras representing it. If $n$ is prime to $\operatorname{per}(\alpha)$, is
$$
\operatorname{degset}(n\alpha)=\operatorname{degset}(\alpha)?
$$
As far as I can tell, there is no reason it should hold. Find a smooth projective or affine counterexample.

***Remark.*** *The scheme question remains open. The run found a stack counterexample on $B\mathrm{PGL}_5$: the universal class has a degree-five representative, while twice the class does not. Topologically, unit multiples have the same degree-set, so a scheme counterexample must be genuinely algebraic. The stacky counterexample and the topological case were known to Ben Williams and myself.*


**Question 5.** Prove or disprove the Grothendieck--Katz $p$-curvature conjecture.

***Remark.*** *The general conjecture was not solved. An agent extracted an internally reviewed finite-monodromy/Gauss--Manin special case and an explicit rank-two $S_3$ example. This is best regarded as a consequence or specialization of Katz's work unless a literature check shows otherwise.*


**Question 6.** I'd like to produce an example of a non-reduced commutative $\mathbf Q$-algebra $R$ such that $L_{R/\mathbf Q}=0$. I know the following from general principles: if $S$ is $R$ modulo its nilradical $N$, then $N^2=N$. So, it's some kind of almost setting. I wouldn't be shocked if there were either (a) an example with $S=\mathbf Q$ or if no example is possible, in which case I'd like a proof.

***Remark.*** *Neither outcome was obtained. The run constructed finite zero-cotangent transition blocks and reduced the problem to an explicit embedding problem for suspended monomial complete intersections*
$$
\mathbf Q[x_1,\ldots,x_e,t]/(x_1^N,\ldots,x_e^N,t^2+f).
$$


**Question 7.** A folklore conjecture asserts that a degree $p$ division algebra is cyclic. More conservative people would hope this is true over function fields of surfaces over the complex numbers. It is true for $p=2,3$ and maybe $5$. Can you prove it or disprove it in any form?

***Remark.*** *The run did neither. In degree five it isolated the $F_{20}=C_5\rtimes C_4$ normal-closure case and reduced it to descent through the cyclic quartic intermediate field.*


**Question 8.** Prove or disprove Amitsur's conjecture involving birationality of Severi--Brauer varieties.

***Remark.*** *The degree-eight case remains open. The run reduced a possible counterexample to classes with $[B]=3[A]$, excluded several standard Cremona transformations, and isolated a $V_4$-descent problem. [Kollár's proof for non-prime-power index](https://arxiv.org/abs/2505.24720) does not cover this case.*


**Question 9.** Search for an indecomposable rank-two bundle on $\mathbf P^6$ or $\mathbf P^7$ in characteristic two, as a route toward Hartshorne's conjecture.

***Remark.*** *No new bundle was found. The [Hartshorne experiment](https://github.com/tertius-ai/tertius/tree/main/experiments/hartshorne) reproduced the Tango bundle on $\mathbf P^5$ and established that its free-monad search strategy cannot work on $\mathbf P^6$. A different ansatz is required.*


**Question 10.** Define higher Azumaya algebras, determine whether they are locally trivial in an étale or Gestalten topology, ask whether every higher $\mathrm{GL}_1$-cohomology class is represented by one, and develop the analogue of twisted sheaves. Can you also produce a genuinely derived $E_2$-algebra which is smooth and proper, or show that one cannot exist over an ordinary commutative ring?

***Remark.*** *The general higher Brauer program remains open. The run obtained a no-go result for connective or separable candidates over a field: any nontrivial example must be two-sided in cohomological amplitude and essentially nonformal.*


**Question 11.** Recent work places at least $2/3$ of Riemann zeta zeros on the critical line. Is it possible that this could have consequences for the appearance of GRH in the bounds used for algorithms for computing class groups?

***Remark.*** *No theorem resulted. The most concrete proposal is to verify RH to finite height for $\zeta_K$, bound the remaining zero contribution in a smooth explicit formula, and use the analytic class-number formula to certify the class number. The explicit constants remain to be derived.*


**Question 12.** Let $X$ be a finite type CW complex. Let $A$ and $B$ be truncated $E_\infty$-rings. Consider the natural map
$$
C^*(X,A)\otimes_A B\longrightarrow C^*(X,B).
$$
Is it an equivalence?

***Remark.*** *No general proof survived scrutiny. The finite-CW, dualizable-$B$, and finite-Tor-amplitude cases were established, but the truncation-only finite-type case remains unresolved after gaps were found in the inverse-limit and coherent-truncation arguments.*

# Not solved by my AI runs, but solved by others

**Question 13.** Construct a counterexample to the period-index conjecture: for $K$ finitely generated of transcendence degree $d$ over an algebraically closed field, every $\alpha\in\operatorname{Br}(K)$ satisfies
$$
\operatorname{ind}(\alpha)\mid\operatorname{per}(\alpha)^{d-1}.
$$
The frontier is $d=3$, i.e. $\operatorname{ind}\mid\operatorname{per}^2$.

***Remark.*** *The agent did not find a counterexample. It ruled out several abelian and bielliptic families. Alexander Perry then constructed a smooth projective threefold over $\overline{\mathbf Q}$ with a Brauer class of period two and index eight in [The period-index conjecture is false](https://arxiv.org/abs/2608.03684). His project was also AI-assisted, but Perry supplied and checked the mathematics. A later question—whether the example works over $\overline{\mathbf F}_2$—was answered negatively for the published construction; no characteristic-two replacement was found.*


**Question 14.** Find a Riemannian metric of strictly positive sectional curvature on $S^2\times S^2$.

***Remark.*** *The agent built a certifier and searched perturbations of the product and Cheeger-type metrics. Its best held-out minimum sectional curvature was about $-0.0094$. Simon Brendle and Pak-Yeung Hung then announced such a metric in [A metric on $S^2\times S^2$ with positive sectional curvature](https://arxiv.org/abs/2608.19068). Their preprint uses a Cheeger--Müter metric and a tailored third-order perturbation.*


# Produced a theorem, disproof, computation, or definitive answer

**Question 15.** Let $S$ denote the sphere spectrum and let $S_n=\tau_{\leq n}S$. Let
$$
\operatorname{FanSp}=\varprojlim_n^{\operatorname{Cat}^{\mathrm{dual}}_{\mathrm{st}}}\operatorname{Mod}_{S_n}.
$$
Is the natural functor $\operatorname{Sp}=\operatorname{Mod}_S\longrightarrow\operatorname{FanSp}$ an equivalence?

***Remark.*** *No. The functor is fully faithful, but an internally reviewed tensor-square argument establishes that $\operatorname{Sp}\to\operatorname{FanSp}^{\otimes2}$ is not essentially surjective. Under the self-duality equivalence*
$$
\operatorname{FanSp}^{\otimes2}\simeq\operatorname{Fun}^L(\operatorname{FanSp},\operatorname{FanSp}),
$$
*the identity endofunctor lies outside the image of $\operatorname{Sp}$. It follows that $\operatorname{Sp}\to\operatorname{FanSp}$ cannot be an equivalence.*


**Question 16.** There is a conjecture that if $X$ and $Y$ are derived equivalent smooth projective varieties over the complex numbers, then they have the same Hodge numbers. Can you find a counterexample to this conjecture, or prove it?

***Remark.*** *The general conjecture remains open, but Codex proved that the Hodge numbers agree for fourfolds. The new input is that topological signature is a derived invariant in every even complex dimension. Several mathematicians checked the proof; details are in [Hodge numbers are derived invariants for complex fourfolds](https://antieau.github.io/2026/07/31/hodge-fourfolds.html). The fivefold case remains open.*



**Question 17.** Let $M_X$ be the monoidal category of exact endomorphisms of $\operatorname{Perf}(X)$. It is a kind of “higher matrix algebra”: as a stable infinity-category it is $\operatorname{Perf}(X\times X)$, but its product is composition or convolution. Describe the grouplike $E_1$-space $\operatorname{Aut}_{E_1}(M_X)$, a higher analogue of $\mathrm{PGL}_n$.

***Remark.*** *Homotopical Skolem--Noether identifies it with autoequivalences of $\operatorname{Perf}(X)$ modulo scalar invertible objects, with a possible Brauer-stabilizer term. For connected $X$ over an algebraically closed field it is the autoequivalence group modulo shifts; for $X=\mathbf P^d$ it is $\mathrm{PGL}_{d+1}(k)\times\mathbf Z$.*


**Question 18.** Find me the smallest poset homotopy equivalent to $\mathbf{RP}^2$. Is this the smallest poset with $\mathbf Z/2$-torsion in its homology?

***Remark.*** *The answer is $13$ points, and $13$ is also the minimum size of a finite poset with torsion in integral homology. For the follow-up with $\mathbf Z/3$-torsion, only $13\leq m_3\leq17$ was established.*


**Question 19.** Does every $E_2$-algebra over a characteristic-zero field admit a natural $E_\infty$-algebra structure? I thought I remembered something like this.

***Remark.*** *No. A nonzero Browder--Gerstenhaber bracket is an immediate obstruction. Formality of the $E_2$ operad in characteristic zero does not make the bracket vanish.*


**Question 20.** What can you tell me about the Hochschild homology or cotangent complexes, relative to the complex numbers, of commutative unital $C^*$-algebras?

***Remark.*** *For $A=C(X)$ with $X$ infinite, algebraic Hochschild homology and the cotangent complex are large after forgetting the norm. Continuous or Banach Hochschild theory behaves oppositely: amenability kills positive-degree homology. For finite $X$, $C(X)$ is étale.*


**Question 21.** What is a hyperholomorphic sheaf on a hyperkähler variety?

***Remark.*** *It is a sheaf with an admissible Hermitian--Yang--Mills connection whose curvature has type $(1,1)$ for every induced complex structure. Equivalently, it corresponds to suitable holomorphic data on the twistor space.*


**Question 22.** I saw a recent arXiv preprint about an associative ring with vanishing Hochschild homology. It resolved some conjecture.

***Remark.*** *The paper was Kong--Liu--Shen, [A counterexample to Han's conjecture](https://arxiv.org/abs/2608.00177). The precise statement is $HH_n(A)=0$ for every $n\geq1$, not for $n=0$, while $A$ has infinite global dimension.*


**Question 23.** Is every finite locally free group scheme of order $n$ annihilated by $n$?

***Remark.*** *No. For $p=2,3,5$, the [Grothendieck rank-$p^2$ experiment](https://github.com/tertius-ai/tertius/tree/main/experiments/grothendieck_rank) checked examples not killed by $p^2$ but killed by $p^3$, and proved the associated power-carry identity uniformly. This was independent verification of a construction from Akhil Mathew's AI-generated GrothendieckRankP2 project.*



# Three large programming tasks not completed

AI agents have completed thousands of programming tasks in my codebase and my other projects. The following are three conspicuous computer-algebra targets which remain unfinished.

**Question 24.** Implement the [PARI/GP](https://pari.math.u-bordeaux.fr/) class-group algorithm natively.

***Remark.*** *This did not succeed with truly huge numbers of tokens. Although eventually agents
did create correct code, it is nowhere near as fast. The last time I did this experiment though was with Opus 4.6, so it would be good to revisit.*


**Question 25.** Implement [Rubi integration](https://rulebasedintegration.org/) from scratch.

***Remark.*** *Good results were obtained, but certainly not parity on Rubi.*


**Question 26.** Match the performance of [msolve](https://msolve.lip6.fr/) with a native polynomial-system solver.

***Remark.*** *Very good results have been obtained, but not matching `msolve` performance.*
