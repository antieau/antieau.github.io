---
layout: post
title:  "Jürgen Klüners and Gunter Malle on the inverse Galois problem and computation"
stitle: "Klüners and Malle on IGP24"
social_title: "Klüners and Malle on IGP24"
tags: 2026
description: "An interview with Jürgen Klüners and Gunter Malle about the SAIR IGP24 competition, computational Galois theory, and using AI to automate their submission workflow."
excerpt: "Jürgen Klüners and Gunter Malle discuss their search for degree-24 Galois groups, the computational methods behind it, and a practical use of AI."
image: /assets/social/gunter-malle-juergen-klueners-ai.png
---

*Zoom assigned both guests the speaker label “Juergen Klueners.” The attributions below have been reconstructed from memory and context. This interview has been compressed and edited for length and clarity with the assistance of OpenAI’s Codex.*

On 25 August 2026, I spoke with Jürgen Klüners, a professor of mathematics at Paderborn University, and Gunter Malle, a professor of mathematics at RPTU Kaiserslautern-Landau, about their work on the [SAIR Foundation’s Inverse Galois Problem in Degree 24 competition](https://competition.sair.foundation/competitions/igp24/overview) [[1]](#sair). (Their team KLPB won.) The challenge asked participants to find explicit degree-24 polynomials for every possible transitive Galois group and signature. We discussed why existence theorems do not make these polynomials easy to find, the complementary computational strategies they used, the role of OSCAR and Magma, and how AI helped them automate their submission workflow.

**Benjamin Antieau:** Thanks for taking the time to chat. I’m Ben Antieau. I’ve been doing these interviews partly to highlight how people are using artificial intelligence today, but I’m also interested in computer use in mathematics more generally. Let me ask you both to introduce yourselves.

**Gunter Malle:** I’m Gunter Malle. I’m mainly interested in representation theory of finite groups of Lie type. But since my childhood, I’ve also been interested in polynomials and a little bit in Galois theory.

**Jürgen Klüners:** My name is Jürgen Klüners. I started in computational number theory. I did my PhD in Berlin, and at that time I worked with KANT. KANT is now part of Magma, so I’m still a little bit involved in Magma. Now I’m working more on asymptotic questions, like Malle’s conjecture and things like that. But I think that for both of us, producing polynomials is still a kind of hobby. We’ve been doing it for a long time, and from time to time it’s still a nice thing to do.

**Gunter Malle:** Maybe there’s one thing I should add, since you mentioned computer algebra systems. Right now I’m the speaker of [SFB-TRR 195](https://gepris.dfg.de/project/286237555), a very big project in Germany funded by the DFG that developed, and is continuing to develop, the system [OSCAR](https://www.oscar-system.org/). It aims to put together some of the individual computer algebra systems that were developed mainly in Germany. I’m not myself really programming anything for OSCAR, though.

## The IGP24 competition

**Benjamin Antieau:** The context for this conversation is that the SAIR Foundation hosted a competition on the inverse Galois problem in degree 24. Could you state the exact problem to solve in this competition?

**Gunter Malle:** The challenge was to produce at least one polynomial for every transitive group of degree 24 and for every possible signature. There was a system to weight the various submissions. It wasn’t exactly the number of successes; it also depended on how many other people had the same polynomial, or whether you were the only one to get it.

**Jürgen Klüners:** At some point we learned that there was this competition. Gunter took the initiative to open an account and produce some first examples. Then I talked to him and said, “Let us do it together,” in some sense. In the beginning, our biggest problem was how to submit them, not how to produce them. At least I spent more time than I should have done.

We have this database up to degree 23, and some years ago we tried to fill in more or less all the signatures in degree 16. We were almost successful. In degree 12, you have 301 groups; in degree eight, you only have 50 groups [[2]](#database).

**Benjamin Antieau:** What makes this hard?

**Gunter Malle:** First of all, the sheer number, of course. But there is also no recipe here. The inverse Galois problem is open in general. It wasn’t even known to have a positive answer for all transitive groups of degree 24. Until a few weeks ago, it was open in degree 23.

## Why solvable groups are still difficult

**Benjamin Antieau:** Most of these transitive groups of degree 24 are solvable, and there’s a famous theorem that says solvable groups are all realized as Galois groups. So what’s the problem?

**Jürgen Klüners:** One would have to implement this solution by Shafarevich. The major problem is that Shafarevich’s proof is constructive in principle, but, in my eyes, you take your favorite group, look at its factor groups, and take a series of groups. In order to solve the next step, I think you need the splitting field. This is something computer algebra people do not like. If you have a group of order 100,000 at some point, it means you have to produce a number field of degree 100,000, and there are groups larger than this number.

If the degree—or the order of the group—is reasonably small, you can compute those polynomials. But the trick is what to do for all the larger groups. For the smaller groups, you can compute the normal closure. If you can compute the normal closure of something, you can compute abelian extensions. Then you have your embedding problem. You can compute the module and you have the module action, and then you can do something. But if your group becomes bigger, you have a practical problem on your computer. You have to do something else.

Let me mention another problem that is very important. In Shafarevich’s approach, at some point you construct a larger group and then go down to a factor group, or quotient. With this approach, you can realize the quotient. But we were asked to realize all groups, including the signature restriction, and perhaps you have bad luck: the construction does not allow you to construct one of the signatures. For totally real fields, we are fine; it’s easy.

For instance, suppose you want to construct $C_2$-extensions by obtaining them as quotients of $C_4$-extensions. It’s a stupid example, but suppose that, for some reason, you know how to construct $C_4$-extensions. Then all the quadratic quotients you get are totally real. You never hit the imaginary one. Something like this can happen for larger groups, and then you have a problem with Shafarevich’s approach.

## From one field to its siblings

**Benjamin Antieau:** This competition was not only about the groups, but about realizing them as permutation groups—as transitive groups. If one knows the inverse Galois problem for a solvable group, does one know it for all transitive actions?

**Gunter Malle:** If you have one solution, then of course you get all the transitive actions, because transitive actions correspond to actions on cosets of subgroups. In fact, there are algorithms that go from one representation to another.

**Benjamin Antieau:** This is related to siblings.

**Jürgen Klüners:** That’s also something that we used very heavily. When I got a new situation, I tried to do this computation to get other degree-24 representations out of it. My feeling was that if I got one new one, I got three or four or five more new ones from this other computation. It was really quite useful.

## Complementary search strategies

**Benjamin Antieau:** The scoring worked in a slightly funny way, but I think you would have won by any scoring method. What were the fundamental methods you used to produce examples?

**Gunter Malle:** I started with relative quadratic extensions over degree-12 fields. I used an implementation in OSCAR for computing relative extensions. By chance, I had improved it just a few months ago in order to avoid hitting the wreath product too often. Usually, if you compute these relative extensions, what you get is the wreath product. But if you put some restrictions on the ramification and so on, then you can avoid getting the wreath product too often. It came in very handy. That’s what I did most of the time: these relative quadratic extensions.

**Benjamin Antieau:** So you controlled the relative quadratic extensions by targeting the ramification that the degree-12 field already had?

**Gunter Malle:** What my program can do is avoid having a prime that occurs in the discriminant of the resulting field only once. If there’s a prime like that, occurring to the first power, then the resulting group will be the wreath product. I can look at relative extensions and avoid that. Or one can even prescribe that all primes in the discriminant should occur to at least the third, fourth, or fifth power, or something like that. That will again avoid certain trivial configurations. Not completely, but it will give the other configurations a fair chance to happen.

**Jürgen Klüners:** I think what I did afterwards was a good complement. Gunter’s approach has the advantage that he takes a polynomial of degree 12 and looks at what he gets. What I did later was write a program in which I give it a target group of degree 24. I choose a degree-24 group, and I can determine what the corresponding subfield is. Say the degree-24 group is $G$ and the degree-12 group is $H$, so I have an epimorphism $\kappa$ from $G$ to $H$.

Sometimes you are lucky and can prove that the local conditions are not solvable. This means you know that for this degree-12 field you cannot find a solution, and you can skip this polynomial immediately. I only have some necessary conditions; they are not sufficient. It can still happen that I test polynomials and search for a group, but there is a global obstruction that I do not see, so I find nothing. At some point, you have to stop and free your processor for the next job.

At the moment, I don’t know whether the missing cases are just a matter of time and whether we will get them by using the same methods. I wasn’t able to finish all the computations I wanted to do because of a lack of computing power. It’s nicer to let the computer run and hope that it finds something.

**Benjamin Antieau:** Gunter, you have conjectures about the number of field extensions with a given Galois group. In principle, variants of those conjectures could inform this stopping problem. Did you use any ideas like that?

**Gunter Malle:** No. These conjectures are not precise enough to predict where you would find the first extension with a given group, in particular because they don’t make any guess whatsoever about the constants. The constant could be tiny, so the first one occurs very late. In any case, it’s asymptotic. Even if you knew the constant was very big, it could still be that the first group only comes very late.

It kind of gives you an idea which groups might be the bad ones—mainly those for which the asymptotic says that it grows only by $X^{1/20}$, or something. But that doesn’t really help you in computation. You just say, “Okay, I’m not surprised that this group is missing.”

**Benjamin Antieau:** I was looking this morning, and I think the first open group is 24T1958, which has order 768. It’s $C_2^3 \mathbin{.} \mathrm{GL}_2(\mathbb Z/4\mathbb Z)$. That was left open at signatures 8 and 16, and it is a quadratic extension of 12T49. What would you do to try to solve this?

**Jürgen Klüners:** I think we had other signatures, so we had fields for which the embedding obstruction was good. First, I have to check whether we can prove the local conditions, or whether we have to go further.

Perhaps I handled a case where I stopped too early. I may have had the right degree-12 field, but for some reason my stopping condition was too harsh. Because I didn’t have enough computing power, I said: let the job run for one or two hours. If it hasn’t finished after one or two hours, I kill the job. For some groups, that is not a good choice. But this is one path we can follow: we can continue the computation.

Also, if it’s a small group, I’m pretty sure that if you say it’s really important and give us, I don’t know, 1,000 euros to do it by some deadline, I will look at this group, and I have a lot of hope that I will find it. But if you do all the groups more or less by hand, I have other duties. That is perhaps a difficult thing.

## Computing resources

**Benjamin Antieau:** What kind of computing resources did you use? How many cores? Were you using a cluster?

**Gunter Malle:** I think I used maybe 30 or 40 cores at the same time. But I don’t really have very good algorithms to distribute the jobs, so I had to start all of them by hand, every single one, since I also had to do teaching and other stuff.

**Benjamin Antieau:** At least one other team reported using a truly crazy number of cores at once, like 3,400 or something.

**Jürgen Klüners:** I used one computer with 32 processors—64 with hyperthreading—which I bought in 2022. I had one machine that was quite useful with one terabyte of memory. But I don’t think the computing power is really impressive. I could have run more jobs.

## OSCAR, Magma, and Galois-group computation

**Benjamin Antieau:** You were using OSCAR, at least. Were you also using Magma or Sage or anything along those lines?

**Gunter Malle:** We had to use [Magma](https://magma.maths.usyd.edu.au/magma/) because it’s the only one, I think, that can reasonably compute Galois groups in degree 24. OSCAR can do it in principle, but not in practice, because the invariants needed to do the descent have not been optimized there. That is certainly something that needs to be done in OSCAR, but right now we use Magma for that.

**Benjamin Antieau:** Just as an aside, in my system I created a faster way to compute the Galois groups for these quadratic extensions. If you already know that you have a quadratic extension of a given degree-12 field, then you can compute it faster than with the generic Magma approach.

**Gunter Malle:** Do you have a special algorithm when you start with the degree-12 extension to compute the group?

**Benjamin Antieau:** It restricts the number of possible Galois groups. For a lot of groups, you can use cycle types—some decomposition data—and in degree 24 that already divides the possible Galois groups into relatively small buckets. If you also know that you contain a specific degree-12 field, in many cases that uniquely determines the group. It does not always finish. Occasionally you have to run the slower version.

**Gunter Malle:** That’s something I didn’t expect: that even in degree 24, the cycle shapes would narrow down the possibilities so much. I would have thought that in degree 24 there are so many groups.

**Jürgen Klüners:** Perhaps what you can do is use not only the cycle shapes. If you have the degree-12 subfield, you can partition the cycles according to the degree-12 subfield, which gives you more information than just the cycle shape.

**Gunter Malle:** So you keep in memory which degree-12 field you started from?

**Benjamin Antieau:** Exactly. You pass that as provenance information.

## AI for the submission workflow

**Benjamin Antieau:** You’ve already given me a lot of your time. Let me ask a little bit about AI use for your team.

**Jürgen Klüners:** We didn’t use AI for the actual computation. We started by submitting the polynomials by uploading a file, but at the beginning you could only submit 100 polynomials. This was really painful because we produced 10,000 new ones, or something like that. On some days we reached the limit.

Then I started trying to produce a script and failed. But then I had the idea to use AI and asked it to produce the script. It still took half an hour or so, and I think on the fourth or fifth attempt AI was able to produce a script we could use to submit the polynomials. That was helpful.

I also asked AI to produce a script to get back the data I had submitted. That was important because we had some stupid file where we stored which groups and signatures we had realized and the discriminant. We wanted that on our local computer so that, if we had a polynomial, we could decide whether we were interested in it or not. In principle, we submitted only polynomials that gave an improvement. I have the feeling that many other groups simply submitted polynomials. At some point there were several million polynomials in the queue.

## The final sporadic group

**Benjamin Antieau:** Let’s finish with one more question, in a totally different direction. What about the $M_{23}$ result from a few days or a couple of weeks ago [[3]](#m23)? Do you want to comment on its significance or interest?

**Gunter Malle:** It was a question that was open for a long time, so it’s nice to see it solved. On the other hand, it’s just one out of infinitely many groups that are still open. What can I say? The Fermat equation is also one out of infinitely many Diophantine equations. It was open for a long time, and people were very excited when it was finally solved, but there are still all these other Diophantine equations out there. To me, it’s a little bit like that—of course, on a very much smaller scale.

Of course, the main difference from the result on $M_{23}$ is that the proof of Fermat’s equation introduced a whole new array of methods and ideas, while the $M_{23}$ result is based on sheer luck: it just so happens that one extension that should only be defined over a degree-7 number field is actually defined over $\mathbb Q$. The authors do not have any explanation for why that happens. In particular, the paper does not provide a new “method” to realize groups, except: try your luck.

**Benjamin Antieau:** What’s the next open group? Do you know off the top of your head?

**Gunter Malle:** Among the simple groups, what is certainly open is the Suzuki group ${}^2B_2(8)$, the smallest of the simple Suzuki groups. This is the one Suzuki discovered in 1960. That’s not even known, I think, over $\mathbb Q^{\mathrm{ab}}$.

In my PhD, I did most of these exceptional groups of Lie type, but the Suzuki groups—which were the ones I started with—I never managed to realize over $\mathbb Q^{\mathrm{ab}}$, even over the maximal abelian extension. So that is definitely open. It’s in degree, I think, 65 or something.

**Jürgen Klüners:** There is also the question of which type of problem you ask. Are you asking over $\mathbb Q$, or are you asking over $\mathbb Q(t)$? Shafarevich is also only over $\mathbb Q$ by now. Even if you have some crazy 2-groups, it is not known whether you can realize them over $\mathbb Q(t)$. The first open groups are not that big.

If you have solvable groups, I think you have a tool: you have classical theory, you have Shafarevich, you have embedding problems, and I think you have some structure for what you can do. If you have nonsolvable groups, then for simple groups—for some groups you might have modular forms and things like that, but for most of them perhaps you do not have this approach. Then you have to use the rigidity method or some other method, and perhaps it is difficult to make progress.

## Related reading on mathematics and AI

- [Alex Perry on AI and mathematical research]({% link _posts/2026-08-19-alex-perry-ai.markdown %})
- [Akhil Mathew on AI and mathematical research]({% link _posts/2026-08-10-akhil-mathew-ai.markdown %})

## References

<span id="sair">
[1] SAIR Foundation, *Inverse Galois Problem in Degree 24 (IGP24)*,
[competition page](https://competition.sair.foundation/competitions/igp24/overview).
</span>

<span id="database">
[2] Jürgen Klüners and Gunter Malle, *A database for field extensions of the
rationals*, LMS J. Comput. Math. **4** (2001), 182--196.
\[[PDF](https://agag-malle.math.rptu.de/~malle/download/datbase.pdf)\].
</span>

<span id="m23">
[3] Xiaoyu Huang, Blake Jackson, Kyu-Hwan Lee, Bjorn Poonen, Rachel Pries, and
Shaowu Zhang, *The Mathieu group $M_{23}$ is a Galois group over $\mathbb Q$*,
[arXiv:2608.08538](https://arxiv.org/abs/2608.08538).
</span>
