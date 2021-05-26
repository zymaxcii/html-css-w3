# GIT
```
git
git config files:
[path]/etc/gitconfig: --system
  ~/.gitconfig or ~/.config/git/config: --global
  /git/config
  .git/config: --local 
 
  git config --list --show-origin
 
when you install Git,set your user name and email address:
git config --global user.name "zymaxcii"
git config --global user.email zyma.xcii@gmail.com
git config --global core.editor vi

To set main as the default branch name do:
git config --global init.defaultBranch main
your configuration settings:
git config --list
git config <key>:
git config user.name
John Doe

git push: cannot paste password or personal access token
use vscodium: push to fix this problem

push existing repo:
git add * or . (current directory)
git commit -m "commit message"

git remote add origin https://github.com/zymaxcii/sth.git
all: git push -u origin master
git remote
git remote -v

vscodium:
settings: enable git
perform git add first
enter commit message then click "tick" to commit
3-dot menu: push
F1 command palette: add remote
```

## Steps involved
```
1. create a new repo in github
2. git clone: either https or ssh
a sub-directory will be created
set account default id:
git config --global user,email "zyma.xcii@gmail.com"

github: uses markdown.md
good; can read my stuff here; no need to put into blogger
ctrl f to find/search

5. get latest changes: git pull
    work on new files
    git add *
    git commit -m "msg"
    push
    repeat the above

6. Revert a change
    find hash of commit
    git log --pretty=online
    git revert <first 5 chars e.g. 37101>

More: github actions
```


## Work on branches
```
branches: main, dev
when happy to go live on production site
merge changes into main
1. git checkout -b dev
-b: create a new branch
git push --set-upstream origin dev

2. merge branches
flip back to main branch
no -b: git checkout main
merge changes: git merge dev
push: git push

```



# HTML

## VSCodium
```
comment toggle: ctrl /
wrap with text:
  select text: F1: wrap with abbr
my way: select text: delete: then p<tab> ctrl v
lorem <enter>: 30 words
lorem10: 10 words
ul.my-list>lorem10.item-$*5
ul>li{lorem10}*5
```


## Emmet for html
```
! <tab/enter>
<tagName> <tab/enter>
basic tags:
h1,p,bq,hdr,ftr,btn,sect
classes: .
div.wrapper: <div class="wrapper"></div> default to div
.wrapper
h1.header.center: <h1 class="header center"></h1>
ids: # same way
div#hero: <div id="hero"></div>
combine:
div#hero.wrapper: <div id="hero" class="wrapper"></div>
content: { }
p{text}: <p>text</p>
siblings: +
children: >
section+section:
ul>li*5
climbing up: ^
div+div>p>span+em^bq
possible: 1 line for entire html's divs? try
grouping: ( ) better than ^
div>(header>ul>li>a)+footer>p
multiplication: *
number items in sequence: $, $$$
ul>li*5
ul>li{Item$}*3
padding with 0s: ul>li.item$$$*5
start with a specific no: ul>li.item$@3*5
reverse direction: ul>li.item$@-*5
with a specific no: ul>li.item$@-3*5
implicit tagnames: 
.wrapper: <div>
em>.emphasis: <span>
ul>.item: li
table>.row>.col
  <table>
    <tr class="row">
      <td class="col">text</td>
    <tr>
  </table>
```


## Imitate a website
```
copy all text from original website
vscode: paste: then add tags or

set up all the <div>s with emmet (1-liner?)
then copy and paste from original website
```


## Emmet for css
```

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
jump to top of page: <a href=”#”>Back To Top</a>
jump to Section-1: 
  <a href=”#Section-1″>Back To Section 1</a>
  anchor link: <a name=”Section-1″></a>I’

Download link:
<a href="files/MPHBCAP.pdf" style="background-color: palegreen;">Download PDF</a>
<a href="www.yourwebsite.com/files/abcd.mp3">Download MP3</a>
<a href="www.yourwebsite.com/files/abcd.zip">Download ZIP</a>

how to remove the HTML extension from a URL on a webpage:
https://example.com/about.html
https://example.com/about

Solution 1 – Put pages in folders
about/index.html

Solution 2 – remove the HTML extension with a .htaccess redirect

RewriteEngine On
RewriteCond %{REQUEST_FILENAME} !-f
RewriteRule ^([^/]+)/$ $1.html
RewriteRule ^([^/]+)/([^/]+)/$ /$1/$2.html
RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteCond %{REQUEST_URI} !(\.[a-zA-Z0-9]{1,5}|/)$
RewriteRule (.*)$ /$1/ [R=301,L]

How to have common code footer on many pages?

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

order matters: a:link, a:visited, a:hover; a:active
pseudo-class: define a special state of an element
line below header: h2 {border-bottom: 20px solid #1e90ff;}
header: <h1>text</h1><p>text</p>

:root selector matches the document's root element; html element
:root {
  background: #ff0000;
}

CSS media types: define different style rules for different media types
media queiries: look at the capability of the device

@media not|only mediatype and (expressions) {
  CSS-Code;
}

<link rel="stylesheet" media="mediatype and|not|only (expressions)" href="print.css">
all, print, screen, speech

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


## Fonts
```

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


