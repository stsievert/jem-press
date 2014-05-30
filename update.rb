#!/usr/bin/env ruby
# USAGE:
#   `ruby update.rb`
#
#   This will convert everything in the same folder as this file to html (using
#   multimarkdown) and write it, with a header and footer and css, to
#   html/filename.html
#
#   I think I should have a jQuery page in helper that has basic content. Then
#   find-and-replace stuff

markdown_files = Dir::glob("content/*.md")
html_files = Dir::glob("html/*.html")

names = []
for file in markdown_files
    names.push(File.basename(file).split('.')[0])
end

header = Dir::glob("helper/header.html")
footer = Dir::glob("helper/header.html")

# removing all the files in html/
#`rm html/processed_md/*`
#`rm -rf html/*.*`

# writing the files. header+content+footer, two column
for name in names
    puts 'Converting md to html, writing '+name+'.md to processed_md/'+name+'.html'
    html_name = name+'.html';

    `multimarkdown content/#{name}.md > html/processed_md/#{name}.html`

    page = `cat helper/page.html`
    page ['../index.html'] = 'processed_md/'+html_name
    File.open('html/'+html_name, 'w'){|f| f.write(page)}
end

`cp -rf content/images/ html/images/ `
`multimarkdown content/menu.md > html/menu.html`
`cp -rf helper/style.css html/style.css`
`cp -rf helper/header.html html/header.html`
`cp -rf helper/jquery.js html/jquery.js`

