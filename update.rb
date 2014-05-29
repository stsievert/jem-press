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

markdown_files = Dir::glob("*.md")
html_files = Dir::glob("html/*.html")

names = []
for file in markdown_files
    names.push(File.basename(file).split('.')[0])
end

header = Dir::glob("helper/header.html")
footer = Dir::glob("helper/header.html")

# removing all the files in html/
`rm html/*`

# writing the files. header+content+footer, two column
for name in names
    puts 'Converting md to html, writing '+name+'.md to html/'+name+'.html'
    html_name = name+'.html';
    `rm -rf html/#{html_name}`

    command = 'cat helper/header.html >> html/'+html_name; `#{command}`
    command = 'echo "<div id=\'wrap\'>" >> html/'+html_name; `#{command}`

    command = 'echo "<div id=\'header\'>" >> html/'+html_name; `#{command}`
    command = 'echo "</div>" >> html/'+html_name; `#{command}`

    command = 'echo "<div id=\'main\'>" >> html/'+html_name; `#{command}`
    command = 'multimarkdown '+name+'.md >> html/'+name+'.html'; `#{command}`
    command = 'echo "</div>" >> html/'+html_name; `#{command}`

    command = 'echo "<div id=\'footer\'>" >> html/'+html_name; `#{command}`
    command = 'cat helper/footer.html >> html/'+name+'.html'; `#{command}`
    command = 'echo "</div>" >> html/'+html_name; `#{command}`

    command = 'echo "</div>" >> html/'+html_name; `#{command}`
end

# copying the css file over
`cp -rf helper/style.css html/style.css`
