---
layout: page
title: What are TestFixtures
permalink: /node/mocha/lessons/whataretestfixtures.html
description: "What are TestFixtures in JUnit and how do we use them"
comments: true
signoff: true
---
[Course Home](../../course) \| [Code Example(s)](https://github.com/mwinteringham/free-node-basics-course/blob/master/mochalessons/test/B_HooksTest.js){:target="_blank"}

If we have some tests that have similar needs we can group them into a TestFixture. Or in simple terms, put them in the same describe function.

With the tests being in the same describe, it means we can create functions that all the tests can consume. Mocha has provided some of these functions that we can use.

### BeforeEach function
If we use the ```beforeEach``` function, Mocha will call this function automatically for us before each Test is executed. This can be very useful in helping us set the state of the application ready for the Test. It could include configuring the application, creating test data, or configuring an object for the test to utilise such as a browser driver in Selenium. This is commonly referred to as the SetUp.

### AfterEach function
The ```afterEach``` function is the opposite to the before function. Mocha will automatically run this function at the end of every test. Here we could reset our application, delete/reset some data in our application or perhaps do some additional reporting, we have endless options. This is commonly referred to as the TearDown.

```javascript
var assert = require('assert');

describe('hooks', function() {

  before(function() {
    console.log("   - I will run once before the tests are run");
  });

  after(function() {
    console.log("   - I will run once after the tests are run");
  });

  it('Test 1', function() {
    var result = 1 - 1;

    assert.equal(result, 0);
  });

  it('Test 2', function() {
    var result = 1 * 1;

    assert.equal(result, 1);
  });

  beforeEach(function() {
    console.log("   - I will run before each test is run");
  });

  afterEach(function() {
    console.log("   - I will run after each test is run");
  });

});
```

### Before and After
```before``` will run just once before any of the tests in the describe function. So if you run the file, the ```before``` function will be executed just once before the first test, and then never again. The same with ```after```, the functions will run once after all the tests are completed. Common usage for these annotations is opening and closing a database connection before all the tests. Or perhaps if doing some UI work, getting the application on a specific page ready for all the tests. Or could even be deploying a new instance of the application.

### [Next Lesson &#10132;](../lessons/assertions.html)

#### Resources
[Mocha hooks](https://mochajs.org/#hooks){:target="_blank"}  
