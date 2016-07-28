# ddone-ddid

Command line tool to use with your todo, to keep track of what you
did.

At Algolia, at the end of each week, we send an email with the important tasks
that we did in the past week. All this information is then aggregated and sent
to the whole team so everybody can have an overview of what happened in the
company.

I always have trouble remembering what I did in a given week so I wrote the
small tool to help me with this email.

Type `ddone "Here is what I just did"` (or `ddone` directly, it will open
your `$EDITOR`). Then type `ddid` to see the list of tasks you've done in your
editor.

I delete the whole content when I'm done, to have a fresh start for the
next week. All content is saved in `~/.done.txt`.

## What's up with the double d?

`done` is a terminal reserved word. I used `ddone` instead and did the same for
the `ddid`, for consistency.
