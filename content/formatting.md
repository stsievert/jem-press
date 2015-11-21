
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

## LaTeX
jem-press uses MathJax to render LaTeX. That means you use `$` for inline and
`$$` for a separate paragraph, just like normal latex. See the [latex page](latex.html)
for more detail.

$$\begin{align}
1 &=\sin^2(x) + \cos^2(x) \\
&= 2 + e^{j\pi}\\
&= \int_1^\infty \frac{1}{x^2} dx
\end{align}$$

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

## Code blocks
By default, jem-press does code blocks that are not syntax highlighted:

```python
x = 1
while True:
    x += 1
    if x > 10: break
print(x)
```

If syntax highlighting is wanted, I would recommend visiting [hilite.me].
There you can manually syntax highlight your code and get raw HTML. You can
paste this directly into your Markdown document.

I found most success with this CSS string:

```css
padding: 1em;
```

This will give you

<!-- HTML generated using hilite.me --><div style="background: #ffffff; overflow:auto;width:auto; padding: 3em"><pre style="margin: 0; line-height: 125%">x <span style="color: #333333">=</span> <span style="color: #0000DD; font-weight: bold">1</span>
<span style="color: #008800; font-weight: bold">while</span> <span style="color: #007020">True</span>:
      x <span style="color: #333333">+=</span> <span style="color: #0000DD; font-weight: bold">1</span>
      <span style="color: #008800; font-weight: bold">if</span> x <span style="color: #333333">&gt;</span> <span style="color: #0000DD; font-weight: bold">10</span>: <span style="color: #008800; font-weight: bold">break</span>
<span style="color: #008800; font-weight: bold">print</span>(x)
</pre></div>

[hilite.me]:http://hilite.me


[favicon]:http://realfavicongenerator.net
[image]:images/space-shuttle.jpg "Image title" width=200px height=200px
[url-img]:https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Img
[multi-docs]:http://fletcher.github.io/peg-multimarkdown/
[markdown]:https://en.wikipedia.org/wiki/Markdown
[multi]:http://fletcherpenney.net/multimarkdown/
[down]:https://github.com/scottsievert/jem-press/archive/master.zip
