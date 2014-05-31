
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
* `-n`, `--new-post`: Create a new *.md file and open in your default editor.
  To change that, at least on a Mac, see [this link][default]. This doesn't
  support spaces in the filename and doesn't need the `.md` extenstion. Example
  `ruby update.rb new_post`.

[default]:http://computers.tutsplus.com/tutorials/quick-tip-how-to-change-the-default-application-to-open-files--mac-51413
