# HTML

## VSCodium
```
comment toggle: ctrl /
```


## Elements
```
elements: <start tag>text<end tag>: inline and block
inline: float content on left and right
block:  fill entire line; can display nothing on left or right
can change via: display: float;

<p title="tooltip">
vs: col mode select: shift up/down
preformatted element: <pre>text</pre>
inline style: style="background-color:powderblue";
color: tomato powderblue lightgray
font family: font-family: verdana, courier
font-size: 160%
text-align: center

major navigation: <nav></nav>
display property: 20: inline, block, inline-block, none
for testing: href= "#"

x: &times
hamburger menu: &#x2630: it is a code, not image; aka menu icon
smaller hamburger: &#8801
bigger hamburger:  &#9776
```


## Tricks
```
200px on left element: right element would have margin-left: 200px;
```


## Text formatting
```
bold: <b>text</b>
<strong>text</strong>
italic: <em>text</em>
italic: <i>text</i>
small: <small>text</small>
strike out: <del>text</del>
insert (underline): <ins>text</ins>
subscript: <sub>text</sub>
superscript: <sup>text<sup>
```


## Quotation/ Citation
```
indent: <blockquote cite="http">text</blockquote>
"short quote": <q>text</q>
<abbr title="tooltip">text</abbr>
<address>text</address>
<cite>text</cite>
bi-directional overwrite: <bdo dir="rtl">text</bdo>
```


## Colour values
```
<img border="0">

names: 140: Tomato
rgb: rgb(255,99,71)
rgba: alpha channel
hex: #RRGGBB: #ff6347
hsl: hsl(9,100%,64%): hue, saturation, lightness
h: 0-360: RGB
s: 0%-100% full color
l: 0%-100% B to W

hsla: alpha channel: hsla(9,100%,64%,0.5)
alpha channel: opacity: 0.0-1.0
shades of gray: R,G,B equal

Tomato
SlateBlue
DodgerBlue
LightGray
MediumSeaGreeb

<h1 style="background-color:Tomato;">
text color: <h1 style="color:DodgerBlue;">
border color: <h1 style="border: 2px solid Tomato;">
```


## Links
```
hyperlink: <a href = "url">text</a>
<p>
<a></a>
<a></a>
</p>

target attribute: _self, _blank, _parent, _top
url: absolute or relative
link tooltip:title= "tooltip"

Image as link: <a> <img width:42px; height:42px> </a>
email lin: <a href="mailto: mty@abc.com">Send mail</a>
button link: <button onclick="document.location='default.asp'">text</button>

link color: visited, unvisited, active, hover
change with css:
a: link {}
a: visited {}
a: hover {}
a: active { color:green; background-color:transparent; text-decoration: underline or none}

link button: no <button> used instead use <a>text</a>
css: a:link, a:visited; a:hover, a:active
a:link , (got ,?) a:visited {
    background-color: #f44336;
    color: white
    padding: 15px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
}

a:hover, a:active {
    background-color: red;
}

create bookmark: use id attribute:
<h2 id="C4">Chapter 4</h2>
<a href= "#C4">Jump to Chapter 4</a> or
<a href= "another-page.html#C4">Chapter 4</a>
```


## Images
```
linked to web pages; not inserted
empty element
<img src="url" alt="alt text">
<img src="dog.jpg" alt="dog" width="500" height="333">
specify image size: 2 ways
1. style= "width:500px; height:600px;" /* preferred */
2. width="500" height="600" /* in pixel */
width: 100%

animated images: gif: src= "programming.gif"
image as link: <a> <img> </a>
images: inline element: float property
<p> <img style= "float:right"> text </p>
wrong: text <img style= "float:right">
because you want <img> to folat left or right

image formats:
jpeg: jpg, jpeg, .jfif, .pjpeg, .pjp
.png
scalable vector graphics:.svg
icon: .ico, .cur
.gif
animated: .apng 

Image map:
define image map: <map>
clickable area: <area>
container: <picture>
```


