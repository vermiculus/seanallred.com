---
categories:
- industry
- tex
layout: post
title: Toward Data-Driven Documents
---

The separation of content and presentation is an idea that's
continuing to take a real hold for content creators.  The
relationship between HTML and CSS demonstrates this principle very
well -- HTML provides structured content in the 'document object
model' (the DOM) while CSS provides the browser with instructions to
*present* the document.

The idea exists with other publications, too.  Reports, time-tables,
product catalogs, ...all of these can and are generated with databases
and professional layout engines.

Why is this so?  With web content, this makes sense: it's simply how
history played out.  HTML was developed as a means to communicate
content in a more meaningful way than plain text;[^1] CSS was
developed as an afterthought when the tools available were advanced
enough to avail of its features.  The content came first and *then*
the presentation was considered.

# Modernization

{% gist 5555251 %}

It works a little differently these days.  Everyone has their own
experience, of course, but mine has luckily included three years' good
use of [LaTeX][intro-to-latex] -- a 'document preparation system'.  I
wrote document 'classes' (presentation logic) with a toy example for
testing.  Once I was satisfied (which generally took the better part
of a weekend day), I went on to write my *content* according to the
semantic format I had declared in the document class.[^2]

Do you see the analog?  As I understand it (I'm not in the field), web
designers will often create such a toy document when they create the
layout for a class of webpages (such as 'article', 'photo gallery',
'top ten list', etc.).

LaTeX still has further to go until it catches up to the idealistic
separation of content and presentation that HTML and CSS fell into
(while maintaining the sheer power of LaTeX that HTML and CSS do *not*
possess), but I've talked about this [separately][latex-3].

# A Personal Project for the Future

The great advantage of separating content and presentation -- as
anyone could see -- is the ability to change the look of an entire
publication by changing a few layout rules.[^3] You could even develop
a system where a single data source could provide the content for
various presentation formats at the same time.

This is exactly what I'm going to do with my résumé: Using a
combination of YAML, Ruby,[^4] LaTeX, and HTML/CSS, I'm going to
attempt to single-source the bulk of my résumé from the YAML document.
Using the most readable YAML I know to create, I'll use Ruby to
transform it into the HTML and LaTeX data to be styled by the CSS and
LaTeX document class.

~~~ yaml
--- !Job
company: Some Company
start: 2014-01-20
end: 2014-08-02
location:
  city: City
  state: ST
...
~~~

~~~ ruby
def hello
  puts "hi"
end
~~~

Until recent days, I've never really taken advantage of TeX's
text-based nature.  I've written all my personal documents with it,
sure -- but I've never tried to generate the document.  Aside from the
occasional project (few and far between), I only recently started
taking advantage of LaTeX as a processing middle-man (using a Python
script and CSV data to format reports).  I hope to see this project
teach me more about this aspect of content management in general.

When I have a working solution, I will open-source it on GitHub for
all to see my approach.  But please, when the time comes, do remember
[this article's message][foss-design].

#### Footnotes

[^1]: Of course HTML *is* plain text, but it has a very well-defined
      structure... almost like a database of content.

[^2]: In LaTeX2e, this distinction isn't as clear as I wish it was.
      See my post on [LaTeX3][latex-3].

[^3]: It's here that the meaning of CSS becomes clear:  not only do
      stylesheets cascade onto one another, but they eventually
      cascade onto the content.  One change in the stylesheet can have
      a wide impact on the content.  All presentation/content
      separation systems that I've seen share this advantage.

[^4]: I write this blog with Jekyll, written in Ruby, so it seems the
      natural choice.

[1]: http://www.wdtonline.com/wdtMagazine/MemberWorks/WiserWays/csshtml.htm
[foss-design]: http://andytaylor.me/2013/01/23/open-source-design

<!--  LocalWords:  Résumé LocalWords webpages stylesheet stylesheets
 -->
<!--  LocalWords:  résumé YAML DOM CSV GitHub
 -->
