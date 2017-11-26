---
layout: page
title: Node syntax
permalink: /node/basics/lessons/nodesyntax
description: "A look at the basic syntax of Node"
comments: true
signoff: true
---

[Course Home](../../course) \| [What is Syntax?](/programming/lessons/syntax){:target="_blank"} \| [Code Example](https://github.com/mwinteringham/free-node-basics-course/blob/master/nodelessons/A_Syntax.js){:target="_blank"}

As mentioned in the programming basics course, each programming language has a specific syntax. A specific way to write code so that the [compiler](/programming/lessons/compiler) can compile it.

Here are some code and comments to explain the basic syntax of Node.

```javascript
// This is a code comment

// Here we have a variable.
// We first use the special term 'var' to say we want to create a variable
// Next we give the variable a name. For this one we shall call it 'myPlatform'
// We then use an equals sign followed by the value we want to store
var myVariable = "A string";

// We can also assign functions with code inside
// This time rather than assigning a value we assign a function using the keyword
// function and the brackets (). These tell the compiler that everything that lives
// within the open curly bracket and the close curly bracket will be run when the
// function is called.
var myFunction = function ()
{
    // We do cool stuff here
}

// If we want our function to be used by code in other files we can assign our
// function to the name 'exportedFunction' by calling exports (which is a special word)
// and then the name we want to assign to our shared function (it can be the same name)
exports.exportedFunction = myFunction;
```

The nice thing about using an [IDE](/programming/lessons/ides) is that if you get this syntax wrong it will usually tell you. So in VSCode, it will make the class red and but a squiggly red line under what it believes to be the cause.

![VSCode Syntax Errors](/images/course/node/vscodesyntaxerror.png)

In this example, I've added removed the equal signs where I assigned the function and exported function.
There is a lot more syntax in Node, but this should be enough to get you going.

### [Next Lesson &#10132;](../lessons/usinglibraries.html)
