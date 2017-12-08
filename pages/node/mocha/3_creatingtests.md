---
layout: page
title: Creating Tests with Mocha
permalink: /node/mocha/lessons/creatingtestsinmocha.html
description: "How to mark code as Tests using JUnit"
comments: true
signoff: true
---
[Course Home](../../course) \| [Code Example(s)](https://github.com/mwinteringham/free-node-basics-course/blob/master/mochalessons/test/A_CreatingTest.js){:target="_blank"}


So as mentioned in the first [Mocha lesson](/node/mocha/lessons/whatismocha), Mocha provides us with the framework to create tests in Mocha and a mechanism for running tests. Now aside from assertions, the tests themselves contain little else from Mocha. The majority of the code will be calls to other classes and libraries to help us interact with our application/codebase.

So let's assume we've written some code that we want to turn into a test. We want to create our first test.

First up we need to create a folder named test in our project. As default, Mocha looks for a test folder and then executes any test files that exist in that folder:

```shell
mkdir test
```

Once you have your ```test``` folder, create a file and drop the following code in that has comments to explain each section:

```javascript
// We need someway to assert if a value is true to return a pass/fail
// result. We'll look into assertions in more detail later, but for now
// we will use Nodes' standard assert library.
var assert = require('assert');

// We start by using the describe function in which our tests are created.
// As you will see when you run this test, the string we provide is added
// into the report to make it more readable and give your tests context.
describe('Maths calculation', function() {

  // The 'it' function is next to call, where we can name our test and then
  // execute the code we want to run for our test.
  it('should return the correct value when two numbers are added', function() {
    // Here is the code for our test that is triggered by Mocha
    var result = 1 + 1;

    assert.equal(result, 2);
  });

});
```
Finally, once your code is created and saved head to your terminal/command line and head to your projects root folder (meaning don't run this inside your test folder as it will fail) and run ```mocha```

```shell
> mocha


 Maths calculation
   ✓ should return the correct value when two numbers are added


 1 passing (6ms)
```

As you can see we've created a single test in Mocha which is then run and the result is shown in your terminal to give you feedback. We will look at more advanced options around reporting when running Mocha later. For now we can see that our test is passing.

### [Next Lesson &#10132;](../lessons/whataretestfixtures.html)

#### Resources
[Mocha - Getting started](https://mochajs.org/#getting-started){:target="_blank"}
