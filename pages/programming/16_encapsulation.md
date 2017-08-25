---
layout: page
title: Encapsulation
permalink: /programming/lessons/encapsulation.html
description: "What is Encapsulation?"
comments: true
signoff: true
---
[Course Home](../course)

>Encapsulation is the process of combining data and functions into a single unit called a class

We've already covered [classes](/programming/lessons/classesandobjects) and [methods](/programming/lessons/methodsandparameters) but Encapsulation would be the over arching term for the process of creating these. Encapsulation is most commonly associated with Object Orientated programming languages. However, what we didn't cover in those lessons is the reasons for creating classes and methods. One the main benefits of encapsulation is data hiding. Sometimes the asking object doesn't need to know all our internal workings and values, therefore we can hide them from the asking object behind methods. We can then control access to data using [*access modifiers*](https://stackoverflow.com/questions/1020749/what-are-public-private-and-protected-in-object-oriented-programming).

### Public
This means the class/method can be accessed by any other code in the solution, or another project that references your solution.

### Private
This means that the methods and variables are only accessible by the class they are in. You'd never have a Private Class, as it would be pointless because no other code would be able to access it.

### Protected
As mentioned in [inheritance](/programming/lessons/inheritance), a class can be extended or inherit another class. If the class being inherited has protected methods or variables than the other class would have access to those, but no other class would. A class in the same package can also access protected variables and methods. 

### Internal
Classes marked as internal can be accessed by any other class in the solution, but not from other projects that reference your solution.

So what Richard? Indeed. With regard to building automated checking frameworks you probably won't need to concern yourself with these, you could argue that you can make everything Public because it's just internal to your team. However, these are important concepts to grasp, because you will be using publicly available frameworks and libraries that have been written using these modifiers, and you may need to debug them, so understanding these concepts will help you with this. On top of that though, these are not difficult concepts so I'd actually encourage you to write your code using the correct modifiers, it's a good practice. Also, it questions you to think about your design.

### [Next Lesson &#10132;](../lessons/inheritance)

#### Resources
[https://stackoverflow.com/questions/16014290/simple-way-to-understand-encapsulation-and-abstraction](https://stackoverflow.com/questions/16014290/simple-way-to-understand-encapsulation-and-abstraction){:target="_blank"}  
[https://www.tutorialspoint.com/java/java_encapsulation.htm](https://www.tutorialspoint.com/java/java_encapsulation.htm){:target="_blank"}  
[https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/classes-and-structs/access-modifiers](https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/classes-and-structs/access-modifiers){:target="_blank"}