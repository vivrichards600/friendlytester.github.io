---
layout: page
title: Variables, Fields and Properties in Java
permalink: /java/basics/lessons/variables.html
description: "A look at variables, fields and properties in Java"
comments: true
signoff: true
---
[Course Home](../../course) \| [What are Variables?](/programming/lessons/variables){:target="_blank"} \| [Code Example(s)](https://github.com/FriendlyTester/Free-Java-Basics-Course/blob/master/src/test/java/javalessons/D_Variables.java){:target="_blank"}

Even though not accurate, I tend to use variable, fields and properties interchangeably. Well, that's not true, I tend to stick to variables. However, Java boffins would tell me they are not, and they aren't, so let's define them.

Actually, before we do that, we need to familiarise ourselves with two important terms within Java. Static and non-static.

Non-static is inferred, you'll never write the words non-static while programming in Java. However, you may find yourself writing *static*. In Java, it means exactly what the word means in English
>lacking in movement, action or changeable

A static field or method belongs to the class, and not the instance of the class. So if we define something as static it cannot be changed by the instance. If we don't define it as static it's automatically non-static. Now you may be reading that line thinking, thought this was basics, Richard! It is and you probably don't really need to concern yourself with it. The major benefit of making something static is memory footprint, which isn't something we usually concern ourselves with when creating automated checks. But, I believe we need to be aware of these things.

### Variables
So in Java, we have four types of variables.

#### 1) Instance Variables
These are where the variables belong to the class but are not static. So whenever we make a new instance, that instance has its own variables. Those objects will then likely have methods that allow you to change the values of those variables. Commonly in Java, such as a variable with have a Getter and Setter. The getter is a method that returns the value, and the setter is a method that allows us to set the value of the variable.

#### 2) Class Variables
This would be a variable that is static. So whenever a new instance is made, new instances of those variables are not. All the instance will read from the same variable.

#### 3) Local Variables
These tend to be variables that are defined within a method, not a class. So it may be that you are using a local variable to store a value from another class, so you can use it later in the method.

#### 4) Parameters
I was going to talk about parameters in the next lesson, but it makes sense to talk about them here. A parameter is used to pass objects into a method. That method can use them to assist its behaviour. 

To recap though, I stick to talking about variables and parameters. Those are the terms you'll see me use through the rest of this course.

Here are some code examples
```java
public class D_Variables
{
    //This is an instance variable.
    public int age = 31;

    //This is an example of a Getter, it simply returns the value of age.
    public int getAge()
    {
        return age;
    }

    //This is an example of a Setter.
    //You can see we have 'int age' after the method name, this is a parameter.
    //The other class calling this method would provide that value
    //e.g setAge(31)
    public void setAge(int age)
    {
        //the keyword 'this' is being used here. It basically means 'this' class, the current instance.
        this.age = age;
    }

    //This is a class variable. Every instance we made of this class would have this variable and value.
    public static String firstName = "Richard";

    //We have a method called doSomeStuff.
    public void doSomeStuff()
    {
        //This is a local variable.
        //It's specific to this method. 
        //Cannot be set externally or used anywhere else in the class, only this method.
        int a = 14;
    }
}
```


### [Next Lesson &#10132;](../lessons/methods)

#### Resources
[http://docs.oracle.com/javase/tutorial/java/javaOO/classvars.html](http://docs.oracle.com/javase/tutorial/java/javaOO/classvars.html){:target="_blank"}  
[https://docs.oracle.com/javase/tutorial/java/nutsandbolts/variables.html](https://docs.oracle.com/javase/tutorial/java/nutsandbolts/variables.html){:target="_blank"}  
[https://stackoverflow.com/questions/10115588/what-is-the-difference-between-field-variable-attribute-and-property-in-java](https://stackoverflow.com/questions/10115588/what-is-the-difference-between-field-variable-attribute-and-property-in-java){:target="_blank"}  
[http://edayan.info/java/fields-vs-variables-in-java](http://edayan.info/java/fields-vs-variables-in-java){:target="_blank"}
