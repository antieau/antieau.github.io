---
layout: post
title:  "Alex Perry on AI and mathematical research"
stitle: "Alex Perry on working with AI"
tags: 2026
description: "An interview with Alex Perry about using AI in mathematical research and his counterexample to the period–index conjecture."
excerpt: "Alex Perry discusses a productive false start with ChatGPT and the discovery of a counterexample to the period–index conjecture."
image: /assets/social/alex-perry-ai.png
---

*This interview has been compressed and edited for length and clarity with the assistance of OpenAI’s Codex.*

On 19 August 2026, I spoke with Alex Perry, an associate professor of mathematics at the University of Michigan, about his recent use of AI in mathematical research.

**Benjamin Antieau:** Could you introduce yourself and say a little about your work?

**Alex Perry:** I’m Alex Perry. I study algebraic geometry, and I work at the University of Michigan. Most of the things I think about are related in one way or another to the bounded derived category of coherent sheaves on varieties. The questions I like most relate that to classical problems in algebraic geometry, such as birational geometry, Hodge theory, or—as we’ll talk about today—Brauer groups.

## The period–index conjecture

**Benjamin Antieau:** This conversation got started because you proved something using AI assistance. What did you prove?

**Alex Perry:** The Brauer group is an invariant of a field that parametrizes central division algebras over that field. A Brauer class has two basic invariants. Its period is its order in the Brauer group, and its index is the square root of the dimension of the corresponding division algebra.

