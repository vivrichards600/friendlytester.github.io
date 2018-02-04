---
layout: page
title: What are Assertions?
permalink: /java/junit/lessons/assertions.html
description: "What are Assertions in JUnit and how do we use them"
comments: true
signoff: true
redirect_to:
  - https://automationintesting.com/java/junit/lessons/assertions.html
---
[Course Home](../../course) \| [Code Example(s)](https://github.com/FriendlyTester/Free-Java-Basics-Course/blob/master/src/test/java/junitlessons/C_Assertions.java){:target="_blank"}

So we've written some code that exercises our application. We've marked it as a test, but how do we know if our test was successful? This is where assertions come in.

Assertions are important. Very important when it comes to automated checking. This is our attempt at replacing ourselves. When we run the scenario we are automating, how are we deciding if what the application is presenting us is acceptable? We need to work out what this is and instruct our code to do the assertions that meet that acceptable criterion. Fortunately, they give us many options for doing this.

```java
package junitlessons;

import org.junit.*;

public class C_Assertions
{
    @Test
    public void TestOne()
    {
        int c = 5 * 5;

        //So our first assertion is using the Assert class from JUnit.
        //The first parameter is the ExpectedResult, the second parameter is the actual value.
        //So here I'm expecting our calculation above to be 25.
        Assert.assertEquals(25, c);

        //We can also add a contextual message. JUnit will display this message upon failure
        //Creating good contextual messages can really speed up debugging
        Assert.assertEquals("contextual message on failure here", 23, c);
        //We can use assertEquals for strings, ints, objects

        //JUnit then also gives us many other options

        //Assert.assertArrayEquals(); For comparing arrays and lists
        //Assert.assertFalse(); Checking something is false
        //Assert.assertNotEquals(); Doesn't matter what the value is along as its not this value
        //Assert.assertNotNull(); Isn't null
        //Assert.assertNotSame(); Same as NotEquals
        //Assert.assertSame(); Same as equals above
        //Assert.assertTrue(); Checking something is true
    }
}
```

Important note to add here, designing good assertions is a skill, a skill that doesn't require coding knowledge. So if you are struggling to design acceptable assertions, involve the team and seek help. As always stated, these assertions are very important.

So now, you've spent time reading and exploring the asserts above, you'll be very happy to know that I don't want you to use them! Someone would class the above methods as legacy. I'd agree. But it's important for you to understand them, you may see them in existing test suites, but it's also so you can take the same journey as others. Check out the next lesson to learn about matchers.

### [Next Lesson &#10132;](../lessons/matchers)

#### Resources
[Assertions](https://github.com/junit-team/junit4/wiki/Assertions){:target="_blank"}  
[JUnit source documentation](http://junit.sourceforge.net/javadoc/org/junit/Assert.html){:target="_blank"}