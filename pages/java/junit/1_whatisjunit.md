---
layout: page
title: What is JUnit?
permalink: /java/junit/lessons/whatisjunit.html
description: "What is JUnit?"
comments: true
signoff: true
---
[Course Home](../../course) \| [JUnit](http://junit.org){:target="_blank"}

JUnit is an open source test framework. If I were to try and describe it in the simplest terms I would say, it allows us to mark methods in Java as *tests*. Then we design those methods to exercise our application. This could be a unit, an API or some code that uses a UI library to drive a UI.

It then also provides a test runner, a test runner is a tool that is able to find the methods marked as tests in the source code/jar file and execute those blocks of code. Now tests aren't much use to us without some validation/verification at the end, so JUnit comes with an *assertion* library. This assertion library allows us to compare objects we are expecting vs the actual so we can determine a pass or fail.

Talking about pass or fail, JUnit also provides some basic reporting. If an assertion fails, JUnit will report the test as failed. If the code causes an exception it will also get marked as failed. If everything runs smoothly and all assertions are valid, it will report a pass.

### [Next Lesson &#10132;](../lessons/settingupjunit)