if (foo == 1) {
    document.getElementById("test").src = "images/test2.png";
    document.getElementById("test").onClick = "foo2()";
}

onclick property is all lower-case, and accepts a function, not a string.

document.getElementById("test").onclick = foo2;

JavaScript functions are objects.

document.getElementById('foo').onclick = function(){
    prompt('Hello world');
}


window.onload = prepareButton;

function prepareButton()
{ 
   document.getElementById('foo').onclick = function()
   {
       alert('you clicked me');
   }
}

<input id="foo" value="Click Me!" type="button" />

-----
you might want to use "addEventListener"

document.getElementById("test").addEventListener('click',function ()
{
    foo2();
   }  ); 


