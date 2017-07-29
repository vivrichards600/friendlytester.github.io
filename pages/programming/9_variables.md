---
layout: page
title: Variables
permalink: /programming/lessons/variables.html
description: "What are Variables?"
comments: true
signoff: true
---
[Course Home](../course)

In the previous lesson we explored [types](../lessons/types), in order to use these types in our code, and any other [objects](../lessons/classesandobjects) that we've made or are getting from [libraries](../lessons/packagesandlibraries) we need to create a new instance and give them a name. That name is called a variable.

Let say we have a [class](../lessons/classesandobjects) called Person. We want to have three properties about a person. Their first name, age and height. We know what those [types](../lessons/types) are going to be, so we can now create those properties in code as variables.

```java
String firstName;
int age;
double height;
```
Now if I'd written all this code out, they'd be on a class called Person. The name of the class is important, we should use that to help us name the variables, so they are contextual. Naming variables in code is very important, depending on the context. If you are working on a project with other people, you'll want them to be able to glance at a variable and immediately know what it is. If you are just hacking away to learn, there names isn't really important.

The code above would just create some variables, but they have no values. We assign them values by using the = symbol.
```java
String firstName = "Richard";
int age = 16;
double height = 142;
```
An important lesson that took me a while to grasp is to not over think variable names. If something is good enough, run with it. The [ides](../lessons/ides) are so powerful these days that changing a variable name later on in a programs life, is very easy. 

### [Next Lesson &#10132;](../lessons/operators)