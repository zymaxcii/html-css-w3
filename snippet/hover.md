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
