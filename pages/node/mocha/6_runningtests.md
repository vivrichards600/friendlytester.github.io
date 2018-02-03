---
layout: page
title: Running Your Tests?
permalink: /node/mocha/lessons/runningtests.html
description: "How to run your Mocha tests"
comments: true
signoff: true
---
[Course Home](../../course) \| [Code Example(s)](https://github.com/mwinteringham/free-node-basics-course/blob/master/mochalessons/package.json){:target="_blank"}

So we've written many tests, but how do we run them? Good question. We actually have many ways we can run our tests, so let's explore them.

We've briefly looked at how we can run our Tests in Mocha by running the following command:

```shell
mocha
```

The report we get from that is known as the 'Spec view' and can help with feedback during the development of your tests but what if we wanted to run those tests on a different box and consume results in some sort of dashboard? The spec view is not written to a file so we can provide some additional arguments to Mocha to report the test run to a file:

```
mocha --reporter=xunit --reporter-options output=results.xml
```

This will provide us with an XML file, that can be consumed by other applications to make a dashboard or inform the team if the tests have all passed or failed:

```xml
<testsuite name="Mocha Tests" tests="4" failures="0" errors="0" skipped="0" timestamp="Fri, 08 Dec 2017 13:36:53 GMT" time="0.009">
<testcase classname="Maths calculation" name="should return the correct value when two numbers are added" time="0.001"/>
<testcase classname="hooks" name="Test 1" time="0"/>
<testcase classname="hooks" name="Test 2" time="0"/>
<testcase classname="Assertion demonstration" name="should tells us whether our test has passed or failed" time="0.002"/>
</testsuite>
```

Finally, the command we gave Mocha is quite a long one, meaning it's easy to forget all arguments or make mistakes using it. However, what we can do is update our ```package.json``` to link command to ```npm test```.

```javascript
{
  "name": "mochalessons",
  "version": "1.0.0",
  "description": "A demo package to show how we can create quick shortcuts to run Mocha",
  // Here we can set assign commands to keywords like 'test'
  "scripts": {
    "test": "mocha --reporter=xunit --reporter-options output=results.xml"
  },
  "repository": {
    "type": "git",
    "url": "git+https://github.com/mwinteringham/free-node-basics-course.git"
  },
  "author": "Mark Winteringham"
}
```

So based on the ```scripts``` object, we can now run ```npm test``` and this will run the command that ```test``` is assigned to, which is our special reporter.

### [Next Lesson &#10132;](/node/course/roadmap)

#### Resources
[Mocha reporters](https://mochajs.org/#reporters){:target="_blank"}  
