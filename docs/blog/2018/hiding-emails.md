---
date: 2018-03-14
---

# Hiding Emails from Scrapers

I really enjoy using static site generators.  They allow me to get a
presence up and going without any real substantial knowledge of how to
*actually* run a website.  I've no particular interest in doing that
for a living, so I appreciate the time saved.

Sometimes it's helpful to have *some* interactivity with visitors,
though.  One such opportunity that I've encountered is an RSVP for an
event I'm hosting in a few months.  [Formspree.io][formspree] is among
a few services that give you a simple infrastructure with which to get
information from visitors.  Its approach is to use a form-action that
includes your email address so that form submissions can be forwarded
there.  They have a paid option that will provide a dummy email
address which is *great* for professional uses (and supports free
software!), but my use-case is particularly limited to fewer than 100
people.

So, how can I avoid adding my email address in plain text?  Simple:
make the text more complicated to parse!

Here is an approach that encodes your email (or other semi-sensitive
information) and decodes it just-in-time to be used.

We start a simple HTML form:

```html
<form id="rsvp" method="POST"
      data-form-target="aHR0cDovL2Zvcm1zcHJlZS5pby9zZWNyZXRAZXhhbXBsZS5jb20=">
  <input type="text"     name="name"     placeholder="Your name" />
  <input type="email"    name="_replyto" placeholder="Your email address" />
  <input type="checkbox" name="yesno" />
  <label for="yesno">I'll be there!"</label>
  <input type="submit" value="Send RSVP" onclick="fixform('rsvp');" />
</form>
```

Note our `data-form-target` attribute on `#rsvp`.  Our JavaScript
makes use of this:

```javascript
function fixform(id) {
  var form = document.getElementById(id);
  form.action = atob(form.getAttribute("data-form-target"));
}
```

This function takes a node ID and calculates an `action` attribute
value from the base-64-encoded value of `data-form-target`.  In this
case, our 'decrypted' value is calculated to be
`http://formspree.io/secret@example.com` -- not at all obvious using
naive scraping tools.  This value is placed in the form's attributes
just in time to be used by Formspree, leaving your email relatively
safe.

---

There are probably more even safer or more sophisticated ways of
accomplishing the same task; this is just an approach I thought up in
an idle evening.  You can make it moderately better by finding some
function to 'pseudo-hash' your secret such that there's no possible
prefix pattern in the 'encrypted' string.  If you *really* want to be
sure you don't receive avoidable spam, you should use a service like
[reCAPTCHA][recaptcha] before even putting your email into the DOM or
linking to a page with the email available.  (Another option is to
just pay for Formspree's awesome service!)

Happy hacking!

[formspree]: https://formspree.io
[recaptcha]: https://www.google.com/recaptcha/