## CSS Box Model
```
everything displayed by css is a box
it is all boxes
box model: content, padding, border, margin boxes
outline and shadow boxes
outline:
box-shadow:
ouline-width: 200px;
debugging box model: with firefox

display:
<div>: block
<li> : list-item
<span> : inline
inline-block: respect block margin
box-sizing: content-box or border-box;


pseudo-classes and pseudo-elements:
*, *::before, *::after { box-sizing: border-box;}
before, after: pseudo-elements

<article>
  <p></p>
  <p></p>
</article>

article p:first-of-type { color:red; font-size: 1.5em;}

functions
filters
p {width, height, padding, border}
border-radius: circle;
intrinsic vs extrinsic sizing
use overflow property
overflow: width: max-content;
overflow: auto | scroll

<figure>
  <label>
  <input>
  <img>
  <figcaption>text</figcaption>
</figure>
```



## More CSS
```
styles and colours
cascading style sheet: parent to child elements
3 ways to insert css: external, internal, inline
multiple style sheets: last read used
cascading order
inline: style attribute: <h1 style="color:blue;">
internal: <style> element: <style>body {color:red;} p {color:blue;}</style>
external: <link>: <link rel="stylesheet" href="styles.css">

selectors: 5
1. simple: name, id, class, <html>
2. combinator
3. pseudo-class: state
4. pseudo-element: part of an element
5. attributes: h1.center { .. } p.center { .. }
p.center: <p> element with class="center"
refer to 2 classes: <p class="center large">

universal (wildcard):
* { color: hotpink;}
type, class, id, attributes: [ ... ]
[data-tpye='primary'] { color: red;}
<div data-type="primary"></div>
[data-type] { color: red;}

regardless of value:
[data-type='primary' s] { color: red;}
s: small
i: case insensitive

grouping: use ,
strong, em, .myelement, [lang] { color: red;}


select all html elements: * { color: blue;}
grouping selectors: use ",": h1,h2,h3 { color: red;}
margin-left: 20px; 
  20 and px: no space
color: maroon linen lavender

comments: 
  html: <!-- ... -->
  css: /* ... */

color names: 140
1. background color
2. text color
3. border color
background-color: Tomato;
color: DodgerBlue;
"border: 2px solid violet;"
3-digit hex code: #rgb
  #fc9 is same as #ffcc99
```


## Background
```
background effects for elements:
1. background-color
2. background-image: repeat horizontally and vertically
3. background-repeat: repeat-x, repeat-y, no-repeat
4. background-attachment: fixed, scroll (default)
5. background-position
6. opacity or transparency: 0 to 1
7. background: shorthand for all
8. other: background-clip background-origin background-size

body, p {
  background-image: url("paper.gif");
  opacity: 0.3;
  background-repeat: repeat-x;
  background-position: right top;
  margin-right: 300px;
}

"background: #ffffff url("img-tree.png") no-repeat right top fixed;"
```



## Borders
```
next
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


## Media queries
```
media queries: @media
apply different styles for different media types/devices
check: width, height, orientation, resolution of viewport/device
media type: print, screen, speech, all
responsive
@media not|only media-type and (mediafeature and|or|not mediafeature)
  { CSS-code;}
different stylesheets for different medias:
<link media="screen" and (min-width:900px;)" ...>
or max-width: 600px;

<nav></nav>
<menu></menu>

favicon: favourite icon, shortcut or url icon
appear in tab:
<link rel="shortcut icon" type="image/png" href="img/favicon.png">

```



## w3

```
2 files: w3.css w3.js (no?): all are classes
use mostly w3-classes and not raw css classes
everything in w3.css are classes
most or not all can apply to any html elements
hint: fill in all <tags>, then add attributes, class, id, etc
can copy/paste code from w3 website into my own code

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



## card
```
paper-like cards: w3-card
2px bordered shadow: w3-card-2
4px: w3-card-4
colored card: w3-color
card content: add containers inside the card
width: 50% margin-left: 50%; margin-right: 25%;
photo card:
  <div class="w3-card-4">
    <img>
    <div> <p>text</p> </div>
  </div>
```



## Default
```
font size: 15px
font: Verdana
line spacing: 1.5
override default:
1. in <head> section: <style> html, body, h1,h2,h3,h4,h5,h6 {font-family: Cursive, sans-serif;}</style>
2. add own.css after w3.css
3. change w3.css: h1 {font-size: 64px;}
note: comma separated in h1,h2...
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



## Button classes
```
add button behaviour to any html elements:
w3-button
with shadow: w3-btn
w3-bar
full width buttons: w3-block
circular button: w3-circle
ripple effect: w3-ripple
button colour: w3-color classes
hover color: w3-hover-color classes
color: pale-green, light-blue, Deep orange
button shape: w3-round-size classes
  <style>
  .w3-btn { wdth: 150px;}
  </style>
