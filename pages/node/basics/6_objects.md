---
layout: page
title: Types in Node
permalink: /node/basics/lessons/objects.html
description: "A look at how to use objects in Node"
comments: true
signoff: true
---
[Course Home](../../course) \| [What are Types and Objects?](/programming/lessons/typesandobjects){:target="_blank"} \| [Code Example(s)](https://github.com/mwinteringham/free-node-basics-course/blob/master/nodelessons/D_Objects.js){:target="_blank"}

Objects are an essential part of Node. Broadly speaking they are a collection of different types of variables that are more commonly known as properties. Objects are variables as well, meaning they can be used in the same way other variables can be. To make this clearer lets look at the example below on how to create an object.

```javascript
// We can create an object by assigning it to a variable
// and opening and closing the object with curly brackets {}
var myObject = {
  // We assign properties in an object by creating a key and
  // assigning a value to it. This is done by calling 'key : value'
  "myInt"         : 33,
  "myFloat"       : 33.33,
  "myBoolean"     : true,
  "myString"      : "Mark loves cake",
  // We can more complex things such as arrays and functions
  "myIntArray"    : [1, 2, 3],
  "myStringArray" : ["Mark", "Node", "Testing"],
  "myFunction"    : function(){
                        return "Hello";
                    }
}

// We can also add additional properties to an object by calling
// the object itself, adding a new key and then assigning a value
// to it
myObject.newValue = "I am a new value";

// We can then access properties by calling the object followed
// by a key to return the assigned value
console.log(myObject.myInt);
console.log(myObject.myStringArray);
```

So as we can see we can store lots of different types of values. What makes Objects so powerful is that we can store Objects inside Objects:

```javascript
// Let's see how we can add an object inside an object
var mySecondObject = {
  "aSubObject" : {
    "mySubInt" : 33,
    "mySubString" : "SubStringValue"
  },
  // We can also have an array of objects that are stored inside
  // an object. Notice how each object has the same keys but
  // different values
  "anArrayOfObjects" : [{
    "subString" : "Entry 1"
  },{
    "subString" : "Entry 2"
  }]
}

// We can then call these properties in the same way as the
// previous object. Each dot traverses a little deeper into
// the object to return a specific value
console.log(mySecondObject.aSubObject.mySubString);
console.log(mySecondObject.anArrayOfObjects[1].subString);
```

### [Next Lesson &#10132;](../lessons/tbc)
