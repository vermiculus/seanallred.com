---
layout: post
title: "LaTeX3 and expl3"
date: 2015-06-14 00:00:00 -0400
comments: true
github: 6
category: latex3
links:
- "Difference between LaTeX, LaTeX2e, LaTeX3?": http://tex.stackexchange.com/q/13541/17423
- "What can *I* do to help the LaTeX3 project?": http://tex.stackexchange.com/a/46427/17423
- "What new bits have already been implemented in LaTeX3? Will my current documents (with many packages) still compile with LaTeX3?": http://tex.stackexchange.com/a/400/17423
- "Why is LaTeX3 taking so long to come out?": http://tex.stackexchange.com/q/953/17423
- "LaTeX3: Using the layers (Mittelbach and Wright, 2013)": http://latex-project.org/papers/2013-10-24-latex3.pdf
aliases:
  - /latex3/2015/06/14/expl3-vs-l3.html
---

I've seen a few people here and there refer to LaTeX3 and `expl3`
interchangeably.  While they're very related, they are distinct from
each other.

<!--more-->

`expl3`
: The [format-independent][e-v-3] programming layer powering LaTeX3.
Provides tools to make programming in a TeX environment saner.  Under
development, maintained, and stable.

LaTeX3
: The new format of LaTeX, successor to LaTeX2e.  Under development
and not yet released.

`expl3` is ready for primetime, but LaTeX3 is not.  That said, many
*ideas* from LaTeX3 are available for use in a *status quo* referred
to as 'LaTeX3 in 2e'.  Packages like `xparse`, `l3keys2e`, and
`xtemplate` provide an idea of what working in LaTeX3 is going to feel
like.

It's important to note that the general format of

```latex
\documentclass{<who knows?>}
\begin{document}
hello, \emph{world}
\end{document}
```

is not likely to change (lest the project fail to be adopted).  While
the top-level input syntax hasn't really been nailed down, I suspect
most of the changes will be scoped to the programming and
document-design levels.

Happy TeXing!

[e-v-3]: http://chat.stackexchange.com/transcript/41?m=20892461#20892461
