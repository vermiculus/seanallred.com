---
layout: post
title: "GitHub Pages with DreamHost"
date: "2015-05-24 21:35:05 -0500"
comments: true
---

It's been a long, confusing day as I've migrated some of my old
content to Jekyll hosted by GitHub Pages served by DreamHost.  In the
hopes of saving some poor soul out there the same pain I've been
through, I'm going to make this as simple and straightforward as I
can.  I drive stick with Jekyll on Mac OS X -- I do not use GitHub's
page generator.  If you want to use the page generator, you may still
use this guide as a reference, but I'm sorry that it won't line up
perfectly.

Assume your GitHub username is `bobbins`, your domain name is
`bilbo.org`, and you want to use `blog.bilbo.org` for your Jekyll
blog.  Assume you want to store your blog at `~/blog`.  (If you want
to use the `www` subdomain for your blog, it's a little more
complicated, but that information is here, too.  Read the whole
tutorial *before* you start; I backtrack a bit for `www`.)

## GitHub

Create a new repository over at GitHub and name it

    bobbins.github.io

You are done on GitHub (unless you use the web to create files, in
which case, God rest your soul).

## Local

Ensure you have Ruby, version 2 or later.  The following makes a
directory in your home folder called `blog`, installs the
`github-pages` gem in the project, and scaffolds (i.e. generates) a
skeleton Jekyll site.  It then creates an appropriate CNAME file and
commits everything to a git repository it initializes.  Finally, it
adds GitHub as the upstream origin for your `master` branch and
pushes.

{% highlight sh %}
mkdir ~/blog && cd ~/blog
echo "source 'https://rubygems.org'" >> Gemfile
echo "gem 'github-pages'" >> Gemfile
sudo gem install bundler
bundle install
bundle exec jekyll new bupkis
mv bupkis/* .
rmdir bupkis
echo -n "blog.bilbo.org" > CNAME
git init
git commit -m "Initial commit"
git remote add origin git@github.com:bobbins/bobbins.github.io.git
git push –set-upstream origin master
{% endhighlight %}

## Dreamhost

1. Login to your DreamHost control panel.
2. In the main menu (on the left sidebar), go to Domains → Manage
   Domains.
3. On the left, just under your domain name, click 'DNS'.
3. Add a custom DNS record to `bilbo.org` named `blog`, type `CNAME`,
   with a value of `bobbins.github.io`.

You're done!

Yes, all this took me the whole day.  I lost a lot of time messing
with so-called `A` records.  I have to admit that I am one of those
people who has very little idea what he's doing, but everything I
managed to do was able to be undone.  In the end, it was simply a
matter of time in waiting for the changes I made to propagate to the
DNS servers.  However, the longest wait was for the following change:

## Using the `www` subdomain

When using their web hosting service, DreamHost reserves the `www`
subdomain (among others) to manage your account.  That means that you
cannot give `www` a `CNAME` record pointing to GitHub Pages.

If you wish to do this, you must change the type of your registration
to DNS-only.  In the domain listing, under the Web Hosting column,
review the information for your domain by clicking edit.  After you've
read and understand *exactly* what you're about to remove, go ahead
and scroll all the way to bottom, type in `bilbo.org`, and save by
clicking 'Host DNS Only!'.  After that, change the `CNAME` file in
your repository to use the `www` subdomain.  After you do this and
your changes take effect, traffic to `www.bilbo.org` will be
redirected to your Pages site.

## Further Reading

- <https://help.github.com/categories/github-pages-basics/>
- [Simple width fix for Disqus comments with Jekyll](https://gist.github.com/vermiculus/54ff79fc4d98f401bf15)
