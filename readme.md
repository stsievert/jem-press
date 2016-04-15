
## jem-press
Jem-press is inspired by [Octopress][octo] and [jem-doc][jem], hence the name.
I like Octopress for all the customization and options, but it's lacking
deliberately feature-poor simplicity of jem-doc. However, jem-doc doesn't use
markdown, and seems kinda hacked together (no make file included, etc). So, I
decided to make jem-press.

Octopress is a blog-aware site generator. Jem-press is not, and could only be
blog aware if you formatted the blog yourself. In that sense, it's static. A
good example of the site I'm trying to produce is [the jemdoc website][jem].

Jem-press is supposed to be *simple.* It's designed so that all that's required
is to download this repo and change the markdown files. Everything else is
taken care of -- CSS, LaTeX equations, etc.

## [Documentation]
The [documentation] includes all the details on

[documentation]:http://scottsievert.com/jem-press/
[Documentation]:http://scottsievert.com/jem-press/

* how to install
* how to generate site
* some content tips

Even though the docs are *incredibly* useful, I'll include a couple bullets:

1. It's easiest to clone this repo to get started
2. All of the content displayed on the pages are in `content/`
3. Run `cd path/to/jem-press; ruby update.rb` to update your site

## [Sample site]
The [jem-press documentation site][jem-press] is written in jem-press itself.

[Sample site]:http://scottsievert.com/jem-press/

[jem-press]:http://scottsievert.com/jem-press/
[octo]:http://octopress.org
[jem]:http://jemdoc.jaboc.net/index.html

## Todo
1. Only folders within `images` are copied across. I should implement `find content -type d | xargs cp -r html/`

Features
=========
* simple, feature minimal (deliberately!)
* easy to pick up
* popular markdown formatting
* easy for academic/static sites
* not blog sensitive (no posts by date, no search, no keywords, etc)
