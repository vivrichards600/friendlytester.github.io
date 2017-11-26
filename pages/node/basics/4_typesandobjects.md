---
layout: page
title: Types in Node
permalink: /node/basics/lessons/types.html
description: "A look at how to use types and objects in Node"
comments: true
signoff: true
---
[Course Home](../../course) \| [What are Types and Objects?](/programming/lessons/typesandobjects){:target="_blank"} \| [Code Example(s)](https://github.com/mwinteringham/free-node-basics-course/blob/master/nodelessons/B_Types.js){:target="_blank"}

Variables are declared by using the special keyword ```var``` before setting a name for the variable and then using the equals sign and the value you want to store to the variable name.

```javascript
var theNameOfMyVariable = theValue;
```

You can also declare a variable but not assign it a value until later on in your script, like so:

```javascript
var theNameOfMyVariable;

...

theNameOfMyVariable = theValue;
```

Node is known as a loosely or dynamically typed language. What this means is that anything can be assigned to a variable using ```var``` like in the examples below:

```javascript
// See https://thefriendlytester.co.uk/programming/lessons/typesandobjects for a more detailed explanation of types
var myInt         = 33;
var myFloat       = 33.33;
var myBoolean     = true;
var myString      = "Mark loves cake";
var myIntArray    = [1, 2, 3];
var myStringArray = ["Mark", "Node", "Testing"];
var myFunction    = function(){
                       return "Hello";
                   }
var myObject      = {
   "myObjectsInt" : 33,
   "myObjectsString" : "I live in an object"
}

// Because myInt is an integer, Node allows me to do math with it
// If you run this, you should get 330 in the console
console.log(myInt * 10);

// Same applies to floats. This should return you 333.3
console.log(myFloat * 10);

// This will print true
console.log(myBoolean);

// This will print "Mark loves cake"
console.log(myString);

// This will print "["Mark", "Node", "Testing"]" as it's an array of strings
console.log(myStringArray);

// But we can also print a single string from the array by providing an index value
// If we wanted the string "Node" we can call myStringArray[1]. Notice how the second
// item is called with the number one. That's because arrays are zero indexed meaning
// 0 willl return the first array item.
console.log(myStringArray[1]);
console.log(myIntArray[0]);

// This will print the output of our function which will be "Hello"
console.log(myFunction());

// This will print out the string "I live in an object" as it's a variable that lives
// within an object
console.log(myObject.myObjectsString);
```

This means you can quickly create code without worrying about declaring type for each variable as well as do some interesting things with functions and object, which we learn about later.

Have a look at the code example for some code you can download and run and see how these types behave.

### [Next Lesson &#10132;](../lessons/tbc)
