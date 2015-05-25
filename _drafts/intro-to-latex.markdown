---
layout: post
title: Introduction to LaTeX
categories:
- tex
---

LaTeX is a tool for creating and managing documents.  It is a
different paradigm for publishing; instead of writing your content and
embedding meaning in the layout (bold this, italicize that, make the
larger and put a number in front of it, etc.), you write this
*meaning* alongside your content in an at-a-glance, unobtrusive
format.

Here is a sample:

~~~ tex
\documentclass{article}

\title{An Introduction to LaTeX}
\author{Sean Allred}

\begin{document}

LaTeX is a tool for creating and managing documents.  It is a
different paradigm for publishing; instead of writing your content and
embedding meaning in the layout (bold this, italicize that, make the
larger and put a number in front of it, etc.), you write this
\emph{meaning} alongside your content in an at-a-glance, unobtrusive
format.

\end{document}
~~~

This post won't try to convince you why you should use LaTeX, but
rather hopes to educate as to its design and proper usage through a
hypothetical case study.

It consists of three 'ideas' that create the solution as a whole:

content
: The content of your document with meaningful markup

packages
: Implementations of markup for various tasks or ideas

program
: A program to create a printable document

The document that *you* write consists only of your content --
ideally, there shouldn't be anything distracting you from your
writing.  The next question you should be asking yourself is 'Ok,
*what* exactly do I write?  What do I create when I write something?'

# Some History

Every author will agree that they write their content -- this is
obvious -- but they may not realize that they often embed meaning in
their content via 'typographical conventions'.  New terms are bolded;
longer quotations are set off from the main text; lists are often
itemized line-by-line.  All of these conventions are ways of
describing additional meaning to the content you create.  In the most
familiar programs to us (i.e., Microsoft *Word* and similar programs),
we somewhat emulate the traditions of writing proper manuscripts -- we
simply lay out the list structure or set-off the quotations.  But how
do we do this 'new' thing -- bolding new terms -- on paper?  (Anybody
who has tried to write 'boldface' will understand.)

I recognize that underlining the term would be the way to go on paper,
but let's entertain the idea.  In the days of handwritten manuscript,
we would use some special marking for 'new term' that we agreed on
with our printer and we would instruct the printer (usually with
his/her recommendations) as to how we wish to present 'new terms'.
Thus, the process was kept very modular and professional input was
received before the actual printing was done.

## Markup

What happens these days?  Well, we do what we think is best at the
time lest we forget about it later.  We highlight the term, press
the little `B` to embolden it, and move on with our task.  When we
finish, we review the document, print, and hold in our hands the fruit
of our raw imagination, creativity, and reasonable thought.  No
professional input involved.

For many one-off tasks, this is a fine approach.  A flyer for your
family's yard-sale; a desperate mugshot of your beloved bunny,
Miffles, to staple to every telephone pole from here to the farmer's
market; a sketch of a creative-writing idea; etc. -- anything that
would not necessarily benefit from one presentation over another.

The problem arises from when you *do* want professional input on
presentation when you have finished your content.  Suppose your
advisor suggests 'new terms' would be better set-off in single-quotes.
Now, *someone* must go through your entire work -- likely you -- and
replace all **bolded** terms with 'single-quoted' ones.  This is a
monumental task and is prone to error.  (After all, *you* are the only
one that knows what you meant, so editing is already difficult.)

This was of course very different before the advent of desktop
publishing.  There is very little markup you could reasonably embed in
the main body text without some special 'code' you sorted out with the
printer.  Sometimes, even short *notes* to the printer (or to
yourself) were necessary to explain the situation.  You as an author
were focused on your job -- writing -- and waited to figure out the
presentation with the printer.  Everybody had a job to do.

## ?

Let's go back to our 'new terms' example.  Suppose the printer
suggested (and rightly so) that terms should only be set-off when
they're introduced and defined, but inserted in the index for every
significant mention.  ('An index?' you ask yourself... 'Yes, I suppose
an index would be helpful.')  Dutifully, you take to your document and
remove all the single-quotes for terms and record the relevant page
positions for an index.  Perhaps the printer comes back and suggests
you move a figure to make the page layout cleaner and more pleasant to
read.  At this point, you've hopefully fired your printer for not
bringing all of this up-front in his review, but you take his
suggestion to heart and have the figure moved as suggested.  Alas!
This has changed all of the page numbers for the index!  `:(`

In this we see clearly the purpose of LaTeX specifically.  While TeX
is a way to express content and page layout, LaTeX was developed to
remove the burden of page layout from the author.  It is designed
largely as a return to the traditional document manuscript that the
author has traditionally been responsible for -- a structured way to
express the author's intent in content so that the intent may be
well-presented later on in the process.

...

# Practical LaTeX

If you've read through this article, you're likely thinking to
yourself, 'Well, *I* do not have any professional input in the
presentation of my content.'  Now, if you're submitting to a journal,
I would immediately question that.  The journal almost certainly has
style standards that should be adhered to.  Depending on the journal,
they will probably already have a LaTeX document class for your use.
(I would caution that many of these document classes are
hacked-together though; they usually are poor examples of how LaTeX
should work `:(`.)

If you're creating your work truly as your own or for your business,
you should at least consider getting professional input at the end of
your work.  Until then, use what I call 'semantic stubs' -- macros and
environments that act to record your intent, but do not impact the
output.  Remember, you shouldn't be focused on that right now.  Use
declarations similar to

~~~ tex
\newcommand\NewTerm[1]{#1}
~~~

or, if you prefer to use Plain TeX,

~~~ tex
\def\NewTerm#1{#1}
~~~


- don't embed format in text
- use macros and environments
- use markup provided by your publisher
