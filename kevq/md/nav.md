## Ideas

```
wrap everything in <div></div>
work out the structure (elements)
then fill in attributes
```


## Emmet

```
Properly indent:
highlight text: right click: format selection

Anything in red: error

Expand keys:
<tab>, <enter>
<esc>: cancel

Click on line no.: select whole line

Column mode:
selection: column selection mode
ctrl click: multicursor select
exit: esc
add cursor, line up/down: alt up/down arrow
```


The way to go about:
type elements first
then fill up attributes as need arises

<div>
  <a>

  </a>
</div>

then add in attributes


## Form

```
<form>

</form>

then add in elements:
<label>...</label>
<input>

Others:
<select>
<textarea>
<button>
<fieldset>
<legend>
<datalist>
???
<option>
<optgroup>
```

## attributes

```
type
id
name
value
for
```


## input

```
type = " ":
text
radio
checkbox
submit
button
```

## label

```
for = "name"
```


## form

```
action ="file.php"
```


## w3.css and w3.js

```
All classes start with w3-sth
```


##

```
w3-container: left, right margin
w3-panel: all 4 margins
w3-top, w3-bottom
w3-bar, w3-bar-item
w3-content
w3-center
w3-padding-32
w3-image
```


## Overall

```
w3-container
w3-panel
w3-card
```


## Navigation bar

```
w3-bar
w3-bar-block: vertical?
w3-sidebar
w3-bar-item

Hover:
w3-dropdown-hover
w3-dropdown-click

First, add class w3-bar to <div>
then add w3-bar-item, w3-button to <a>s

Placement:
w3-top
w3-bottom

Bottom bar:
w3-bottombar
add: w3-hover-none
w3-border-color
w3-hover-border-black

Align:
w3-right
w3-left

Bar size (w3-size):
w3-large
w3-xlarge
w3-xxlarge

With text:
<span class=w3-bar-item>More text</span>

With input:
<input type="text" class="w3-bar-item w3-input" placeholder="Search..">

With dropdown:
<div class="w3-dropdown-hover">
    <button class="w3-button">Dropdown</button>
    <div class="w3-dropdown-content w3-bar-block w3-card-4">
      <a href="#" class="w3-bar-item w3-button">Link 1</a>
      <a href="#" class="w3-bar-item w3-button">Link 2</a>
      <a href="#" class="w3-bar-item w3-button">Link 3</a>
</div>

With clickable dropdown:
 <div class="w3-dropdown-click">
  <button class="w3-button" onclick="myFunction()">
    Dropdown <i class="fa fa-caret-down"></i>
  </button>
  <div id="demo" class="w3-dropdown-content w3-bar-block w3-card-4">
    <a href="#" class="w3-bar-item w3-button">Link 1</a>
    <a href="#" class="w3-bar-item w3-button">Link 2</a>
    <a href="#" class="w3-bar-item w3-button">Link 3</a>
  </div>
</div> 
```



## To change colour

```
w3-colour:
w3-black
w3-teal
w3-lightgray

w3-text-color:
w3-text-green
w3-text-teal

w3-hover-none
w3-hover-text-red
```


## Change border

```
w3-border
w3-round
w3-card-4
w3-border-right
```

