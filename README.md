# Snack Scheduler App

Replace manual creation of snack schedule to help coordinate snacks for small group as well as discipleship community meeting and events.
The use of this app will aim to be the go-to place to see and schedule snack volunteers.

## Quick-start dev instructions

Start up Postgres `pg_ctl -D /usr/local/var/postgres start`

Start rails server `rails s`

When you're done, stop the rails server then stop postgres using `pg_ctl -D /usr/local/var/postgres stop`.

### Postgres quality of life tip

You can add aliases in your bash (or zsh) config to make using the postgres commands easier.
In your bash config (or zshrc if you use zsh) add the following lines:

`alias pg-start="pg_ctl -D /usr/local/var/postgres start"`

`alias pg-stop="pg_ctl -D /usr/local/var/postgres stop"`

`alias pg-restart="pg_ctl -D /usr/local/var/postgres restart"`

Now, you can use `pg-start`, `pg-stop`, or `pg-restart` instead of having to remember the verbose original command.

## Postgres Database Layout

![erd](/erd/erd.jpg)
