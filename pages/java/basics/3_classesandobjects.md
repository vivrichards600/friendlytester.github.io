---
layout: page
title: Classes And Objects In Java
permalink: /java/basics/lessons/classesandobjectsinjava.html
description: "A look at how to create classes and use objects in Java"
comments: true
signoff: true
---
[Course Home](../../course) \| [What are Classes and Objects?](/programming/lessons/classesandobjects) \| [Code Example(s)](https://github.com/FriendlyTester/Free-Java-Basics-Course/blob/master/src/test/java/lessons/B_ClassesAndObjects.java)

With Java being a Object-orientated programming (OOP/OO) language, classes and objects are what it's all about. Everything when coding with Java is an object. 

Within IntelliJ it's very easy to create a new class, in the [project window](/java/intellij/lessons/usingintellij) we right-click where we want the class to be and click New > Java Class. IntelliJ will then show us a prompt to give our class a name. As mentioned in the [Basic Programming course](/programming/course) an object is an instance of a class. So we need to give the class a name that will make sense when using it in our code.

Here is the bare minimum we need to create a new class
```java
public class MyClass
{
  //Make our class do things here
}
```

We can use this class in our other classes by creating a new instance of it. We do this using the *new* keyword.

```java
public class MySecondClass
{
  MyClass instanceOfMyClass = new MyClass();
}
```

We can then use that instance, which we call an object, in our code. In a complete solution it will have methods and values I wish to use.

As you start writing more code in Java you'll most certainly creating many classes, and you'll also use lots of objects from libraries that you add to your project. 

### [Next Lesson &#10132;](../lessons/typesandobjects)