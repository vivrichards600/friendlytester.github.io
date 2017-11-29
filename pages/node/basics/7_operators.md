---
layout: page
title: Operators in Node
permalink: /node/basics/lessons/operators.html
description: "A look at operators in Node"
comments: true
signoff: true
---
[Course Home](../../course) \| [What are Operators?](/programming/lessons/operators){:target="_blank"} \| [Code Example(s)](https://github.com/mwinteringham/free-node-basics-course/blob/master/nodelessons/E_Operators.js){:target="_blank"}

The majority of the [operators](/programming/lessons/operators) in Node are explained in the Programming Basic courses. There are examples of operates in the code example. However, there are a few additional operators that are worth discussing:

The first is how Node handles equality. There are two ways in which you can check for equality between values, one uses two equals and the other uses three equals that are shown in the example below:

```javascript
// Using two equal signs will return true for
// both of these comparisons
console.log(10 == "10");
console.log(10 == 10);

// Using three equals will return false for the
// first example but return true for the second
// example
console.log(10 === "10");
console.log(10 === 10);
```

If you don't know which one to use then use the three equal signs.

Another operator unique to Node is ```typeof```. By putting ```typeof``` in front of a variable or value, then the type of the variable or value is returned:

```javascript
// Demonstration of the typeof operator
console.log(typeof "Mark"); // returns String
console.log(typeof 1);      // returns Number
console.log(typeof true);   // returns Boolean
```

### [Next Lesson &#10132;](../lessons/controlflow)
