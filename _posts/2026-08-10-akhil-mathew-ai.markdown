---
layout: post
title:  "Akhil Mathew on AI and mathematical research"
stitle: "Akhil Mathew on working with AI"
tags: 2026
description: "An interview with Akhil Mathew about using AI for mathematical research, including an AI-assisted counterexample to a question of Grothendieck."
excerpt: "Akhil Mathew discusses how he uses AI for mathematical research, including an explicit counterexample to a question of Grothendieck that was formalized in Mathlib."
image: /assets/social/akhil-mathew-ai.png
---

*This interview has been edited for length and clarity.*

On 10 August 2026, I spoke with Akhil Mathew, a professor of mathematics at the University of Chicago, about his recent use of AI in mathematical research. Working with OpenAI’s Codex and ChatGPT and Anthropic’s Claude, Mathew obtained an explicit counterexample to [a question of Grothendieck](https://www.mat.uniroma2.it/~schoof/schoof_oortAAG.pdf) about finite locally free group schemes [[1]](#schoof). The construction was subsequently formalized, reviewed, and [merged into Mathlib](https://github.com/leanprover-community/mathlib4/pull/41748) [[3]](#mathlib-pr). We discussed what the systems contributed, which systems were used, how the result was checked, and what remains open.

**Benjamin Antieau:** Could you introduce yourself?

**Akhil Mathew:** I’m Akhil Mathew. I work mostly in algebraic topology and arithmetic geometry at the University of Chicago. I’ve been using AI tools for just the past few months, experimenting with how they can be used both for questions that I’ve been thinking about and for other questions in related areas.

## A question of Grothendieck

**Benjamin Antieau:** We first started talking about this because you found a counterexample with AI assistance. Can you tell me about that?

**Akhil Mathew:** There is an old question in algebraic geometry: if you have a finite locally free group scheme of order *n* over a base, is it killed by *n*? In other words, does Lagrange’s theorem hold for group schemes instead of groups? It is known in the commutative case and over a field. The question is whether it is true in general.

*Editor’s note: Informally, “killed by n” asks whether taking the nth power always gives the identity—the group-scheme analogue of a familiar consequence of Lagrange’s theorem for finite groups.*

At some point it occurred to me that this might be the kind of question an AI could explore. In principle, for any *n*, it is a very explicit calculation, except that it involves a gigantic ring and a huge number of variables. If the statement was not true, perhaps an AI could find a counterexample.

It did find one: a group scheme of order four that is not killed by four, over a finite ring of length 9 with 2⁹ elements. As far as I understand—though I do not fully understand its reasoning—it reduced the problem using certain classes of deformations. There is an existing observation that it suffices to work over finite rings, so in some sense this is really a problem about finite sets.

I think it realized that a productive place to look was among deformations of α₂ × α₂, a particular group scheme over F₂, and perhaps certain ramified deformations of it. As far as I could tell, it wrote down various deformations and did a number of calculations in commutative algebra, perhaps using [Macaulay2](https://www.macaulay2.com/) and related tools [[2]](#macaulay2). Eventually it found the counterexample and wrote it up as a PDF.

## More than brute force

**Benjamin Antieau:** How significant is this kind of result?

**Akhil Mathew:** I do not feel qualified to evaluate that, but it is certainly something people had thought about. People had not previously been able to write down a counterexample, and the counterexample is quite intricate.

**Benjamin Antieau:** What did the large language model bring to the table that a human working on the problem might not have?

**Akhil Mathew:** I think the AIs have extremely powerful search tools now. My impression is that they have become extremely clever. They are trained on the whole mathematical literature, and they have very powerful searches.

For questions like this, the answer may be more interesting if the statement is true than if it is false. But if it is false, you have to search for a counterexample. Searching through a large space is hard for humans, while machines are very good at it. A machine with a lot of cleverness—and, in some sense, a lot of RAM—can have an advantage over a human.

**Benjamin Antieau:** So perhaps the strategy is somewhat clear, but a human might run out of steam after trying examples over rings of length four, length five, and so on?

**Akhil Mathew:** I would qualify that. I certainly do not understand exactly what it was doing, but it was definitely not a pure brute-force search. A pure brute-force search is probably intractable even now. There was some curation.

It did not simply write down the universal object and calculate there, even though the problem reduces to that in principle. It wrote down some subset of the universal object that the AI understood to be a reasonable place to look for a counterexample, and then did the calculation there.

## What remains open

**Benjamin Antieau:** One more mathematical point: the question of what happens in pure characteristic *p* remains open, as I understand it.

**Akhil Mathew:** Yes.

**Benjamin Antieau:** That seems worth highlighting. The tools do not simply answer every question.

**Akhil Mathew:** In my experience, they do not answer most of the questions I ask. Once in a while, they answer one.

For this question, for example, you could ask lots of natural follow-up questions. If you have a group scheme of order *n*, what is the minimal *m* that kills it? What is the maximal possible order? And so on. You can answer one question, especially with a counterexample, but then that generates infinitely more questions.

## Tools and workflow

**Benjamin Antieau:** What software are you using, and what does the workflow look like?

**Akhil Mathew:** Primarily, I have used ChatGPT and Codex. The group-scheme problem was mostly an experiment for me, but for another project I used Codex in VS Code quite a bit to help proofread and edit a paper, as well as to ask questions and have a dialogue with it. This was with GPT-5.5, before 5.6. In some cases it suggested results; in many cases, through the back-and-forth, it found mistakes in what it was doing.

I also use Claude and experimented with Claude Code. The University of Chicago now has a Claude subscription, so I use that to help with things as well.

For the group-scheme question, my prompting was very naïve. I essentially asked it the question and told it that it could use Macaulay2 and other tools on the computer. Sometimes I asked Codex to create an archive of what it was doing, then uploaded that archive—or a handoff—to ChatGPT. I am very new to this, so I would not suggest that these are best practices. It is simply what I was doing.

**Benjamin Antieau:** What subscription tier are you using? You mentioned that the University of Chicago provides access to Claude. What about GPT?

**Akhil Mathew:** For the past couple of months, I have been paying $200 per month for ChatGPT Pro. I have been paying out of pocket, though I hope to have that reimbursed through a grant. I am also planning to apply for [ChatGPT for Academic Researchers](https://openai.com/index/chatgpt-for-academic-researchers/).

## Using AI for research and learning

**Benjamin Antieau:** How are you using it now? Do you work on one question at a time, or do you have several prompts running at once?

**Akhil Mathew:** I have many prompts going at once. I also use it when I am trying to learn something. That is different from asking it a research question. If I am trying to read a difficult paper, I can give it the paper, ask it questions, and ask it to explain the material in an elementary way.

That is very helpful. Many papers are hard to read. It is easier if you can talk to the author, and perhaps the next best thing is to talk to a very smart chatbot. I have used it as a way of learning things and getting feedback.

**Benjamin Antieau:** How long do the research tasks run?

**Akhil Mathew:** Sometimes I let a question run overnight, or even longer. If it needs to think and run experiments, it might take a couple of hours. Ideally, it comes back with a much better answer after a few hours than after ten minutes. For smaller questions—help understanding something, or correcting something I am writing—it takes much less time.

I have also used the Goal feature in ChatGPT. Sometimes, for a difficult research question, I explicitly say, “Work for three hours or until you solve the problem.”

## Verification and formalization

**Benjamin Antieau:** How did you check that the AI-assisted result was correct?

**Akhil Mathew:** It is explicit. To be honest, I did not check every bit of algebra; I basically asked another AI to check it.

If the result were more conceptual, I would try to check it myself and ask further questions. In this case, I asked it to simplify the result because the original example involved something like 45 variables. It was a gigantic ring. I also find it helpful to ask the AI to explain its result in a simple way.

**Benjamin Antieau:** Did you use autoformalization or other formalization tools?

**Akhil Mathew:** Yes. Kevin Buzzard encouraged me to use Claude to autoformalize it and submit a pull request to Mathlib, so I did that.

**Akhil Mathew:** Hopefully there will eventually be a different place to record this as well. Although Mathlib is the durable part of the infrastructure, it would be nice to make the written account available in some form—perhaps as a paper.

*Editor’s note: [Mathlib pull request #41748](https://github.com/leanprover-community/mathlib4/pull/41748) formalizes the counterexample, including the finite-free rank-four Hopf algebra and the fact that its fourth power map is not the constant map to the group identity. After review, the pull request was merged into Mathlib on 3 August 2026. The Mathlib contribution discloses that the construction and formalization were carried out with Codex and Claude under Mathew’s direction [[3]](#mathlib-pr).*

## Related reading on mathematics and AI

- [Hodge numbers are derived invariants for complex fourfolds]({% link _posts/2026-07-31-hodge-fourfolds.markdown %})
- [Perry: period-index is false]({% link _posts/2026-08-05-period-index.markdown %})

## References

<span id="schoof">
[1] René Schoof, *Is a finite locally free group scheme killed by its order?*,
9 December 2017,
\[[PDF](https://www.mat.uniroma2.it/~schoof/schoof_oortAAG.pdf)\].
</span>

<span id="macaulay2">
[2] Daniel R. Grayson and Michael E. Stillman, *Macaulay2, a software system
for research in algebraic geometry*,
[Macaulay2](https://www.macaulay2.com/).
</span>

<span id="mathlib-pr">
[3] *A finite free group scheme
of order four not killed by four*, contribution to Mathlib, pull request no.
41748 (2026),
[GitHub](https://github.com/leanprover-community/mathlib4/pull/41748).
</span>
