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
