<a href="https://github.com/scottsievert/jem-press"><img style="position: absolute; top: 0; right: 0; border: 0;" src="https://camo.githubusercontent.com/652c5b9acfaddf3a9c326fa6bde407b87f7be0f4/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f6769746875622f726962626f6e732f666f726b6d655f72696768745f6f72616e67655f6666373630302e706e67" alt="Fork me on GitHub" data-canonical-src="https://s3.amazonaws.com/github/ribbons/forkme_right_orange_ff7600.png"></a>

# jem-press
This is an alternative to [jemdoc], a static site generator. jemdoc is a simple
site generator, suitable for putting a couple pages up on the internet (neither
jemdoc or jempress are meant for blogs).

jemdoc provided inspiration (academic sites, nice layout) but I personally did
not like the implementation. jemdoc defined it's own markup language and embeds
latex as PNGs (avoided with [jemdoc+mathjax]). I decided to make my own
implementation of jemdoc but using Markdown, MathJax and jQuery. These tools
result in a clean solution.

jempress is simple to generate a site with. You write your content in
[Markdown][markdown], run `ruby update.rb` and your site is in `html/`,
completely formatted. Prime candidates seem to be simple and blog-free
websites, such as academic websites.

jem-press is designed to be *easy.*  This site generator is designed for you to
create a site with ease and to customize the site with slightly less ease. If
you're interested in drastically changing the formatting of this site,
jem-press is not for you.

## Features of jempress
* $\LaTeX$ equation support with [MathJax] (see? $e^{j\pi} = -1$)
* Popular formatting language [Markdown] (as used on
  Reddit/GitHub/StackOverflow/more)
* designed as alternative to [jemdoc]
* mobile friendly
* simple, feature minimal (deliberately!)
* no configuration necessary

## Other static site generators
* [jemdoc]
* [Octopress][octo]
* [Jekyll][jekyll]
* [harp]
* [wintersmith][winter]
* and there's also a list of other [static site generators][site]...

[jemdoc+mathjax]:http://www.mit.edu/~wsshin/jemdoc+mathjax.html

#### License
<p style="font-size: 10pt">
Copyright © 2014 Scott Sievert<br>

jem-press is free software; you can redistribute it and/or modify it under the
terms of the <a href="http://www.gnu.org/licenses/gpl-3.0.html">GNU General Public License</a>  as published by the Free Software Foundation; either version 3 of the License, or (at your option) any later version. <br>

jem-press distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
<a href="http://www.gnu.org/licenses/gpl-3.0.html">GNU General Public License</a>
for more details.
</p>

[mathjax]:https://www.mathjax.org
[jem-press-ex]:http://scottsievert.github.io/jem-press/
[gnu]:http://www.gnu.org/licenses/gpl-3.0.html
[other]:http://staticsitegenerators.net
[harp]:http://harpjs.com/docs/quick-start
[winter]:http://wintersmith.io
[jekyll]:http://jekyllrb.com
[octo]:http://octopress.org
[site]:http://staticsitegenerators.net
[jemdoc]:http://jemdoc.jaboc.net/
[markdown]:https://en.wikipedia.org/wiki/Markdown#Example
