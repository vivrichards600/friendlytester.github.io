---
layout: page
title: What are TextFixtures
permalink: /java/junit/lessons/whataretestfixtures.html
description: "What are TestFixtures in JUnit and how do we use them"
comments: true
signoff: true
---
[Course Home](../../course) \| [Code Example(s)](https://github.com/FriendlyTester/Free-Java-Basics-Course/blob/master/src/test/java/junitlessons/B_CreatingATestFixture.java)

If we have some tests that have similar needs we can group them in to a TestFixture. Or in simple terms, put them in the same class.

With the tests being in the same class, it means we can create methods in that class that all the tests can consume. JUnit has provided some helpful annotations to them with this. We haven't covered annotations yet, but all text with put above methods and class that start with @ are annotations. In this case, those annotations are @Before and @After.

### @Before
If we mark a method with the @Before annotation, JUnit will call this method automatically for us before each Test is executed. This can be very useful in helping us set the state of the application ready for the Test. It could include configuring the application, creating test data, or configuring an object for the test to utilise such as a browser driver in Selenium. This is commonly referred to as the SetUp.

### @After
That's right, you guessed it. JUnit will automatically run this method at the end of every test. Here we could reset our application, delete/reset some data in our application or perhaps do some addition reporting, we have endless options. This is commonly referred to as the TearDown.

```java
package junitlessons;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class B_CreatingATestFixture
{
    //This method will be called before each test
    @Before
    public void SetUp()
    {
        System.out.println("I'm doing something to setup the system ready for the test");
    }

    //This method will be called after each test
    @After
    public void Teardown()
    {
        System.out.println("I'm doing something to tidy up after the test");
    }

    @Test
    public void TestOne()
    {
        System.out.println("I'm a test doing some stuff");
    }

    @Test
    public void TestTwo()
    {
        System.out.println("I'm another test doing some stuff");
    }
}
```

### @BeforeClass and @AfterClass
You can see where this is going right. @BeforeClass will run just once before any of the tests in the class. So if you run the whole class, the method annotated with @Before will get execute just once before the first test, and then never again. The same with @AfterClass, the method annotated with this will run once after all the tests are completed. Common use these annotations is opening and closely a database connection before all the tests. Or perhaps if doing some UI work, getting the application on a specific page ready for all the tests. Or could even be deploying a new instance of the application.

With regard to myself, I tend not to use the before and after class. I tend to stick to before and after test, I like to keep my tests completely independent of each other. 

### JUnit 5
JUnit 5 is currently in the process and will some changes to these annotations. @Before will be replaced by @BeforeEach. @BeforeClass will be replaced by @BeforeAll.

### [Next Lesson &#10132;](../lessons/assertions)

#### Resources
[JUnit FAQ - Test Fixtures](http://junit.org/junit4/faq.html#atests_2)
[Java Annotations](https://beginnersbook.com/2014/09/java-annotations/)
[JUnit 5 Tutorial](http://howtodoinjava.com/junit-5-tutorial/#annotations)