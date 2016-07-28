# done-did

Command line tool to use with your todo, to keep track of what you
did.

At Algolia, at the end of each week, we send an email with the important tasks
that we did in the past week. All this information is then aggregated and sent
to the whole team so everybody can have an overview of what happened in the
company.

I always have trouble remembering what I did in a given week so I wrote the
small tool to help me with this email.

Type `done "Here is what I just did"` (or `done` directly, it will open
your `$EDITOR`). Then type `did` to see the list of tasks you've done in your
editor.

I delete the whole content when I'm done, to have a fresh start for the
next week. All content is saved in `~/.done.txt`.