In general, the period divides the index, and the two integers have the same prime factors. Thus, the index divides some power of the period. The period–index conjecture predicts that for the function field of a variety over an algebraically closed field, the necessary power is the dimension minus one. What I did was give counterexamples to that conjecture as soon as the dimension is three [[6]](#perry).

## A Hodge-theoretic obstruction

**Benjamin Antieau:** How did you disprove it?

**Alex Perry:** Although the conjecture is stated for function fields, a theorem of de Jong and Starr reduces it to unramified Brauer classes—classes that extend to smooth projective models [[3]](#dejong-starr). Morally, then, the conjecture is about smooth projective varieties. Over the complex numbers, that makes Hodge theory available.

My approach goes back to work of my student James Hotchkiss. He introduced a Hodge-theoretic version of the index [[4]](#hotchkiss). The ordinary index can be described using the possible ranks of twisted sheaves or perfect complexes. Passing to topological K-theory gives an easier necessary condition: if the period–index conjecture is true, there must be an integral Hodge class of the predicted rank; see also [[2]](#dejong-perry).

James found that such a Hodge class always exists when the period is prime to the factorial of the dimension minus one. But for small primes, its existence would imply some strange-looking identities among Hodge classes on smooth projective varieties. When we saw those identities, we both thought, “Surely this conjecture is wrong.” It seemed very unlikely that they could hold universally without algebraic geometers having discovered them before.

Dimension three is the first interesting case. The conjecture is trivial in dimension one and is a theorem in dimension two. In dimension three, the Hodge-theoretic obstruction first appears for period-two classes.

**Benjamin Antieau:** What is the main insight behind the disproof in dimension three?

**Alex Perry:** There is a very simple-looking equation. Given a smooth projective threefold and a class $b \in H^2(X,\mathbb Z)$, consider

$$
b^2+bc+d\equiv 0 \pmod 2,
$$

where $c$ and $d$ are integral Hodge classes of degrees two and four. If you can find a class $b$ for which there are no such $c$ and $d$, then James’s theory gives a counterexample to the period–index conjecture.

For some classes of varieties, there is no Hodge-theoretic obstruction. For instance, for abelian threefolds special properties of their cohomology always give a Hodge class of the right rank, and James Hotchkiss and I used this as a starting point for actually proving the period–index conjecture in this case [[5]](#hotchkiss-perry).

To find a counterexample, you want a threefold with nonzero $H^{2,0}$, very few integral Hodge classes in degrees two and four, and computable integral cohomology. In other words, the variety must be generic enough to have few Hodge classes but explicit enough that you can calculate with it.

## The counterexample

**Benjamin Antieau:** What is the actual example?

**Alex Perry:** Take a generic quartic K3 surface in the Dwork pencil and any elliptic curve. The K3 surface has an action of $(\mathbb Z/4)^2$ coming from explicit projective automorphisms, while the same group acts on the elliptic curve by translation by four-torsion. The diagonal action on their product is free because it is free on the elliptic curve. The quotient is a threefold, and it turns out to give the counterexample [[6]](#perry).

**Benjamin Antieau:** Does this mean that the period–index conjecture is totally false, or might there be a corrected version?

**Alex Perry:** My feeling is that it is a fairly robust conjecture that is probably true in some corrected sense. You and Ben Williams proved a topological analogue with correction terms [[1]](#antieau-williams), and perhaps that version is true in the algebraic setting. What you proved is consistent with what we know: even this period-two class on a threefold satisfies the same corrected bound.

## A convincing false start

**Benjamin Antieau:** Let’s turn to AI. What role did it play in the project?

**Alex Perry:** It was a strange experience. I was using ChatGPT in the browser; I don’t use Codex. I interacted with it almost as I might with a person or a graduate student whom I had asked to carry out a computation, except that it came back much faster.

James and I had already tried a number of examples by hand. None worked, but I was sure we had not exhausted the possibilities. I asked ChatGPT about several of those examples, and it correctly confirmed that they did not work. That built up some trust. I then asked it to consider other examples, like complete intersections in hyperkähler varieties, resolutions of certain quotients of abelian threefolds, and variations on quotients of products by groups.

After a couple of days of occasional questions, it suggested an example that it thought would work: an abelian surface—the square of an elliptic curve—times another curve of higher genus, followed by a quotient by $\mathbb Z/4$. We went back and forth, and I started to become convinced.

Then I asked why it was using a strange basis in one of its computations. Its answer was essentially that the calculation would not work in another basis. I thought, “Hold on—it can’t depend on the choice of basis.” It agreed that this was a fatal error.

Eventually, I tracked down the problem. It had hallucinated a formula involving cup products of classes on a curve with local coefficients and Poincaré duality. That broke the whole argument, and I now think the proposed example probably does not have a Hodge-theoretic obstruction at all.

Still, the failed example forced me to think hard about that particular shape of construction. At first, the experience had almost the opposite of the intended effect: after wasting several days, I was so frustrated that I stopped thinking about the problem for a month or more. But I was probably still working on it subconsciously.

When I returned to the problem, it was clearer why the abelian surface was not a good choice. Its $H^1$ introduces mixed terms in the Künneth decomposition and makes the equations much harder to analyze. With K3 surfaces, you are led to symplectic group actions. Those actions are classified, and among 2-primary groups, only a handful could possibly work. Once I started thinking about it that way, the example fell into place quickly. The failed AI example had nevertheless helped push me in that direction.

## Tools and workflow

**Benjamin Antieau:** Did you continue using the model after you returned to the problem?

**Alex Perry:** Definitely. It quickly located literature on symplectic actions on K3 surfaces, the groups that occur, and the known models. It was also useful for lattice-theory computations and for checking my work. Its role at that stage was more conventional, but it still sped up the analysis considerably.

**Benjamin Antieau:** This sounds more like an interaction with a collaborator than a single-shot prompt.

**Alex Perry:** Exactly. When I use it, it feels a little more like talking to a human. It has a name, too. My guy’s name is Fred.

**Benjamin Antieau:** Was there a change in models over the course of the project?

**Alex Perry:** I think so. When I first discussed the problem with it, I was definitely using GPT-5.5. When I went back to working on the problem after I had the idea of trying K3 surfaces with a symplectic group action, I was using GPT-5.6.

**Benjamin Antieau:** Are you using a paid subscription?

**Alex Perry:** Yes, I have the $200 plan.

**Benjamin Antieau:** Who pays for it?

**Alex Perry:** It is through Michigan, using grant money or other university funding.

**Benjamin Antieau:** So Michigan reimburses you for it?

**Alex Perry:** Yes. You can pay for it with funding you have from Michigan.

**Benjamin Antieau:** Are you continuing to use it?

**Alex Perry:** Yes. There are other questions of a similar nature—where you may just need to find the right example—that I want to explore more extensively. Lately, however, I have mostly used it for literature searches and small technical questions while I finish other projects. I expect my usage will change when I have more time.

**Benjamin Antieau:** Did you experiment with autoformalization?

**Alex Perry:** No. I would be interested in it, and it would be cool if someone autoformalized this result.

**Benjamin Antieau:** Was there any computer algebra work in the background? Was it running Python scripts or anything like that, to your knowledge?

**Alex Perry:** I have no idea what it was doing. It would produce text, and I would decide whether what it said made sense, but I did not investigate how it was computing anything.

## Looking ahead

**Benjamin Antieau:** Do you have any concluding thoughts about the period–index problem and using AI in research?

**Alex Perry:** The counterexample opens many questions about what the correct period–index conjecture should be and about other counterexamples one might look for.

As for AI, the experience was strange, but I am excited about it. In one sense it was like interacting with another mathematician. But there is an important difference: I don’t feel bad wasting Fred’s time, at least not yet.

Having someone you can ask to carry out possibly mindless computations based on what may be a stupid idea was very useful. I would hesitate to give such tasks to a graduate student because there is a high chance of no reward at all. If you do not find a counterexample, you get almost nothing—not even a paper. Mathematicians generally have little incentive to search for counterexamples, and that is probably a large part of why we are seeing many more of them now.

**Benjamin Antieau:** Was this your first major project using AI assistance?

**Alex Perry:** Yes. It was one of the first things I asked Fred about. I have tried some other mathematical questions, but they have not panned out yet.

## Related reading on mathematics and AI

- [Akhil Mathew on AI and mathematical research]({% link _posts/2026-08-10-akhil-mathew-ai.markdown %})
- [Perry: period-index is false]({% link _posts/2026-08-05-period-index.markdown %})
- [Hodge numbers are derived invariants for complex fourfolds]({% link _posts/2026-07-31-hodge-fourfolds.markdown %})

## References

<span id="antieau-williams">
[1] Benjamin Antieau and Ben Williams, *The topological period-index conjecture*,
Math. Res. Lett. **28** (2021), no. 5, 1307--1317.
[arXiv:2003.10539](https://arxiv.org/abs/2003.10539).
</span>

<span id="dejong-perry">
[2] Aise Johan de Jong and Alexander Perry, *The period-index problem and Hodge theory*,
[arXiv:2212.12971](https://arxiv.org/abs/2212.12971).
</span>

<span id="dejong-starr">
[3] Aise Johan de Jong and Jason Starr, *Almost proper GIT-stacks and discriminant
avoidance*, Doc. Math. **15** (2010), 957--972.
[doi:10.4171/DM/319](https://doi.org/10.4171/DM/319).
</span>

<span id="hotchkiss">
[4] James Hotchkiss, *Hodge theory of twisted derived categories and the period-index
problem*, [arXiv:2212.10638](https://arxiv.org/abs/2212.10638).
</span>

<span id="hotchkiss-perry">
[5] James Hotchkiss and Alexander Perry, *The period-index conjecture for abelian
threefolds and Donaldson--Thomas theory*,
[arXiv:2405.03315](https://arxiv.org/abs/2405.03315).
</span>

<span id="perry">
[6] Alexander Perry, *The period-index conjecture is false*,
[arXiv:2608.03684](https://arxiv.org/abs/2608.03684).
</span>
