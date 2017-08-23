---
layout: page
title: Inheritance in Java
permalink: /java/basics/lessons/inheritance.html
description: "A look at Inheritance in Java"
comments: true
signoff: true
---
[Course Home](../../course) \| [What is Inheritance?](/programming/lessons/inheritance) \| [Code Example(s)](https://github.com/FriendlyTester/Free-Java-Basics-Course/blob/master/src/test/java/lessons/K_Inheritance.java)

We actually covered a lot of Inheritance in the previous [*Encapsulation lesson*](/java/basics/lessons/encapsulation). I wanted to specifically add the behaviour of constructors when inheriting other classes. Again the code is too long to put in the page, so please check the link above and read the code and comments.

If you're taking this course with the intention of working with WebDriver, this behaviour plays a very big part in the creation of PageObjects (PO). So hopefully this makes sense. A common approach with POs is to have a base PO, aka a super PO. That super PO would manage the WebDriver and perhaps some generic waits for the application. Therefore not having to repeat the generic waits on all classes, they can all inherit it from the super PO.

### [Next Lesson &#10132;](../lessons/polymorphism)