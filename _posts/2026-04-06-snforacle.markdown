---
layout: post
title:  "snforacle"
stitle: "snforacle"
tags: 2026
description: "New Python package snforacle giving a uniform interface for Smith normal form."
---

<link rel="stylesheet" type="text/css" href="/assets/asciinema-player.css" />
<div id="snf-demo"></div>
<script src="/assets/asciinema-player.min.js"></script>
<script>
  AsciinemaPlayer.create('/assets/casts/snf_demo.cast', document.getElementById('snf-demo'), { autoPlay: true, fit: "width", terminalFontSize: "small" });
</script>


If $M$ is an integer matrix, then the Smith normal form of $M$ is an $m\times n$ matrix $D$ with non-zero
entries concentrated along the diagonal given by $d_i=d_{i,i}$. These entries satisfy the
divisibility relation $d_i|d_{i+1}$. The matrix $D$ is uniquely determined by the requirement that
$UMV=D$ for $U$ and $V$ unimodular square matrices, where unimodular means that $\det(U)=\det(V)=1$.

An SNF algorithm is one which computes $D$ from $M$. In many cases, one also requires the
matrices $U$ and $V$, although these are not unique. The performance of SNF algorithms is somewhat
variable across different back ends and I required the ability to easily call these different forms
from a uniform Python package. `SAGE` performs just such an abstraction, but I did not want to
assume SAGE is available.

The construction of such a Python package would not have been difficult for me, but doing it well
would have taken 2-3 days of time, essentially spent on non-mathematical work. For that reason, I
provided `Claude Code` (henceforth Claude) with the following prompt.

`This will be a Python project aimed at exposing different libraries Smith normal form
algorithms via a uniform JSON interface.  The first interface should be to cypari2.
I would like this to be controlled by two JSON Schemas, one for dense integer matrices
and one for sparse integer matrices.  It should be validated by Pydantic.  Then, the main
exposed functions should take in as input an integer matrix in one of these JSON formats
and should output either the diagonal SNF matrix or the diagonal SNF matrix together with
the transformation matrices, both with appropriate JSON outputs.`

Pydantic is a Python library to automate the validation of Python classes. JSON is a standard for
making human-readable data formats that can also be read by machine.

The response to this first prompt was a handful of JSON schemas for input and output as well as a
working Pari back end. Since then, I have prompted Claude to add back ends for SAGE, Magma, and Flint
and to extend the functionality to Hermite normal form, matrices over finite fields $\bF_p$, and
matrices over $\bF_p[x]$.

In addition to those major features, Claude also created an implementation in pure Python for the
functionality above. There are now hundreds of tests designed to test the correctness of the system
and an extensive benchmarking suite. (Pari is the clear winner in the integer matrix tests.)

Here are some notes on the process.

1. Claude noticed quickly that Pari returns elementary divisors in a non-conventional order; without
   prompting, it created the appropriate permutation matrices to transform the Pari return type to
   the usual convention where $d_i$ divides $d_{i+1}$.

2. In our extensive testing we discovered a bug in `FLINT` which has now been [fixed](https://github.com/flintlib/flint/issues/2592) by their team.

3. I say we in the preceding paragraph for the following reason. In order to seriously test
   `snforacle`, I prompted Claude to create an *agent* to attempt to break the package using
   mathematics. The *evil-mathematician* agent it created based on my prompt has a system prompt
   which begins with
    *`You are an evil mathematician — a chaos-loving adversarial tester with deep expertise in linear algebra, number theory, and integer matrix computation. Your mission is to break code by crafting the most
    diabolical, pathological, and sneaky inputs imaginable. You take perverse delight in finding the edge cases that developers forgot.*
    and then goes on in detail.
    For the most part, this agent did not discover any big bugs, but it did result in a huge number
    of unit tests on a wide array of matrices.

4. The previous testing did reveal certain problems with huge input lines to MAGMA which were
   discovered with further testing.

5. In addition to the tests produced by the `evil-mathematician` agent, I instructed Claude to
   create a test comparing all back ends where possible. (Not each system makes available SNF and
   HNF over all of the rings in question.)


The utility demonstrated above by Claude is immense. I also had a lot of fun creating this little
utility and it is now live and being used in other parts of my work which are currently AI-free.
My confidence in the mathematical correctness of this system is higher than the typical standard in
computer algebra systems, in part because of the ability to easily create hundreds or thousands of
tests.

Despite my enthusiasm, there are some tasks at which Claude does not excel. I played around for 30
minutes one day attempting to create a video like the one above with `asciinema`, a Python package
which makes it possible to record terminal sessions and display them. These result in very
light-weight videos. I prompted Claude to create a video correctly displaying the SNF algorithm on
a small integer matrix. (I believe I first asked for a $4\times 4$ matrix.) After all, Claude had
provided the algorithm for the pure Python implementation of SNF, so this should have been easy.
But, I did not succeed in eliciting the desired response.

A few days later I realized that I should change the task. I asked Claude instead to write a script
that creates such videos for arbitrary input matrices. This it accomplished in one go, creating the
kind of video you can watch below. This was created with

`python tools/generate_asciinema.py '[[2,2,5],[1,3,-1],[3,6,11]]' snf_demo.cast`

and can then be played with

`asciinema play snf_demo.cast`

The only changes I asked it to make after the first attempt were
stylistic.

The lesson I take from this is that Claude Code is *very* good at coding, but less good at long,
deterministic explanations. Of course, this is a well-documented property of LLMs and is also
obviously a feature of their training. It might be easier to get good results by reducing tasks to
replicable scripts.
