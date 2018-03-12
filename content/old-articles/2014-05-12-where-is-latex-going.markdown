---
layout: post
title: "Where is LaTeX Going?"
date: 2014-05-12 20:34:41 -0400
comments: true
categories:
- tex
aliases:
  - /tex/2014/05/13/where-is-latex-going.html
---

While I'm not a member of the LaTeX3 Project,
  I find myself very much invested in its success.
Not only do I want the project to succeed in overtaking LaTeX2e,
  I also want the project to make itself accessible to
  those who would not have considered it in the days of 2e.
Creating a good solution requires much more thought than one would immediately think.
Considering the problem at hand will perhaps bring to light the complexities involved
  and spark further conversations about potential solutions.

<!--more-->

> I think the problem, to be quite honest with you,
>   is that you've never actually known what the question is.
> [...] So once you know what the question actually is,
>   you'll know what the answer means."

LaTeX is self-described as a document preparation system.
In a separate project, I'm really pulling this apart into what it means to me
  and what these deductions mean to the LaTeX Project on the whole,
  but there are several aspects that I think are important to touch on.
For this article, I will discuss LaTeX's purpose in this respect
  and its inherent duty to fulfill this purpose
  to the best of its ability
  for everyone that wishes to take advantage of its concepts.

## A document preparation system ##

What does it mean to be a 'document preparation system'?
LaTeX works with *documents*.
It is not a movie maker.
It cannot cook rice.
It has no appreciation for the quiet stillness of a fall day during academic vacation.
It *does*, however, know how to write a document.
It knows what tools you need to be an effective author---or an effective publisher---and it provides you those tools.

The next logical question then is this: What is a document?
To answer this question in part, we will borrow from the documentation for `xtemplate` (written by the LaTeX3 team):

> Besides the textual content of the words themselves,
>   [...] a document contains mark-up elements that add structure to the document.
> These elements include sectional divisions, figure/table captions,
>   lists of various sorts, theorems/proofs, and so on.
> The list will be very different for every document that can be written.

In short, a document consists of two distinct parts that belong together.
A document is both the text and the meaning of the text.
Any system that hopes to be a complete solution must address these goals seamlessly and simultaneously.

LaTeX2e solved this problem rather well;
  an author imposed logical markup elements on
  the plain content to create a semantically meaningful document.
However, to take advantage of this ability in a *practical* way,
  it often required a non-obvious understanding of how the underlying TeX engine worked as a langauge.
As many authors can attest to, this is *not* a reasonable requirement of authors;
  the author alone knows both the text and the meaning of the text,
  but this author isn't necessarily one who is familiar with computer languages
  or compilation sequences.

Similarly, typographers are graphic designers are heart; they cannot be expected to understand the syntax of TeX.

Thus, an ideal world would have completely separate interfaces for
  the author, the typographer/designer, and a programmer who implements it all.
This last interface is nearly complete as `expl3`;
  a full-on, standardized programming environment written entirely in TeX
  and requiring only the e-TeX primitives.
Upon this interface lies the whole of LaTeX3 concepts.

Thus, to answer this article's question *where is LaTeX Going?*, the answer is *places*.
By truly separating the interface between authors, typographers, and programmers,
  true *visual* seperation of interface is finally possible.
A graphical interface is at least *feasible* for 'the author and certainly possible for the typographer.
The only member of the team that yet *needs* to view the internals of LaTeX
  is the programmer who is likely more comfortable there anyway.

## What about LyX? ##

LyX is oft described as a GUI front-end to LaTeX.
While it uses LaTeX as an export format,
  LyX is in fact its own object.
It very much encourages the concepts of LaTeX,
  but manages to use a graphical author interface.
This is *not* the same as a graphical interface to LaTeX.
It is extraordinarily difficult, in my experience, to add semantic commands to LyX.
Any author interface for LaTeX must maintain the flexibility that makes it so powerful.
This is *not* an easy problem to solve---the LaTeX3 team has been
  thinking and talking for a long time on how to best approach these problems---but
  it is certainly not found in LyX.
