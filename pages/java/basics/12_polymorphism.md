---
layout: page
title: Polymorphism in Java
permalink: /java/basics/lessons/polymorphism.html
description: "A look at Polymorphism in Java"
comments: true
signoff: true
---
[Course Home](../../course) \| [What is Polymorphism?](/programming/lessons/polymorphism){:target="_blank"} \| [Code Example(s)](https://github.com/FriendlyTester/Free-Java-Basics-Course/blob/master/src/test/java/javalessons/L_Polymorphism.java){:target="_blank"}

So I don't have much to add the explanation I gave in the Programming Basics course. So let's just look at some code with comments.
```java
package lessons;

import anotherpackage.SubClassWithWaitMethod;
import org.junit.Test;

//We covered a lot of this logic in the Encapsulation examples

//I've created two Classes which are in the 'anotherpackage' package. Just to keep the lessons in order, no other reason
//SubClassWithWaitMethod which extends SuperClassWithWaitMethod
//Both have a method on them called ConsoleMethod()
//Both write to the console 'I'm a method on the <ClassName> class'
//The test below should use the one from the SubClassWithWaitMethod as that overwrites the SuperClass
//So in the console, we'll see "I'm a method on the SubClassWithWaitMethod class"

public class L_Polymorphism
{
    @Test
    public void CallingWaitMethod() throws InterruptedException
    {
        SubClassWithWaitMethod polymorphism = new SubClassWithWaitMethod();
        polymorphism.ConsoleMethod();
    }
}
```

Now I must admit I don't use polymorphism a lot. Again the cases I've used this a lot is with PageObjects. Again in those instances, it's to overwrite a wait method. But again I'm not including these things because you need to know them, it's so you have more options when you come to design code. But also so you have a better understanding when reading others code.

### [Next Lesson &#10132;](../lessons/decomposition)
