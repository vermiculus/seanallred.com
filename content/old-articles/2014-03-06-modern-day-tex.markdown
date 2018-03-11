---
layout: post
title: "Modern-Day TeX"
date: 2014-03-06 21:29:03 -0500
comments: true
published: true
categories:
- tex
- social
url: /tex/social/2014/03/07/modern-day-tex.html
---

In the very few venues that TeX known,
  it is very often looked at as an antiquated technology
  that has long been superseded by more 'modern' systems
  such as the Microsoft *Office* suite of products
  and the ubiquitous (and wonderful) Google Docs.
Why are TeX systems viewed like this,
  and what can be done about it?
If you       use TeX, is it worth it to actively show others?
If you don't use TeX, is it worth learning,
  and how much do you actually need to learn?

<!--more-->

There are many introductions to TeX and LaTeX on the web,
  so I will not duplicate it them here.
The purpose of this post is not to introduce you to TeX,
  but to show you that it isn't difficult to use
  and that it still very applicable to modern needs---yours and mine.

* TOC
{:toc}

## The powers that be ##

Microsoft *Word*, Google Docs, and similar systems are good tools for some tasks.
I can't deny that, and I don't intend to [convince you otherwise][1].
They are extraordinarily simple to use for extraordinarily simple documents;
  I wouldn't recommend anything else for the occasional flyer here and there.
They were developed to let anyone---even
  those who were generally uncomfortable with computers---write documents
  that are readable and readily reproducible.
They quickly became popular; by sheer accessibility, *Word* and friends became
  *de-facto* standards in the fledgling market of 'desktop publishing'.

*Word* was never intended to be a fully-fledged publishing solution, however.
Microsoft's other 'band-aid' products,
  like *Publisher*, *Visio*, *Project*, and their sorry *Equation Editor*,
  are testaments to this fact.
Still, by sheer popularity (and quite a bit of money),
  the paradigm pushed its way into the market.

It used to be that publishing was entirely a trade of its own,
  but now every author acts as artist when he weaves his words onto a WYSIWYG window.
People are used to instant gratification---even when
  the gratification itself quietly becomes... insignificant.
You see, an author rarely realizes the absolute travesties
  that take place under her own nose as she writes the next best-seller.
She doesn't catch the terrible typographical mistakes that are being
  made by this program that has taken no account for such from the start.
She's focusing on writing *as she should be*,
 but even now there is a flaw in the system.

## The great distraction ##

My thoughts turn back to the words of F. P. Brooks Jr.
  in his landmark work *The Mythical Man-Month*.
Inside, he marks our innate joy in creation as
  a deeply human characteristic---in his words,
  a reflection of God's own joy in creation---and uses it
  to explain why *programming* is fun.
It is not unreasonable to extend this inborn joy to the author in his work.
From the very start, he is shown what his work will look like when printed on a page.
(This is, after all, the entire draw of WYSIWYG.)
From this, he becomes accustomed to seeing the end result from the very beginning,
  instead of going through the more traditional (and more productive, bear with me)
  manuscript--edit--typeset sequence.

With the knowledge of how the work would be laid out,
  the author can *easily* distract herself with *presently unimportant* details.
What matters in the manuscript phase is *content*, not *layout*.
This is the great distraction that plagues every author at some point or another.
What would be a blessing for very short, one-off flyers
  is a hidden curse for any serious writer.

It extends even to publishers who would use *Word* (God rest their souls):
  as a publisher---a professional in the field---you are working with
  a piece of software that was specifically designed to be usable by
  your lovely grandparents---who with all of their actually-valuable experience
  in the physical world---are just beginning to send emails
  without a worry of irreparably breaking something.
(As an aside, this actually-widespread phobia is an interesting one
  and will hopefully be the subject of a later post.)
This scale of accessibility in fact *cripples* your ability
  to do the job you were trained and are paid to do.
To allow time for absolutely ridiculous test cases,
  actual functionality in the software is a long time coming.
To allow the average user---say, your grandmother---to make a decently-designed photo album,
  the effectiveness of your expertise in the field
  is crippled as *Word* carts you around in your grandmother's wheelchair.

## How did this happen? ##

For real projects, this isn't a good system for either party involved.
Why then is it still in use?
Here's where this post becomes speculation.

First is the ubiquitousness of the tool.
*Word* is installed on nearly every office and academic computer.
Those that don't have it installed can always use Google Docs.
This is a good thing and I am glad that these tools are so accessible
  (even if a terrible sum of money is spent on the former).
By sheer inundation, everyone is familiar with it---everyone can write
  a simple paper for class or a real letter (people still do that?  [Yes.][2]) to an old friend.

Second is the intuitive starting point.
When you start any of these applications,
  you are unwaveringly presented with a page on which to start writing.
Since everyone has written on paper before---and I jokingly reject
  your reality if you haven't---the act of typing into something like Google Docs
  is just *intuitive*.

