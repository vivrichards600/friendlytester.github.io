---
layout: page
title: Creating Tests with JUnit
permalink: /java/junit/lessons/creatingtestsinjunit.html
description: "How to mark code as Tests using JUnit"
comments: true
signoff: true
redirect_to:
  - https://automationintesting.com/java/junit/lessons/creatingtestsinjunit.html
---
[Course Home](../../course) \| [Code Example(s)](https://github.com/FriendlyTester/Free-Java-Basics-Course/blob/master/src/test/java/junitlessons/A_CreatingATest.java){:target="_blank"}

So as mentioned in the first [JUnit lesson](/java/junit/lessons/whatisjunit), JUnit provides us with the framework to mark code as tests, provides assertion capabilities and a mechanism for running tests. Now aside from assertions, the tests themselves contain little else from JUnit. The majority of the code will be calls to other classes and libraries to help us interact with our application/codebase.

So let's assume we've written some code that we want to turn into a test. The bare minimum we can do it simply add @Test above the method name.
```java
package junitlessons;

import org.junit.Test;

public class A_CreatingTests
{
    //So I typed @Test and pressed enter
    //IntelliJ automatically imported JUnit for me
    //See above it says 'import org.junit.Test;'
    @Test
    public void MultipleNumbers()
    {
        int c = 5 * 6;
    }
}
```
This block of code will now be recognised as a test by the test runner. We look at running them in a few lessons time.

### [Next Lesson &#10132;](../lessons/whataretestfixtures)

#### Resources
[JUnit - Writing Tests](http://junit.org/junit4/faq.html#atests_1){:target="_blank"}