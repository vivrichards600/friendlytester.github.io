---
layout: page
title: Classes and Objects
permalink: /programming/lessons/classesandobjects.html
description: "What is a class? An object?"
comments: true
signoff: true
---
[Course Home](../course)

Some talk about classes and objects being the same, but they are not, however, very intertwined. A class is a template for an object. An object is an instance of a class. So as we write code we are creating classes, and when the code is running instances of those classes are objects. 

An example, we have a class called Car, objects could be Seat, Ferrari, Ford.
Another would be a class called FootballTeam, objects would be Chelsea, Arsenal and the best team Manchester United.  

You can see them as a blueprint. Within the blueprint we define properties. Those properties are they values that can be set on each object.
So for our example of a car, we could have properties like, manufacturer, engine Size, colour, number of doors and sunroof.
Then when we create an instance of the Car class, we can set those properties. So for my car we'd have, Seat, 1299cc, Silver, 5, no. We wouldn't say 'no' in code though, we'd say false. We'll look at that in the next lesson.

Then if that object exists within my system, other parts of the system could query it, to discover it's values. Lets say the object was called RichardsCar, we could ask it for its manufacturer and it will respond 'Seat'

We can also have _methods_ on a class. A method is a block of code that has a specific behaviour. So I could have a class that has two properties, birthday and current date. We could then have a method called 'Calculate Age'. This method would work out the persons age using the two properties and return them to the code that sent the request. 

### [Next Lesson &#10132;](../lessons/types)