---
layout: post
title: "Who's Who in the World of TeX"
subtitle: "A review of TeX terminology"
date: 2015-05-25 12:00:00 -0400
comments: true
published: true
categories:
- tex
---

TeX is a great piece of software with a traditionally specific set of
users: mathematicians, physicians, and computer scientists in the
field all at least know what TeX is simply because it is so pervasive
in that domain.  TeX is a fantastic tool for their job and mentors
will commonly teach their students how to use the tool to get the job
done.  However, newcomers to TeX are rarely -- if ever -- given a good
education on what all the different players: what goes into getting
them from introduction to installation to a finished product.  I hope
this article will answer some of these questions you never knew you
had.

From the simple to the sublime, we will cover <!-- engines, formats,
packages and modules, editors, helper tools, build tools,
distributions, and CTAN.  --> the different aspects of what goes into
a working TeX system.  This should give you a pretty complete picture
of this brave, new world you've entered into.

* TOC
{:toc}

# Engines

Let's start with the absolute basics.  A TeX engine is the compiled,
command-line program that ultimately produces your finished document.
In most cases, this is the PDF that you print or otherwise submit.
This program understands only the most basic instructions related to
macros and typesetting -- in the lingo, these are called 'primitives'.
All documents you write will eventually boil down to these primitives
to be understood and processed (or 'compiled') by a TeX engine.  (It
is of consequence to this article that all TeX engines are
programmable --
[perhaps not strictly by choice][tex-turing-complete].)

There are many engines out there beyond Knuth's original TeX:

- e-TeX (upon which most modern engines are based)
- pdfTeX
- LuaTeX
- XeTeX
- ...

Each of these engines understands all of the original primitives in
addition to those related to whichever extra features they may
provide.

# Formats

Next up, we have formats -- comprehensive programs written with TeX
primitives to provide an expressive and effective user interface to
TeX primitives.  There are
[many formats out there today][ctan-formats]:

- Plain TeX (or just 'Plain')
- LaTeX
- ConTeXt
- ...and many others.

Since *nobody* wants to be writing things like,

