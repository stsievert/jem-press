## Bugs
* Menu goes all the way to bottom of screen, but run into issues if content
  shorter than menu. Worst case, use `<br>` at the end of your Markdown file.
* No dates in footer.

## Versions
* 0.3: Added new feature: `ruby update.rb -n new_post`. Spaces not supported
  in filename, opens promptly in default editor.
* 0.2: Ready for public consumption. Menu goes to bottom of content, textured
  background at bottom of content if less than screen.
* 0.11: Menu image centered, footer bug fixed.
* 0.1: Initial release, almost ready for consumption. Docs in decent shape,
  command-line options working, mobile-friendly, $\LaTeX$ support and more. To
  add:
    * move menu column background to bottom of page, regardless of content
      height.
    * center menu image

## Contact
jem-press was developed by [Scott Sievert][scott]. Please email Scott at <a
href="stsievert@wisc.edu">stsievert@wisc.edu</a> with any bug reports or
comments. The [source code][source] is included on Github, and I welcome pull
requests and issues.

[scott]:http://scottsievert.github.io
[source]:https://github.com/scottsievert/jem-press
