---
layout: page
title: Code Comments in Java
permalink: /java/basics/lessons/codecomments.html
description: "A look at Code Comments in Java"
comments: true
signoff: true
---
[Course Home](../../course) \| [What are Code Comments?](/programming/lessons/codecomments){:target="_blank"} \| [Code Example(s)](https://github.com/FriendlyTester/Free-Java-Basics-Course/blob/master/src/test/java/javalessons/N_CodeComments.java){:target="_blank"}

I would hope by this point in the course that you worked out how to add code comments in Java... I'm sure you have. For those that haven't, it's simply //.

```java
//This is a code comment
```

That is the very basic, we also have a few more options available to us
```java
/**
 * This is a class to explain code comments
 */
public class N_CodeComments
{
    //So in IntelliJ if you type /** and press <enter> you'll get this

    /**
     * This is a method to explain code comments
     * @param a this is the person's Name
     * @param b this is the person's Age
     */

    //IntelliJ will automatically create you some comments to fill in.
    //It knows your method has some parameters, so it includes them so you can add some context
    public void CodeCommentMethod(String a, int b)
    {
//        int c = 1; //If you press Ctrl+/ it will comment the line out/in
    }

}
```

Using code comments is something that most developers frown upon. Their argument is that the code should be self-explanatory. Class, Methods and Variables should all be well named, so that's immediately clear what they are for, or what they do. I can understand that stance. But you are new to Java, so add as many comments and you need, and keep adding them until you are comfortable enough not to.

### [Next Lesson &#10132;](/java/course/roadmap)