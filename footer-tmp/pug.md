 Pug is a template engine for Node and for the browser
 A template engine is a program which is responsible for compiling a templateinto HTML
npm i -g pug-cli
pug --version
npm audit

online code playgrounds
CodePen

mkdir -p pug-examples/html
cd pug-examples
touch index.pug
pug -w . -o ./html -P

whitespace sensitive
uses indentation (2 spaces) to work out which tags are nested inside each other
like python

div.remark
  p Pug rocks!!

<div class="remark">
  <p>Pug rocks!!</p>
</div>


nav
  navbar-default  div
    h1 My Website!
  ul
    li
      a Home
    li
      a Page 1
    li
      a Page 2
  input

compiles into:

<nav>
  <div>
    <h1>My Website!</h1>
  </div>
  <ul>
    <li><a>Home</a></li>
    <li><a>Page 1</a></li>
    <li><a>Page 2</a></li>
  </ul>
  <input/>
</nav>



nav#navbar-default  
  div.container-fluid
    h1.navbar-header My Website!

nav#navbar-default  
  .container-fluid
    h1.navbar-header My Website!

compiles into:

<nav id="navbar-default">
  <div class="container-fluid">
    <h1 class="navbar-header">My Website!</h1>
  </div>
</nav>


Attributes are added using brackets:

ul
    li
      a(href='/') Home
    li
      a(href='/page-1') Page 1
    li
      a(href='/page-2') Page 2

  input.search(
    type='text'
    name='search'
    placeholder='Enter a search term...'
  )

<ul>
  <li><a href="/">Home</a></li>
  <li><a href="/page-1">Page 1</a></li>
  <li><a href="/page-2">Page 2</a></li>
</ul>
<input class="search" type="text" name="search" placeholder="Enter a search term..."/>


add plain text inline:

h1.navbar-header My Website! We can write anything we want here …

prefix a line with a pipe character (|):

p
  | You are logged in as
  | user@example.com

<p>
  You are logged in as
  user@example.com
</p>


ad a dot . right after the tag name, or after the closing parenthesis

p.
  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
  veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
  commodo consequat.

<p>
  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
  veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
  commodo consequat.
</p>


comments

// My wonderful navbar
nav#navbar-default

Multiline comments

//
  My wonderful navbar
  It is just so, awesome!
nav#navbar-default


Using JavaScript in Pug
Buffered vs Unbuffered Code
Unbuffered code starts with a minus (-)It doesn’t directly add anything to the output, but its values may be used from within Pug:

- const name = "Jim"
//- Now I can refer to a 'name' variable in my Pug code

Buffered code, on the other hand, starts with an equals (=). It evaluates a JavaScript expression and outputs the result.

p= 'Two to the power of ten is: ' + 2**10


buffered code is HTML escaped

p= '<script>alert("Hi")</script>'

<p>&lt;script&gt;alert(&quot;Hi&quot;)&lt;/script&gt;</p>p>

buffered code is HTML escaped

p= '<script>alert("Hi")</script>'

<p>&lt;script&gt;alert(&quot;Hi&quot;)&lt;/script&gt;</p>p>

String interpolation#{}

- const name = "jim"
p Hi #{name}

<p>Hi jim</p>

- const name = "jim"
- //- Upcase first letter
p Hi #{name.charAt(0).toUpperCase() + name.slice(1)}

<p>Hi Jim</p>


Iteration
each keyword makes it easy to iterate over arrays:

- const employees = ['Angela', 'Jim', 'Nilson', 'Simone']
ul
  each employee in employees
    li= employee

<ul>
  <li>Angela</li>
  <li>Jim</li>
  <li>Nilson</li>
  <li>Simone</li>
</ul>

-
  const employee = {
    'First Name': 'James',
    'Last Name': 'Hibbard'
  }
ul
  each value, key in employee
    li= `${key}: ${value}`

<ul>
  <li>First Name: James</li>
  <li>Last Name: Hibbard</li>
</ul>


else block that will be executed if the array or object is empty:

- const employees = []
ul
  each employee in employees
    li= employee
  else
    li The company doesn't have any employees. Maybe hire some?

use for as an alias for each

Conditionals offer a very handy way of rendering different HTML depending upon the result of a JavaScript expression:

-
  const employee = {
    firstName: 'James',
    lastName: 'Hibbard',
    extn: '12345'
  }

#employee
  p= `${employee.firstName} ${employee.lastName}`
  p Extension:
    if employee.extn
      =employee.extn
    else
      | n/a
      
      


Express

mkdir pug-express
cd pug-express
npm init -y
npm i express

touch app.js

const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Hello, World!');
});

app.listen(3000, () => {
  console.log('Listening on port 3000...');
});

node app.js
visiting http://localhost:3000


