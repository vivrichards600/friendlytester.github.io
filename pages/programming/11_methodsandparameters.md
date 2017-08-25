---
layout: page
title: Methods and Parameters
permalink: /programming/lessons/methodsandparameters.html
description: "What are Methods and Parameters?"
comments: true
signoff: true
---
[Course Home](../course)

As briefly mentioned in the lesson on [Classes and Objects](../lessons/classesandobjects), an object can have methods. These methods are blocks of code that have specific behaviour related to the context of the class.

It's common for a class to contain variables, so let's imagine we have a class called Person. The Person class has several variables, name, age and gender. We know other parts of our system are going to want to use the value of those variables and also set them, so we need a way to allow them to access those variables. One way to do this is with methods. The methods in this simple example are commonly referred to as getters and setters. In that, the getters are methods that allow other objects to get the value of variables on an object, and the setters allow other objects to set the value of the variables on another object.

So on our Person class, we would have a method called GetName, it would simply look at the value of the variable Name and return it to the object that asked for it. Our other method would be called SetName. The SetName method would take in a parameter, which it would then use to set the variable Name to.

### Parameters

A parameter is a way we can transfer variables and objects from one object to another. 

So using our Person class, we have a variable called Name and a method called SetName. In order for the SetName method to be able to set/update the variable *Name*, it needs to be told what to set it to, this is our parameter. So the method will specifically declare that if you call me you need to pass me a parameter. The method will also declare what [type](../lessons/typesandobjects) it is expecting to be given. So in our SetName example, we would declare the parameter as a String, and we would give it a sensible name, which in this case as it so happens would be name.

### Void and Return
Some methods return objects, and some don't. Those that don't are commonly referred to as voids, or in other words, nothing. Methods that do a specific behaviour but don't return a type.

Return methods are methods that return an object. So in our example about GetName would return the name variable, which we know to be a string. So our method would make it state that it is going to return an object and that the object will be a String.

### [Next Lesson &#10132;](../lessons/operators)