---
layout: page
title: Encapsulation in Node
permalink: /node/basics/lessons/encapsulation.html
description: "A look at Encapsulation in Node"
comments: true
signoff: true
---
[Course Home](../../course) \| [What is Encapsulation?](/programming/lessons/encapsulation){:target="_blank"} \| [Encapsulate Module Example](https://github.com/mwinteringham/free-node-basics-course/blob/master/nodelessons/H_Encapsulated_Module.js){:target="_blank"} \| [Module Usage Example](https://github.com/mwinteringham/free-node-basics-course/blob/master/nodelessons/I_Encapsulation_Usage.js){:target="_blank"}

In our previous lesson on [Abstraction](../lessons/abstraction), we abstracted a few lines into a new method on the same class. Now using the idea of Encapsulation we take this one step further. Instead of a method, we can create a new class and add the method there. That class would then be the place we'd put similar methods in the future.

Another way to think about Encapsulation is when you spot you have many similar methods, perhaps spread across many classes. To make the code more manageable we could use Encapsulation to create a single class and refactor all those methods on to that class. This would then group those similar methods into once place, into one well-named class.

## Modules

Node uses Modules as a means to encapsulate code and are essentially shared objects across node files. If you look in the _Encapsulate module Example_ you will see how a module is created by calling ```module.exports``` and then assigning it an object that contains object properties.

By using the ```require``` keyword we can then import the module and use it in our code, as shown in _Module Usage Example_.

By using modules we can encapsulate functions that are important to us to then be required and used in other areas of our code.

## Module scope

In the programming basics course, we talk about Public, Private, Protected and Internal accessors. However, Node doesn't have the concept of accessors, but the principle of whether you can access something is supported by where you place your variables in your module.

The divide is actually quite simple. Anything that is declared within the module.exports object is accessible and anything else that sits outside of module.exports is not. Please look at the links above for full code examples which demonstrate what can and cannot be accessed.

### [Next Lesson &#10132;](../lessons/inheritance)
