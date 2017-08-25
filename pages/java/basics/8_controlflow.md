---
layout: page
title: Control Flow in Java
permalink: /java/basics/lessons/controlflow.html
description: "A look at control flow in Java"
comments: true
signoff: true
---
[Course Home](../../course) \| [What is Control Flow?](/programming/lessons/controlflow){:target="_blank"} \| [Code Example(s)](https://github.com/FriendlyTester/Free-Java-Basics-Course/blob/master/src/test/java/javalessons/G_ControlFlow.java){:target="_blank"}

Control flow is how we control the logic and flow of code in our classes and therefore our solution.

Java works in a sequential manner, the code is executed top down. However, being object orientated, if we call a line that creates a new object, or a calls a method on an object, we'll go into that class and go top down, before eventually ending up back at the line we call from. You'll see this in practice once you get going and start [debugging](/java/intellij/lessons/debugging.html) code.

### Loops
I've created a list of examples which you can get from the link above.  
I've not listed the code here, as it's a tad too long. So please look at the code examples link above.

The most common one I use in building test tools tends to be the 'ForIn' loop. Where iterate over an array of a specific object type. I use this regularly with WebDriver, to loop through a list of WebElements returned from asking WebDriver to find many elements on the page. 

### If Statements
These I use a lot. You can imagine, especially in automated checks, that based on the outcome of something you'll want to do something else. That's exactly what IF statements are designed to do. Very simple to implement.

### [Next Lesson &#10132;](../lessons/abstraction)

