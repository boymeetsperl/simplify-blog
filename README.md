# Simplify Blog

I don't really like traditional RSS aggregators, this project is an attempt
at making it significantly easier to read RSS feeds by placing them in an extremely
easy to read, well-designed post-driven static html template. Rather than attempting to
re-invent the wheel, Simplify just generates a static html blog page with the entries
in which the user is interested.

## Features
* a wonderful modern design
* easily configurable, styles controlled with CSS3

## Usage
`git clone https://github.com/crunkmaster/simplify-blog/`
`gem install feedzirra`
`ruby simplify.rb && open simplify.html`
in its current state, this will generate a single static page with the feed
inside feeds.conf
