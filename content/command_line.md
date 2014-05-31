
## Command line
Usage: `ruby update.rb`. Will take Markdown files published in `content/`,
images in `content/images`. This is published with a default header, footer and
CSS files, all contained in `helper/`. These names are special; to be changed,
look in the `update.rb` file.

### Options
* `v`, `--version`: Print version and exit.
* `-h`, `--help`: Print help (essentially this page) and exit.
* `-p`, `--publish`: Copy the published site from `html` to `jem-press.`. Useful
  for situations where you want the source with the site. Requires `ruby
  update.rb` first.
* `-r`, `--remove-publish`: Removes the published site from `jem-press/`.
