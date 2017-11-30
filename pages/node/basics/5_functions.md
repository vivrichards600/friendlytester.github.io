---
layout: page
title: Functions in Node
permalink: /node/basics/lessons/functions.html
description: "A look at functions in Node"
comments: true
signoff: true
---
[Course Home](../../course) \| [What are Methods?](/programming/lessons/methodsandparameters){:target="_blank"} \| [Code Example(s)](https://github.com/mwinteringham/free-node-basics-course/blob/master/nodelessons/C_Functions.js){:target="_blank"}

So we've already seen examples of functions in the previous lessons, but let's explore them in more detail

Let's first look at how we declare a function. We've seen in previous lessons how we can declare functions but there are actually a few ways in which we can do it:

```javascript
// I can declare a function by assigning it to a variable
var myFirstFunction = function(){
    console.log("Hello from function one");
}

// Or I can switch the function keyword and function name
function mySecondFunction(){
    console.log("Hello from function two");
}

// When I run this both functions will execute
myFirstFunction();
mySecondFunction();
```

We can also pass values into our functions through the use of parameters:

```javascript
// This function has a parameter that can be used inside
// the function
function myThirdFunction(message){
  console.log(message);
}

// This means I can provide a value when I call the function
// and it will be used inside the function
myThirdFunction("Hello from function three");
```

Parameters can be Strings, Numbers and even other functions:

```javascript
// This function declares has a parameter that is later
// in the function called as a function in it's own right
// (Hence the use of the brackets next the parameter name)
function myFourthFunction(callback){
    callback();
}

// So when we call the function and provide it with a
// second function it will be triggered
myFourthFunction(function(){
    console.log("Hello from function four");
});
```

Functions when executed can also return values through the keyword ```return``` like so:

```javascript
// Functions can also return values to use later with the
// return keyword
function myFifthFunction(){
  var math = 10 * 10;
  return math;
}

var result = myFifthFunction();
console.log("10 * 10 equals: " + result);
```

Finally we should talk about a thing called scope. Scope is a design pattern that determines the access of a variable is based upon where it is declared. For example try running this code snippet:

```javascript
// Let's declare a variable that has global scope
var messageOne = "Hello from global variable"

// Then let's declare a new function
function mySixthFunction(){
  // Let's declare a variable that has local scope
  var messageTwo = "Hello from local variable"

  console.log(messageOne);
  console.log(messageTwo);
}

// Then let's declare another function that uses
// the local scope variable from the previous function
function mySeventhFunction(){
  console.log(messageOne);
  console.log(messageTwo);
}

// Calling the first method will return both messages
mySixthFunction();
// Calling the second method will return an error when
// attempting to read the local variable
mySeventhFunction();
```

### [Next Lesson &#10132;](../lessons/objects.html)
