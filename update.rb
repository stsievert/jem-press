#!/usr/bin/env ruby
# USAGE:
#   `ruby update.rb`
#
#   This will convert everything in the same folder as this file to html (using
#   multimarkdown) and write it, with a header and footer and css, to
#   html/filename.html
 
require 'optparse'

about = { "version" => "0.2",
          "author" => "Scott Sievert",
          "author_email" => "sieve121@umn.edu",
          "homepage" => "http://scottsievert.github.io/jem-press/"
        }

options = {}
OptionParser.new do |opts|
    opts.banner = "Usage: 
    `ruby update.rb`. Processes every *.md file in content/ and writes a complete 
     website to html/ including styling. 
    
    The menu is assumed to named menu.md and images are assumed to live in content/images/
    "
    opts.on('-v', '--version', 'Print version and exit') do 
        puts "version "+about['version']; 
        exit; 
    end
    opts.on('-p', '--publish', 'Write HTML files to jem-press/ and exit') do
        `cp -rf html/* .`
        exit
    end
    opts.on('-r', '--remove-install', 'Remove the install. Delete all the *.html files from jem-press/') do
        files = Dir::glob("*.html")
        print files
        exit
    end

end.parse!

markdown_files = Dir::glob("content/*.md")
html_files = Dir::glob("html/*.html")

names = []
for file in markdown_files
    names.push(File.basename(file).split('.')[0])
end

header = Dir::glob("helper/header.html")
footer = Dir::glob("helper/header.html")

# removing all the files in html/
`rm html/processed_md/*`
`rm -rf html/*.*`

# writing the files. header+content+footer, two column
puts 'Processing'
for name in names
    puts '    content/'+name+'.md'
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

