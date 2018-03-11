---
layout: post
title: Dogfooding
subtitle: Effectively improving productivity
comments: true
date: 2016-08-18 22:35:32 -0500
category: productivity
draft: true
---

At work, there's been a relatively large push to enhance developer
productivity.  A code documentation server is going up, the in-house
worklist application we use is getting some pretty useful updates, and
a few very large and very impactful projects that I couldn't even do
justice to in mere writing.  This is in addition to a large 'blob' of
tooling and integration we already have.  This is great, but can it be
made *fundamentally better*?

<!--more-->

# Specialization
It's become expected that specialized tools will have tight
integration relevant to that specialty: Visual Studio has *excellent*
support for .NET languages (and probably a few others); our M code
editor at work (EpicStudio) has decent integration with our worklist
application (EMC2).  In the realm of text editors (which is the
integration point I'll be focusing on in this post), you'll be
hard-pressed to find a professional-grade editor that doesn't allow
some sort of extensibility -- unless the developers of that editor
tricked themselves into believing they've implemented *everything* you
could reasonably need.  It's surprisingly common for this to be the
case, though: instead of allowing easy extensibility, the tools we've
written are largely *closed*.

For enhancements to internal tools, you can tell yourself you can
build it into the core application (and then promptly shelf the idea).
This is absolutely true, but it's a heavyweight approach for a
lightweight idea.  In our case, it would even need to pull in a few
people for design and code review.  This is *too great an effort* for
a feature that would potentially only help a subset of users.

# Customization
Now, what about hundreds of specialized tools/tooling only a handful
of enthusiastic developers would want to take advantage of?  There's
no way any design group could handle incorporating that into the main
application cohesively.  For these tools to see the light of day, they
have to be developed alone.

Luckily, solo development can be a lot of fun!  It's how I (and many
others) started off in software.  I'd read up on a language (usually
following some 'hello, world' tutorial) and then just *have fun*.  I
ended up with more than a few programs I thought useful enough to be
shared.  With languages, there normally are no limitations for what's
possible -- [it's your thought-castle][mmm], after all.

[mmm]: //www.grok2.com/progfun.html

Tooling and integration is a bit different -- these work with existing
applications and what they make conveniently available.  There is now
an upper limit on the complexity of the tool defined by the
capabilities of the API.  There are certainly *many* useful tools that
can be made with the most basic APIs -- most must-have integrations
fall into this bucket -- but if you want to make the API as powerful
as possible, the most direct way to do this is by *[dogfooding]*.[^em]

[dogfooding]: //en.wikipedia.org/wiki/Eating_your_own_dog_food
[^em]: Epic already 'eats its own dog food' in a less technical way:
    EMC2, our worklist manager, is an application built on Hyperspace
    (our user interface framework) and Chronicles (our RDBMS).


<!-- Most of the time, this extensibility is offered in the form of -->
<!-- *plugins*: generally smaller pieces of development that conform to a -->
<!-- set of rules that allow safe operation within the host application -->
<!-- (e.g., your editor).  Plugins exist for an unimaginable number of -->
<!-- things -- things you wouldn't even thing about.  Taking [emacs] as an -->
<!-- extreme example, there are plugins for everything from context-aware -->
<!-- TypeScript completion to emulation of other editors to snippet -->
<!-- managers to StackExchange and Twitter clients.  All of these adhere to -->
<!-- a very specific (and in emacs' case, forgiving) set of rules that -->
<!-- allow them to operate smoothly within one application. -->

[emacs]: //gnu.org/s/emacs

<!-- Some enlightened folks have generalized this idea for applications -->
<!-- themselves in the form of APIs -- publicized promises of requests and -->
<!-- responses allowing developers to build their own workflow around -->
<!-- functionality they already like.  Such customized workflows are often -->
<!-- better than the default experience alone: There are Twitter clients -->
<!-- available that are far better than the website or official app. -->
<!-- Google's Maps API enables -->
<!-- [amazing content Google would not have imagined][maps-api]. -->

[maps-api]: //www.noupe.com/development/collection-of-the-coolest-uses-of-the-google-maps-api.html
