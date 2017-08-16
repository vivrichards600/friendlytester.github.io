---
layout: page
title: Polymorphism
permalink: /programming/lessons/polymorphism.html
description: "What is Polymorphism?"
comments: true
signoff: true
---
[Course Home](../course)

>Polymorphism refers to changing the behaviour of a super class in the subclass.

Polymorphism is highly coupled with [inheritance](../lessons/inheritance). In simple terms we can overwrite methods (not in all languages) of the superclass with a method on the subclass.

We can take our scenario of PageObjects from the inheritance lessons to frame an example of polymorphism. As mentioned we have a wait method on our base page object, our superclass. However, our login page is a bit temperamental, so we need a stronger wait method on this page. However, this new wait method is specific to the login page, so we don't want to update the wait method on the superclass as that will cause issues with all our other pages. So instead, we can add a wait method to our login page PageObject. The compiler is then smarter enough to use the wait method on our login page PageObect instead of the superclass, this is Polymorphism in action. 

### [Next Lesson &#10132;](../lessons/decomposition)

https://stackoverflow.com/questions/6308178/what-is-the-main-difference-between-inheritance-and-polymorphism