Third is the ubiquitousness of the tool.
(I really think this is the big one, here.)
After all,

> An object in motion tends to stay in motion.

## TeX -- an alternative ##

Most TeX systems are not like this to a large extent.
The most essential TeX setup involves

an editor
: to write your master work, providing proper project management tools
  like navigation, *bibliography management*, and *change management*, and

a program
: to produce a 'camera-ready' rendition of your work
  according to the instruction of a professional.

For the author, this can be made as simple as

{{< highlight tex >}}
CHAPTER. Down the Rabbit-Hole

Alice was beginning to get very tired of sitting by her sister on the
bank, and of having nothing to do: once or twice she had peeped into the
book her sister was reading, but it had no pictures or conversations in
it, `and what is the use of a book,' thought Alice `without pictures or
conversations?'

\bye
{{< / highlight >}}

or more popularly

{{< highlight latex >}}
\documentclass{book}
\begin{document}
\chapter{Down the Rabbit-Hole}
Alice was beginning to get very tired of sitting by her sister on the
bank, and of having nothing to do: once or twice she had peeped into the
book her sister was reading, but it had no pictures or conversations in
it, `and what is the use of a book,' thought Alice `without pictures or
conversations?'
\end{document}
{{< / highlight >}}

This is how documents would classically be authored under TeX systems.
Notice that there are no distractions such as
  'what font is used for chapters?' or
  'how big is the page?' or
  'does that line break look ok?' or
  *anything* of the like.
These decisions are better left to a professional or,
  at the *very* least, saved for later.

At least in my own work, this priority of attention
  to content over presentation
  increases my effectiveness and creative flow when writing longer works.
Case and point: Along with several of my classmates and friends,
  I am in the midst of writing my undergraduate thesis.
These are relatively monster works compared to the relative radio silence
  that we are accustomed to in terms of written assignments.
(It's nothing to scoff at as an undergraduate thesis in computer science;
  twenty-five pages single-spaced with one-inch margins---which in itself
  is a typographical travesty---is quite a work.)
My friends who I was able to sway to use LaTeX authored above and beyond the requirement,
  while my other friends---whom I did not so convince---were typically
  well *under* the requirement.
In the unfortunate even that they read this in the future,
  *this is not a remark on your ability to write*.
It is shown as an example of the time and effort spent struggling with
  the writing distraction that is the software you chose for familiarity.
(No but seriously [I love you all][3].)

## Is it worth teaching? ##

To those of you who know TeX and are wondering if it is worth teaching others,
  the answer is an emphatic *yes*.
The friend of mine that decided to use LaTeX for his paper
  made a point to thank me for the [document class][4] I provided
  him (and the entire group) so that he could just *write*.
Coupled with the spotty pointers I provided him with,
  he was easily able to pick it up and become self-sufficient.

## Is it worth learning? ##

I won't say LaTeX doesn't come with a learning curve,
  but I will say that the actual learning curve is gentle.
The real challenge comes in taking off the writer's-training-wheels
  you've become so used to and starting to ride that bike on your own!
Unless of course you don't know how to ride a bike,
  in which case I similarly (read: *jokingly*)
  reject your reality and substitute my own.
I'm sure you can think of an appropriate metaphor `:)`.

Judge your needs based on what you've read above.
There is a lot more to TeX systems than just what I've written here, though;
  for a more in-depth discussion, I will point you to
  Tobias Oetiker's [Not So Short Introduction to LaTeX2e][5],
  Peter Flynn's [Formatting Information][6], and
  TUG's own [Introduction to TeX, LaTeX, and related typesetting systems][7].
One caveat, however: if you decide you would like to try TeX,
  you should try online with services such as [ShareLaTeX][8] or [WriteLaTeX][9]
  to see if you like it first, with the knowledge that a local install will be far faster.
If you want to *install* TeX locally on your computer (for free, naturally),
  *please* install TeX Live if you have Windows or some Linux distribution and
  MacTeX if you are using an Apple Mac running OS X.

---

Thanks for reading!
Don't hesitate to ask if you have questions.
If you're reading this blog, you likely know how to get in touch. `:)`
If you don't know how to get in touch, see the 'About' section above.
If you don't feel comfortable asking me,
  there are plenty of wonderful people over at [TeX.SX][0]
  who would be happy to help you.

Toodles!

<!-- [1]: http://fluff.info/terrible -->
[1]: https://web.archive.org/web/20170401165039/fluff.info/terrible
[2]: Unplugged
[3]: http://i.imgur.com/3CWCehW.gif
[4]: https://github.com/vermiculus/smcm-tex/blob/master/smcm-tex/cosc/smcm-cosc-smp.cls
[5]: http://tobi.oetiker.ch/lshort/lshort.pdf
[6]: http://www.tug.org/TUGboat/tb23-2/tb74flynn.pdf
[7]: https://www.tug.org/begin.html
[8]: http://www.sharelatex.com
[9]: http://www.writelatex.com
[0]: http://tex.stackexchange.com
