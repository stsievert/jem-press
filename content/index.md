## jem-press

You want to create a simple website. You don't want to mess around with any
GUIs and look at [Octopress][octo], [Jekyll][jekyll] and other blog-sensitive
[site generators][site], but they're not right. You look at [jemdoc][jemdoc],
[harp][harp] and [wintersmith][winter], but they all seem too complex (though
jemdoc the least complex). You just want to write your content, have it look
decent by default and publish it. You don't want to mess around with themes or CSS files.

jem-press just does that. You write your content in Markdown, run `ruby
update.rb` and boom. Your site is in `html`, completely formatted. Prime
candidates seem to be simple and blog-free websites, such as academic websites.

jem-press is designed to be *easy.* Complexity and ease seem to opose each
other. This site generator is designed for you to create a site with ease and to
customize the site with almost equal ease to a small degree. If you're
interested in drastically changing the site, jem-press is not for you.

If [Octopress][octo] and [jemdoc][jemdoc] had a child, they would name it
jem-press. It would combine the convince of jemdoc with the functionality of
Octopress. The main differences are jem-press uses the popular Markdown and
requires no configuration: you just start writing content. jemdoc uses a
not-very-popular markup syntax and requires some initial setup.  Octopress is
easy to use but is blog aware and doesn't seem right for these simple website.

## Features
* simple, feature minimal (deliberately!)
* mobile friendly
* no configuration necessary. However, CSS file is well commented (and
  hopefully easy to modify).
* popular markdown formatting
* easy for academic/static sites
* not blog sensitive
* $\LaTeX$ equation support

#### License

<p style="font-size: 10pt">
Copyright © 2014 Scott Sievert<br>

jem-press is free software; you can redistribute it and/or modify it under the
terms of the <a href="http://www.gnu.org/licenses/gpl-3.0.html">GNU General Public License</a>  as published by the Free Software Foundation; either version 3 of the License, or (at your option) any later version. <br>

jem-press distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the 
<!--[GNU General Public License][gnu] -->
<a href="http://www.gnu.org/licenses/gpl-3.0.html">GNU General Public License</a>
for more details.
</p>

[jem-press-ex]:http://scottsievert.github.io/jem-press/
[gnu]:http://www.gnu.org/licenses/gpl-3.0.html
[other]:http://staticsitegenerators.net
[harp]:http://harpjs.com/docs/quick-start
[winter]:http://wintersmith.io
[jekyll]:http://jekyllrb.com
[octo]:http://octopress.org
[site]:http://staticsitegenerators.net
[jemdoc]:http://jemdoc.jaboc.net/