{% highlight tex %}
{\fam \char"4 select font cmti10\relax italic text}
{% endhighlight %}

TeX formats provide more meaningful ways to say the same thing:

- `{\it italic text\/}` (Plain, ConTeXt)
- `\textit{italic text}` (LaTeX)
- ...

These are called 'macros'.  Because TeX is programmable, these macros
can become arbitrarily complex, expressing higher-level concepts like
emphasis, sectioning, and even complex graphics and higher-order
mathematics.

Formats define much of the syntax you use to write your document.

# Extensions

Since the community using TeX is much more diverse and specialized
than any one team can hope to accommodate, the major formats define a
syntax for using extensions that anyone can write and share (licenses
permitting, of course).  They provide additional macros that are
relevant to a given task or problem.

Depending on the format, there are different ways to use these
extensions and different names they go by.  In LaTeX, they're called
packages.  In ConTeXt, they're called modules.  These are mostly
arbitrary labels -- in the end, they're all plain-text files written
in TeX primitives or whatever additional support the respective format
provides.

Since the formats try to be as widely-applicable as they can, you
likely have seen packages and modules in heavy use for your particular
application:

- `\input` (Plain)
- `\usepackage` (LaTeX)
- `\usemodule` (ConTeXt)

They represent one of the most distinctive features of TeX systems and
their applicability to an impossibly diverse range of use-cases.
There are thousands upon thousands of these extensions available
online.

# Editors

So far, we've only discussed what goes into your document itself as
you write it and what exactly is producing the finished product.
Naturally, we need a way to use this information and actually write
the document.[^1] Of course, as TeX uses plain-text files, you can use
whatever editor you wish, but it would be foolish not to use an editor
that has some level of support for writing a TeX document.

[^1]: [A wise man once said][tex-sx-mistake], "The most common mistake
    [for beginners] is spending too long on TeX coding and not getting
    the document written.".


Some popular editors include,[^2]

- TeXworks
- TexMaker
- TeXstudio
- TeXShop
- TeXnicCenter
- ...and many, *many* others.

[^2]: These are the official capitalizations; I promise.

The programmer's editors (emacs and vi) also have first-class
environments for writing TeX -- in most cases above and beyond that of
any other editor, specialized or not.

# Helper Tools

While TeX can theoretically do anything and everything you want it to
do all on its own, that idea should usually stop at 'theory'.[^3]
There are many programs that are designed to work with TeX systems
(and indeed, they're easier to create since TeX files are plain-text).
Here are just a few:

- The BibTeX format (and the `bibtex` program) provide a solid
  foundation for style-agnostic bibliographies.
- The BibLaTeX format (and the `biber` program) is a re-write of
  BibTeX (and `bibtex`) to allow much more powerful and versatile than
  its predecessor.
- `makeindex` automates indexing, a painful process for anyone who's
  ever had to do so by hand.
- `excel2latex` converts simple Excel spreadsheets into LaTeX
  tables.
- `latexdiff` determines and mark up significant differences
  between LaTeX files.
- `latex-git-log` generates LaTeX code to typeset version history
  information.

[^3]: LuaTeX is a special animal.  Since it has embedded within itself
    a 'proper' (i.e. *popular*) programming language, Lua, most tasks
    can indeed be done without leaving LuaTeX.  As always, use the
    best tools for the job.

The list goes on and on.  For interested parties, there is a
[dedicated page][ctan-helpers] for such tools.  If you're a developer,
you should also look into generic text-based templating engines like
Liquid, XSLT, Velocity, *etc.*

# Build Tools

Since TeX is a command-line tool at its core, most related tools also
use the command-line as the 'official' interface.  Most (if not all)
specialized editors allow you to run these commands with a menu item
or keyboard shortcut instead of opening up a command prompt and typing
everything by hand.  However, there are many TeX-specific build tools
that will automatic this process and can be integrated into your
editor if you wish:[^4]

- `arara` uses 'directives' within a TeX source file itself to
  record how it should be compiled.[^5]
- `latexmk` uses some clever heuristics to determine what the next
  phases of compilation is.
- [`rubber`][rubber], with its clever, hard-to-search name, is another
  `latexmk`-like program.

[^4]: `mtxrun` is the official way to compile ConTeXt (Mark IV)
    documents and is similar in concept to `latexmk`.  I don't think
    it can properly be called 'just' a build system; there is more
    going on internally.

[^5]: I personally recommend `arara` -- not just because I count the
    developer among my friends, but because it is the only
    TeX-specific tool I've found that doesn't try to guess what you
    want.  I know what I want, the process isn't that complicated once
    you understand what's going on, and I just want the computer to do
    what I tell it to do.

Of course, since these things *are* command-line based, classic
automation tools like `make` and other types of generic
build-management tools are available for use, too.

# Distributions

As you've learned, there are many things going on in the world of TeX,
certainly much more than a complete beginner would think even after
using TeX.  That's because large bundles of software and files called
'distributions' make downloading and installing a TeX system as easy
as apple pie.  Popular distributions include,

- TeX Live, TUG's own cross-platform distribution
- MiKTeX, a Windows-only distribution
- MacTeX, a Mac-only distribution based on TeX Live
- proTeXt, a Windows-only distribution based on MiKTeX

All of these come with all the engines, formats, packages, and tools
you're likely to use when working with TeX.
`xelatex`?  Included.
`amsmath.sty`?  Included.
`arara`?  Included.
Distributions are what you download to get started with TeX and
friends.

A note for Linux users: TeX Live is available from the package
repositories, but it is highly suggested you install from upstream.
TeX is a very hard thing to 'chop up' for package repositories and
it's amazing anything can work at all, but it's the process is often
fraught with issues.  It is much easier (and in the long run, more
efficient) to simply download the entire TeX Live distribution from
TUG's website.  Installation on Windows might've been tricky ten years
ago, but I can vouch that it is seamless at the time of writing.

# CTAN

In the end, distributions get their files from CTAN, The Comprehensive
TeX Archive Network.  Distributions don't carry *everything* CTAN has
for practical/licensing reasons, but a huge chunk of it is.  (A
standard distribution is currently around 4.5GB.)  CTAN makes sure all
of these files are always available by managing a network of mirrors,
or copies, that contain the entire corpus of CTAN's materials.  If
something is related to TeX, you will likely find it there.  Packages,
package documentation, tools, formats, and engines are hosted by
CTAN's generous mirrors.

Any files that are not available on CTAN were not uploaded by their
authors.  CTAN can't make anyone upload anything, so a bit of
Google-searching on the side won't hurt anyone.

# Conclusion

While distinct from one another, each of these areas is highly
dependent on the others for their success.  Without CTAN, it's likely
nobody would ever find TeX on their own.  Without LaTeX, TeX may well
have failed in the long run.  Without TeX, `arara` would have no
reason to exist.  Without editors, well, you get the idea.  I wrote
this article to express that these are distinct *even if* they work
toward the same goal: document preparation.  When reading, learning,
and teaching TeX systems to others, it's important for us to all use
the same words.  After all, TeX has survived largely by word-of-mouth
recommendations and mentorship: if we start speaking different
languages, how can we learn from one another?

Happy TeXing!

# Footnotes

[tex-turing-complete]: http://maps.aanhet.net/maps/pdf/16_15.pdf
<!-- page 47; second column -->
[stan-formats]: http://ctan.org/topic/format
[tex-sx-mistake]: http://tex.stackexchange.com/a/139878/17423
[tex-ex-editors]: http://tex.stackexchange.com/q/339/17423
[rubber]: https://launchpad.net/rubber/
