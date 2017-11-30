---
layout: page
title: Prototypes in Node
permalink: /node/basics/lessons/Prototypes.html
description: "A look at Prototypes in Node"
comments: true
signoff: true
---

[Course Home](../../course) \| [What is Polymorphism?](/programming/lessons/polymorphism){:target="_blank"} \| [Code Example(s)](https://github.com/mwinteringham/free-node-basics-course/blob/master/nodelessons/I_Prototypes.js){:target="_blank"}

We've looked at how we can create objects in previous sessions but what if we want to create objects that have the same property structure but different values. We can create a prototype that is then called to create different objects that have the same structure, like so:

```javascript
// To create an object prototype we first need to create
// an object constructor function
function PrototypeObject(name, age){
  // 'this' is a special keyword that connects you to
  // the properties of the specific function or object
  // you are working in. For example 'this.name' means
  // the property 'name' will be attached to
  // 'PrototypeObject'
  this.name = name;
  this.age  = age;
};

// We can then create new objects that follow the template
// from our object constructor function by using the 'new'
// keyword followed by the function
var myFirstObject  = new PrototypeObject("Mark", 29);
var mySecondObject = new PrototypeObject("Richard", 31);

// We can then access our objects as standard objects
console.log(myFirstObject.name + " is " + myFirstObject.age);
console.log(mySecondObject.name + " is " + mySecondObject.age);
```

With our objects created from a prototype we can then interact with them individually as they are separate objects from one another.

```javascript
// Let's update one object and not the other
myFirstObject.location = "United Kingdom";

// When we call location on both objects only one will return
// a value
console.log(myFirstObject.location);  // Returns United Kingdom
console.log(mySecondObject.location); // Returns undefined
```

However, say we wanted to add an additional function to both objects. We can do this by accessing the prototype that it was based upon and updating them both at the same time:

```javascript
// We can add new properties to our prototype after it's been
// created by calling the object constructor function followed
// by the keyword 'prototype' before adding in your property
// like a normal object
PrototypeObject.prototype.details = function(){
  // We can use 'this' as a means to retrieve values that
  // have been assigned to the function itself
  console.log(this.name + " is " + this.age);
}

// Now let's run the newly added function
myFirstObject.details();
mySecondObject.details();
```

Prototypes are powerful as they can allow you to not only quickly create objects based around a standard template, but they can allow you to override functions with your own code. A key part of polymorphism:

```javascript
// We can overwrite our function in the prototype at any time
// to have it do something different
PrototypeObject.prototype.details = function(){
  console.log("I've been overwritten");
}

// Now let's run the updated function
myFirstObject.details();
mySecondObject.details();
```

### [Next Lesson &#10132;](../lessons/codecomments.html)
