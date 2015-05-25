---
layout: post
title: Rainbow Demonstration
published: false
categories:
- web
---

[demonstration of Rainbow.js]

I'm using the [Rainbow][rainbow-origin] JavaScript library coupled with a
[Wordpress wrapper plugin][rainbow-wrapper], which provides a very good
interface to the library.  It lets me enter code right into the post editor and
select a code language:

![Rainbow screenshot](/assets/images/rainbow.png)

~~~ tex
hello, world
\bye
~~~

TeX was very easy to extend using the API Rainbow provides:

~~~ javascript
Rainbow.extend('tex', [
 {
 'name': 'comment',
 'pattern': /%.*$/gm
 },
 {
 'name': 'storage.function',
 'pattern': /\\[A-Za-z]+/g
 }
 ], true)
~~~

I did end up creating a [Makefile][makefile] for all of this, replacing a Bash
script.  Then it was a simple `make all` to compile a minified version for use.
The only tricky thing was sorting out the project setup.  The
[main repository that I was editing][js-origin] is set up (correctly so) with
the Rainbow library as a submodule, so any edits to Rainbow must be compiled and
committed before the appropriate changes could be committed to the main
repository.  Since it was the first time I've *really* worked with submodules
(as well as JavaScript and extended regular expressions to boot), mistakes were
made and the commit history is currently *very* messy.  Now all I have to do is
clean up the awful commit history so I can send a pull request...

To leave this post on a good note, though:
[LaTeX syntax highlighting][vermiculus/rainbow]!

~~~ tex-latex
\documentclass{article}
\newcommand\hello[1]{Hello, #1!}
\begin{document}
\hello{world} % says hello
\end{document}
~~~

*Update!* [expl3 highlighting!][expl3-highlighting]

~~~ tex-expl3
\cs_if_exist:N \test \g_ior_file_name_seq
\cs_new:Npn \mod_func_name:nn #1#2
  {
    Do~something~with~characters~#1~and~#2.
  }
\NewDocumentCommand \SomeDocumentCommand { m m }
  {
    \mod_func_name:nn {#1} {#2}
  }

\keys_define:nn { test }
  {
    a-key .tl_set:N = \l_test_a_tl,
    b-key .bool_set:N = \l_test_b_bool,
  }
~~~

[makefile]: https://github.com/vermiculus/wp-rainbow-hilite/blob/master/Makefile
[js-origin]: https://github.com/mcguffin/wp-rainbow-hilite
[rainbow-origin]: http://craig.is/making/rainbows
[rainbow-wrapper]: https://github.com/mcguffin/wp-rainbow-hilite
[vermiculus/rainbow]: https://github.com/vermiculus/rainbow/blob/master/js/language/latex.js
[expl3-highlighting]: http://jsfiddle.net/1ajLmavj/3
