---
layout: page
title: Abstraction in Java
permalink: /java/basics/lessons/abstraction.html
description: "A look at Abstraction in Java"
comments: true
signoff: true
---
[Course Home](../../course) \| [What is Abstraction?](/programming/lessons/abstraction){:target="_blank"} \| [Code Example(s)](https://github.com/FriendlyTester/Free-Java-Basics-Course/blob/master/src/test/java/javalessons/H_Abstraction.java){:target="_blank"}

So as discussed in the Programming Basics course [abstraction](/programming/lessons/abstraction) is the process of hiding specifics, moving them away while ensuring the class still get the values it needs.

A useful heuristic when thinking about abstraction is DRY. Don't Repeat Yourself. If you've written the same code twice, it can't be that specific, therefore could potentially be moved away. A great benefit of abstraction is having single classes that do something specific really well, that many classes can call them. This means they get the info they want, but not the specifics. Then if the specifics change, we change it in a single place, and all the classes utilising it, get updated. They still get the value they wanted, even though the specifics have changed. They would never know because they don't need to know.

Please use the link about to see some examples in Java.

### [Next Lesson &#10132;](../lessons/encapsulation)