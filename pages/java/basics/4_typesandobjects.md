---
layout: page
title: Types And Objects In Java
permalink: /java/basics/typesandobjects.html
description: "A look at how to use types and objects in Java"
comments: true
signoff: true
---
[Course Home](../../course) \| [What are Types and Objects?](/programming/lessons/typesandobjects) \| [Code Example(s)]()

All the major programming languages come with common types out of the box, and Java is no different. You can refer to the lesson above to learn more about specific types, here we are going to look at how to create instances of them in Java. 

We can declare a new type just by declaring the type and providing a name and ending the line.
```java
int myAge;
```

Or we can go one further and also assign a values
```java
int myAge = 31;
```

Here is a list of the common types in Java.
```java
int myInt = 31;
double myDouble = 31.7;
short myShort = 14000;
//Adding the L tells the compiler this number is a Long, without the L is treats it as an int
long myLong = 1900617361876L;
boolean myBoolean = true;
char myChar = 'r';
String myString = "richard is friendly";
//The [] tells Java we want an array of the type
//The {} is used to start and end the content of the array
char[] myCharArray = { 'r', 'i', 'c', 'h', 'a', 'r', 'd' };
int[] myIntArray = { 1, 2, 3, 4 , 5, 6, 7 };
String[] myStringArray = {"Richard", "Java", "Testing"};
```

Have a look at the code example for some code you can download and run and see how these types behave.

### [Next Lesson &#10132;](../lessons/variables)