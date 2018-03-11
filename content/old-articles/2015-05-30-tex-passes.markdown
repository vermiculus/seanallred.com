---
layout: post
title: "LaTeX's Multiple Passes"
subtitle: "Alternate title: but I <em>just</em> compiled the thing! ☹"
date: 2015-05-30 12:00:00 -0400
comments: true
github: 1
draft: true
category: tex
---

A common point of confusion when starting out with LaTeX is the need
to run a bunch of programs on your document just to get your PDF.
Really – you've taken the time to learn a new way of writing documents
so that you can do something that LaTeX is really phenomenal at.
Whichever of the multitude of reasons there are to use LaTeX, it's
unlikely that the compilation sequence is among those reasons.

<!--more-->

So why does LaTeX require multiple passes for things like
cross-references?  Why do you need to run a separate program (like
`bibtex` or `biber`) so you can have citations?  Why can't LaTeX do
all this stuff the first time around?  I hope to answer these
questions for you (and even spark a few more for curiosity's sake).

# Some brief history

TeX was written by Donald Knuth in the early ages of computing.
During this time, computers were limited in what they could do.
Things that we take for granted today – even reading a whole file into
memory – was something that couldn't reliably be done.  Computers just
didn't have the resources to do it.  TeX was designed with this
limitation in mind.

<!-- I don't think this is true.  I feel I need to do more research.
Committing to show that the learning process never stops :) -->

#

Happy TeXing!

# Footnotes