## CSS
```
styles and colours
cascading style sheet: parent to child elements
3 ways:
inline: style attribute: <h1 style="color:blue;">
internal: <style> element: <style>body {color:red;} p {color:blue;}</style>
external: <link>: <link rel="stylesheet" href="styles.css">
```


## CSS color
```
font-family
font-size
border
padding: between text and border

color:blue;
font-family: verdana, courier
font-size: 300%
border: 2px solid powderblue;
margin: space outside border

p {
    border: 2px solid powderblue;
    padding: 30px;
}
```


## w3

```
2 files: w3.css w3.js: all are classes

w3-container
w3-panel
w3-main
w3-button
w3-collapse
w3-bar-block: vertical; without: horizontal
```


## w3-container
```
16px l/r padding
for all html container elements:
<div> <article> <section>
<header> <footer> <form>
can use <div> for <header>, <footer>, <article>, <section>
<h1>, <p>: provide margins to simulate padding
```


## w3-panel
```
16px /r/t/b margins
no margins: text
got margins: <h1>text</h1> or <p>text</p>
panel: good for notes, quotes, alerts and cards (shadow) with pale colour
e.g. w3-palegreen

typical:
<h2>text</h2>
<p>text</p>
<div>
  <p>text</p>
</div>

w3-panel
w3-leftbar
w3-sand
w3-xxlarge
w3-serif
w3-card-4
w3-round-xlarge
```


## Navigation bars
```
classes: 7
basic: w3-bar w3-bar-item
responsive: w3-mobile
colored bars: w3-color
bordered bars: w3-border w3-card-4
active/current link: w3-color
hoverable links: w3-hover-color
right-aligned links: w3-right
bar size: w3-size w3-padding
bar with icons: font awesome: fa fa-search
bar text: w3-bar-item <span>
bar with inputs and buttons: w3-input w3-button <input> <a>
bar with dropdown: w3-dropdown-hover w3-dropdown-content w3-bar-block w3-card-4
clickable dropdown: w3-dropdown-click onclick
horizontal dropdown menu: remove w3-bar-block from container
responsive navbar and dropdown: w3-mobile on container and all links
fixed navbar: w3-top w3-bottom
vertical navbar: w3-bar-block
collapsing navbar hamburger menu: w3-hide-small w3-hide-medium w3-hide-large w3-show js
side navbar: w3-sidebar
```


## Sidebar or vertical navbar
```
Always display: 2 <div>s w3-sidebar w3-bar-block width:25% margin-left: 25%
open navbar over part content: w3_open() w3_close() style.display block or none
open navbar over content (hamburger): w3_open() w3_close() style.width 100% style.display block or none
collapsible responsive sidenav: w3-collapse w3-hide-large onclick
slide page content to the right: w3_open() w3_close() style.marginLeft width display
right-sided sidenav: 2 <div>s width:25% right:0 and margin-right: 25%
right-sided collapsible sidenav: w3-collapse w3_open() w3_close() onclick style.display width
left and right sidenav: w3-animate-left right style.display js
styling sidenav: w3-color
bordered sidenav: w3-border w3-border-bottom w3-card
hoverable links: w3-hover-color w3-hover-none
sidenav sizes: w3-size w3-padding
sidenav with icons: font awesome fa fa-home width <a>
sidenav with dropdown: w3-dropdown-hover fa-caret-down w3-dropdown-content
sidenav with accordion: w3-dropdown-click onclick
animated sidenav: w3-animate-left
sidenav overlay: w3-overlay onclick
sidenav content: <div>s with w3-sidebar w3-container <img> <a>s 
```


## Slideshow
```
manual: <img>s with same class name; 2 buttons w3-display-left w3-display-right; onclick
automatic: carousel()
html slides: <div>s with mySlides class; carousel()
Caption: w3-display-* classes: topleft middle right; bottomleft middle right; left right or middle
Indicators: w3-center onclick
Images as indicators: onclick
Multiple slideshow on same page: multiple classes
Animated slides: w3-animate-* top bottom
Faded animation: w3-animate-fading
```