button size: w3-size classes
w3-tiny/ small/ medium/ large/ xlarge/ xxlarge/ xxxlarge/ jumbo
button border: w3-border, w3-border-color
full width botton: w3-block
disabled button: w3-disabled
w3-bar
  w3-button
  w3-button
w3-bar-item: without space between them
2 or more button bars on same line:
add w3-show-inline-block
left and right buttons: w3-left, w3-right
button with ripple effect: w3-ripple
any div, header, footer or container can be a button: ws-button, w3-btn
connect button: <button class="w3-button w3-block w3-dark-grey"> + Connect </button>
```


## Display classes
```
display inside other html elements:
w3-display-container
w3-display-topleft/ topmiddle/ topright
w3-display-left/middle/right
w3-display-bottomleft/ middle/ right
w3-display-position
w3-display-hover
float: w3-left, w3-right
block/none: w3-show, w3-hide, w3-hide-small
responsive: w3-mobile
display text inside an image:
  w3-display-container
  <img class="w3-display-tpleft">
display hover: w3-display-hover
create cool effects: combine with effect classes, animation classes
w3-hover-opacity, w3-display-hover
  <div class="w3-bar">
    <div class="w3-left">
    <div class="w3-right">
  </div>
clear floats: w3-clear

w3-display-container
w3-display-bottomleft
w3-padding
w3-row
w3-third
```


## Fonts
```
default: verdana
headings: Segoe UI
Use another font as default:
body,h1,h2,h3,h4,h5,h6 {font-family: Arial, Helvetica, sans-serif;}
4 built-in font classes: w3-serif, w3-sans-serif, w3-monosapce, w3-cursive
web safe sans serif fonts: arial,helvetica,verdana,geneva,tahoma,trebuchet hs
safe fallback
font-family: Arial, Helvetica, sans-serif;
"Segoe UI", Arial, sans-serif
monospace fonts: for code
font size: w3-size-tiny/ small/ medium/ large/ xlarge/ xxlarge/ xxxlarge/ jumbo
```


## Google fonts
```
1000 to choose
external font library:
Roboto, Sofia, Tangerine, Lobster, shadow-multiple

<link href="https://fonts.googleapis.com/css?family=Roboto">
body, h1,h2,h3,h4,h5,h6 {font-family: Roboto, sans-serif;}

create a font class:
.w3-sofia {font-family: Sofia, Cursive;}
<p class="w3-soofia">text</p>
```


## Text
```
alignment: w3-left-align, w3-right-align, w3-center, w3-wide
<img style="width:80%; max-width:320px; w3-wide">
text opacity: w3-opacity
text shadow: style="text-shadow: 1px 1px 0 #444": x y
special effect: w3-text-orange/ yellow
w3-round-size: w3-round, w3-round-small/ large/ xlarge/ xxlarge
display content inside a circle: w3-circle; easy
  <img class="w3-cicle">
w3-padding-32 w3-red w3-circle w3-center
circle inside a circle
w3-padding-number: 16, 24, 32, 48, 64 top and bottom
w3-padding-size: w3-padding, w3-padding-small/large
kevq: use margins or paddings?
w3-margin: add 16px margin to all sides of an element
clockwise: w3-margin-top/ right/ bottom/ left
top and bottom only: w3-section
```



## Border
```
w3-border, w3-border-0
w3-border-top/ right/ bottom/ left
w3-border-color: w3-pale-blue
w3-hover-border-color: red/ green
thick border: w3-bottombar/ -leftbar, rightbar,topbar
w3-round-size: w3-round, w3-round-small/ large/ xlarge/ xxlarge
w3-text-yellow
```



## Special codes
```
must have ";"
left angle quote: <p>&laquo; Previous</p>
right angle quote: <p>&raquo; Next</p>
copyright: &copy;
arrows: &larr; &rarr; &uarr; &darr;
weather widget: 32&deg; C
```


## Responsive
```
w3-row, w3-row-padding
w3-auto, w3-stretch
w3-half, w3-thitd, w3-quarter
w3-twothird, w3-threequarter
w3-col, w3-row
```

## Combinators
```
sit between 2 selectors
descendent, child, adjacent siblings, general siblings:
<space>, >, +, ~
elements: parent, child
1. descendent: <space>
  p strong { color: blue;}
2. next sibling: +
3. subsequent sibling: ~
4. child or direct children: >
```


## Pseudo-class and pseudo-elements
```
pseudo-class: :
a:link, :root, :hover
a:hover { outline: 1px dotted green;}
p:nth-child(even) { background: floralwhite;}

pseudo-element: ::
as if insert a new element with css
insert content in an element: ::before, ::after
.my-element::before { content: 'Prefix-';}

::marker
li:: marker { color: red;}
::selection { background: black; color: white;}

complex selectors: fine-grained control
```


## CSS Variables
```
var()
```

