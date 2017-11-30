---
layout: page
title: Abstraction in Node
permalink: /node/basics/lessons/abstraction.html
description: "A look at Abstraction in Node"
comments: true
signoff: true
---
[Course Home](../../course) \| [What is Abstraction?](/programming/lessons/abstraction){:target="_blank"} \| [Code Example(s)](https://github.com/mwinteringham/free-node-basics-course/blob/master/nodelessons/G_Abstraction.js){:target="_blank"}

So as discussed in the Programming Basics course, [abstraction](/programming/lessons/abstraction) is the process of hiding specific code and moving it away while ensuring the function still gets the values it needs.

A useful heuristic when thinking about abstraction is DRY. Don't Repeat Yourself. If you've written the same code twice, it can't be that specific, therefore could potentially be moved away. A great benefit of abstraction is having single functions that do something specific really well, that many other functions can call. This means they get the info they want, but not the specifics. Then if the specifics change, we change it in a single place, and all the code utilising it, gets updated. They still get the value they wanted, even though the specifics have changed. They would never know because they don't need to know.

Please use the link about to see some examples in Node.

### [Next Lesson &#10132;](../lessons/encapsulation)
