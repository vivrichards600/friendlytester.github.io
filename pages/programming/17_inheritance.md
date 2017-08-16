---
layout: page
title: Inheritance
permalink: /programming/lessons/inheritance.html
description: "What is Inheritance?"
comments: true
signoff: true
---
[Course Home](../course)

Inheritance is a term used in Object Orientated programming that allows one class to inherit another class. The class being inherited is often referred to a super class. The class that inherits a super class is a subclass. Inheritance is great for increasing code reuse.

Lets say we have a class called Vehicle. Vehicle has many properties such as engineSize, numberOfWheels and colour. In then also has many methods such as getEngineSize and setNumberOfWheels. If we then make a class called Car which inherits Vehicle, Car will then also have all those properties and methods. We can also add specific properties and method to the Car class which are specific to car. If we then went on to introduce more classes such as Motorbike and Van, they to could inherit from Vehicle. This means that we can make changes to the Car class and they'll be automatically available on the subclasses. This saves us repeating the Vehicle methods on Car, Motorbike and Van.

A specific application of this in the testing space is the PageObject pattern, commonly used with Selenium WebDriver. A popular approach is to have a base PageObject that manages things like the page being ready to interact with, or a common navigation available on all pages. Then specific pages will inherit the base PageObject giving them access to those waits and the navigation.

### [Next Lesson &#10132;](../lessons/polymorphism)

#### Resources
https://docs.oracle.com/javase/tutorial/java/concepts/polymorphism.html
https://stackoverflow.com/questions/6308178/what-is-the-main-difference-between-inheritance-and-polymorphism