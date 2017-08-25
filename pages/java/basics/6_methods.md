---
layout: page
title: Methods in Java
permalink: /java/basics/lessons/methods.html
description: "A look at methods in Java"
comments: true
signoff: true
---
[Course Home](../../course) \| [What are Methods?](/programming/lessons/methodsandparameters){:target="_blank"} \| [Code Example(s)](https://github.com/FriendlyTester/Free-Java-Basics-Course/blob/master/src/test/java/lessons/E_Methods.java){:target="_blank"}

So we've already seen examples of methods in Java in the previous lessons, so let's keep this brief and explore what we haven't yet. If you've not done the basic programming course, you can click the link above to learn all about methods.

While there are technically more types of methods we are going to talk about two. A method that returns an object and a method that doesn't.

```java
public class E_Methods
{
    //The keyword for a method that doesn't return an object is void.
    //So it returns nothing
    public void NonReturnMethod()
    {

    }

    //We've replaced void with String, which means we return a String.
    //We can put any type or object here
    public String ReturnAStringMethod()
    {
        //our method would do some stuff here
        //but all return paths must return a string.
        return "Richard";
    }
}
```

### Constructors
A constructor is kind of like a method, however, it doesn't return anything, not even a void. A constructor is a sub routine that always runs at the time of creating an object.

We can create a constructor in Java by creating a method with the same name as the class.
```java
public class E_Methods
{
    //This is an example of a constructor
    //You can see it has no return type and is named the same as the class
    public E_Methods()
    {
        //Do some stuff that is important to our object.
    }
}
```
We can also pass parameters in our constructor, this is commonly used if you need to pass in some objects required to support this class.
```java
public class E_Methods
{
    //This is an example of a constructor
    //You can see it has no return type and is named the same as the class
    public E_Methods(String name, int age)
    {
        //Do some stuff that is important to our object.
    }
}
```
You can also have multiple constructors, so you can tailor the use of the class for your needs.  
The same applies for methods. You can have a method with the same name but takes different parameters.

### [Next Lesson &#10132;](../lessons/operators)