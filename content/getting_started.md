
To get started with jem-press, download [this `zip` file][down]. This contains
a sample site, but it's pretty simple to change and provides a good reference
to base your site off of. All your content is in
`content/` and if you run `ruby update.rb`, it will publish your site,
formatting and everything included.

## Content
Edit the files in `content` to change your content using the popular
[Markdown][markdown] mark-up language, specifically the [MultiMarkdown][multi]
flavor. To publish new content:

1. Create new files, `content/new_name.md`. It should end in `.md` to be processed.
2. Edit `content/menu.md` to include the menu. This is purely markdown flavored
   and accepts relative links.
3. Run `ruby update.rb` to publish to `html/`. These files can be viewed on
   your computer and can also live on a server. This ruby file processes every
   markdown file in `content`, links images in `images` (subfolders included!)
   and puts the completed files into `html`.

Of course, any of the hard and fast rules can be undone by editing the
`update.rb` file. You can change folder names (`content`, `html`, `images`,
etc) or specific file names (`menu.md`, `header.html`).

If you want to further customize, you can edit the CSS file (which is
well-commented!) or edit `header.html`.

## Menu 
The menu is contained in the file `content/menu.md` and is pure markdown. To
include links, use the appropriate syntax with relative links: 

```
[Link text](relative_file.html)

[Another link](relative_file2.html)
```

Note that markdown needs a new line to keep paragraphs separate.

Instead of using the extension `.md` on your file links, you should use the
extension `.html`. That makes it easier for the ruby script.

### Sections
Per markdown formatting, you can include any size header. But, the CSS is
formatted to accept `h3`. That is, use `###`.

```
### Good looking section title
[Link text](relative_file.html)

[Another link](relative_file2.html)
```

Oh, and an h2 or `## Section` has that nice underline.

## Images
Images are the reason we use MultiMarkdown because you can include
width/height/[any URL tag][url-img].

That is, it's possible to specify where and how large the image should be.

```
An image!

 ![image][]

[image]:images/space-shuttle.jpg "Image title" width=200px height=200px align=center
```

> An image!

>  ![image][]

Note that this `![image][]` expects the image to be inline, otherwise you get a
caption of `image` (why? beats me). To fix this, I just put a space before `!`.

Luckily, any HTML is valid in markdown, meaning it's relatively straightforward
to center an image.

```
<p style="text-align: center;">
<img src="images/space-shuttle.jpg" width=200 height=200>
</p>
```
<p style="text-align: center;">
<img src="images/space-shuttle.jpg" width=200 height=200>
</p>


## Favicons
Favicons are generated from [realfavicon][favicon]. I recommend you go here to
change your image, and replace the icons in helper/favicons/. The code that
links these favicons is in helper/header.html.

## Font Awesome
[Font Awesome][awe] generates great icons that can be embedded in text (meaning
links work!). To use Font Awesome, look at the [font icon list][icon-list] and
write `<i class="fa fa-bomb"></i>` in your Markdown. Then, <i class="fa fa-bomb"></i> gets produced because Font Awesome is da bomb! If you want more examples, look at Font Awesome's [documentation][fa-doc].

Note: since we're using the CDN, this only works parses once published. To get
around this, use Font Awesome's regular folders or start your own web server.

[fa-doc]:http://fortawesome.github.io/Font-Awesome/examples/
[icon-list]:http://fortawesome.github.io/Font-Awesome/icons/
[awe]:http://fortawesome.github.io/Font-Awesome/

## LaTeX
jem-press uses MathJax to render LaTeX. That means you use `$` for inline and
`$$` for a separate paragraph, just like normal latex.


[favicon]:http://realfavicongenerator.net
[image]:images/space-shuttle.jpg "Image title" width=200px height=200px
[url-img]:https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Img
[multi-docs]:http://fletcher.github.io/peg-multimarkdown/
[markdown]:https://en.wikipedia.org/wiki/Markdown
[multi]:http://fletcherpenney.net/multimarkdown/
[down]:https://github.com/scottsievert/jem-press/archive/master.zip
