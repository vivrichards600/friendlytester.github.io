---
layout: page
title: What is Mocha?
permalink: /node/mocha/lessons/whatismocha.html
description: "What is Mocha?"
comments: true
signoff: true
---
[Course Home](../../course) \| [Mocha](https://mochajs.org/){:target="_blank"}

Mocha is an open source test framework that is used to run your automated tests in Node. It comes with a wide range of features that allow you to create descriptive automated tests, robust reports and even execute your automated tests every time a file is changed locally.

We can use Mocha to run any type of test we like within ```describe``` functions by adding code and assertions to determine a pass or fail status. Whether it's a low level Unit checks against back end services or JavaScript functions or full stack tests focused on integration of components, Mocha provides the structure for running your tests.

Once you have your tests Mocha can execute all your tests that have been created using the ```describe``` function and then report back how the result of the test to your console, terminal or a test report. If an assertion fails, Mocha will report the test as failed. If the code causes an exception it will also get marked as failed. If everything runs smoothly and all assertions are valid, it will report a pass. Mocha can also inform you if  your test is taking too long to run, which is very useful due to Node's asynchronous behaviour.

### [Next Lesson &#10132;](../lessons/settingupmocha.html)
