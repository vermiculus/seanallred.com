# Work History

My resume lists the work and experience most relevant to what I want
to do, but that necessarily limits its completeness. Even if just for
my own memory being what it is, it's helpful to keep a more complete
record.

## Summary

Something stands out to me as I've gone through all this again: I've
got a real track record when working with problematic systems.

 1. I can quickly recognize that the system is problematic.

    *I'm sure many folks can do this.*

 2. I create a plan to resolve the problem.

    *I don't see as many folks doing this.*

 3. I *execute* on that plan and adapt to surprises along the way.

    *It's a good day when I find someone else doing this.*

 4. My plans are successful in production and actually resolve the
    problem.

    *My designs aren't just better because I understand them; they're
    better because they work.*

Some of the highest praise I get from my peers is along the lines of

> Your code had a few silly bugs, but otherwise it's been very easy to
> work with.

Pobody's nerfect, bugs happen (especially in new codebases of many
tens of thousands of lines, interfacing with legacy logic!). But I'm
elated when I hear that my designs are not only understandable to me,
but also understandable to others.

I build solid foundations. I make our developers successful so we can
all make our customers successful.

## (2015--Current) Epic

At Epic, developers are responsible for the research, design,
development, and testing instructions for every change we make. We
value ownership and foster autonomy as much as possible in such a
safety-critical environment.

I've worked with Epic for most of my career. I joined on Stork, our
clinical application for obstetrics and gynecology, with ownership
over the application used during/after delivery. That ownership lasted
for most of my time and extended right up unto my transfer to EMC2, a
somewhat rag-tag team responsible for process automation and user
satisfaction for everyone involved in our software:

- from the developers creating it
- to the testers validating it
- to the support staff working with customers to implement and
  maintain it
- and back to the developers addressing regressions/issues, reported
  either internally or externally via our support staff.

All of my time on EMC2 so far (Sept 2023), though, has been devoted to
our migration to Git from SVN for source control. It's been a massive
undertaking -- dealing with integrations with everything from software
delivery to internationalization/localization.

To be honest, I struggle with summarizing nearly a decade of
experience here. Instead, I'll call out some of my favorite projects
that support my track record:

### L&D Events Revamp

During labor and delivery, there are certain events that are medically
relevant. For example, the three stages of labor are defined with four
labor events: labor onset, dilation complete, delivery of the baby,
and delivery of the placenta. To my recollection, there were around
~15 of these events that we supported. These events could be
documented from a number of different interfaces, but for various
reasons, these interfaces all saved to different records in the
patient chart.

Prior to my joining Stork, these records were all reconciled ad-hoc
with duplicate implementations that fell out of sync after time. This
implementation generated real issues -- seen both in practice by
clinicians and in maintenance by developers. The implementation was
very old, though, and folks tended to shy away from ripping off the
bandaid.

I accepted the situation for a few months -- after all, I was still
pretty new on the team. After a while though, I'd had enough: I
started the leg-work to see what all would be needed to start over --
including a large-scale data-conversion to clean up records that had
fallen out of sync. I presented the design to stakeholders, got
sign-off, and executed on my plan.

I never heard about this class of issues again.

### Birth Instant Time-Zones

When patient care crosses time-zone borders (typically via transfer to
a specialist), the birth instant could be off. Operationally, this
would be corrected by hand, but after finding this issue internally,
we escalated it as a bug that could impact care.

The story is the same, but perhaps on a larger scale. I recognized the
problem ran deeper than the initial report -- affecting not only
newborns, but all patients (though usually only medically relevant
within the first few days after birth). Instead of solving *my*
problem, I decided to put in the leg-work to solve it for everyone.

I collected information from existing consumers across the various
teams at Epic, I collated their needs, and I designed an API to meet
those needs -- usually more efficiently than their own implementations
by taking advantage of advanced features in our compiler. After
finalizing the framework and fixing all of our code on Stork, I
coordinated the fixes across all other teams, fielding questions and
teaching those developers about new situations they hadn't considered.

After all teams had finalized their fixes, I designed and developed
another data-cleanup conversion for this issue.

I never heard about this class of issues again.

### Mom-Baby Link Revamp

The relationship between mom and baby runs deep. It starts very
obviously with pregnancy, where their collective well-being is clearly
intertwined. It carries through delivery, where the baby's
registration and insurance information is copied from the mother's. It
continues long after delivery, where the parents' family histories
impact the baby's risks and care decisions. It impacts care
recommendations to the mother, and thus her decisions, when
breastfeeding her baby. Unsurprisingly, the link between the mother
and baby is represented in their records. Due to evolving needs in our
software to provide top-notch care, we collected about a dozen of
these links -- all expressing the same basic idea and all using
different code-paths.

It had been a growing problem for years. The dependencies across teams
were intricate -- and it was always something that could be 'patched
up'. I forget the final trigger, but when we had had enough, I and a
teammate followed all the rabbit-holes, collected and collated all the
knowledge we'd gathered over the years, and devised a general plan to
run everything through a shared code-path.

Especially given the risks involved (not in spite of them), I opted to
use a new programming language available to us to get stronger typing
and code-flow guarantees. I even got the opportunity to work with the
language designers to improve upon it based on my practical usage.

It took several months of work (right up through my transfer to EMC2),
but we shipped.

I'm still good friends with my teammate in that endeavor. According to
her, we received a single issue in a niche situation (so niche that
I'm genuinely surprised it was hit). It was an easy fix.

I never heard about this class of issues again.

### Git Migration

Oh boy. This has been by far the most challenging and rewarding
project of my professional career to date.

!!! info

    I need to call it quits for today (I've written this entire page
    in about 90 minutes and I'd like to get some sun). [My
    resume](/resume--allred-sean.pdf) has some details on what I've
    done on this project.

## (2014--2015) GD-AIS

Worked for General Dynamics (defense contractor). I can't say much
since it was a 'leave your phone at the door' kind of job, but here
are a couple things I was proud of:

- After seeing its systemic shortcomings, I redesigned the graphics
  foundation layer to adhere to best practices in OO (C++).
- Borne purely out of my own need, I consolidated duplicated logic and
  functionality into an NFS mount manager (Bash), gracefully handling
  network faults.

## (2013) Progeny Systems (Intern)

Interned at Progeny for the summer of 2013. My project revolved around
creating and documenting virtual systems and further virtualizing
existing infrastructure, primarily via SSH-only access.

I'll call out one experience I had independently recognizing,
escalating, and resolving an issue where our Redmine server went down.
I kept a (mostly) cool head and got everything back up and running
that afternoon/evening with minimal impact to our team.

## (2013--2014) SMCM Server Admin for CS Department

Just going off my notes (I have no memory of this), we (I and one
other) were responsible for the department's hardware, software,
firewalls, and other security measures for our department's subnetwork
of 10--15 servers (both physical and virtual). We worked primarily via
remote administration/SSH.

Again from my notes, it sounds like we were able to stand up a Redmine
server -- probably as the first order of business to make sure our
work was documented. I understand our work was extended in the next
year to stand up a Moodle instance.
