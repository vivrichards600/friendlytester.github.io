---
layout: page
title: What are Assertions?
permalink: /node/mocha/lessons/assertions.html
description: "What are Assertions in Mocha and how do we use them"
comments: true
signoff: true
---
[Course Home](../../course) \| [Code Example(s)](https://github.com/mwinteringham/free-node-basics-course/blob/master/mochalessons/test/C_AssertionsTest.js){:target="_blank"}

How do we know if our test was successful? This is where assertions come in.

Assertions are important. Very important when it comes to automated checking. This is our attempt at replacing ourselves. When we run the scenario we are automating, how are we deciding if what the application is presenting us is acceptable? We need to work out what this is and instruct our code to do the assertions that meet that acceptable criterion. Fortunately, they give us many options for doing this.

Mocha itself doesn't come with assertion libraries, but there are many assertion libraries that you can choose from. For now we are going to use Chai, which is a very popular assertion library for Node. To install it, simply run:

```shell
npm install chai
```

With Chai installed we can then add assertions into our code.

```java
// First of all we need to import the chai library to use in our
// tests. Chai comes in three different flavours should, expect and
// assert, so we are going to use the expect library.
var expect = require('chai').expect;

describe('Assertion demonstration', function() {

  it('should tells us whether our test has passed or failed', function() {
    var result = 10 / 5;

    // We pass our object or value that we want to assert into the
    // expect function and then call a chain of functions that allow
    // us to write our assertions out in plain language so we know
    // exactly what we are asserting.

    // We can assert to see if our value exists
    expect(result).to.exist;
    expect(result).to.not.be.null;

    // We can assert to see if our value is of a specific data type
    expect(result).to.be.a('number');

    // We can assert that the value meets certain expectations
    expect(result).to.equal(2);
    expect(result).to.not.equal(10);
  });

});
```

Important note to add here, designing good assertions is a skill, a skill that doesn't require coding knowledge. So if you are struggling to design acceptable assertions, involve the team and seek help. As always stated, these assertions are very important.

### [Next Lesson &#10132;](../lessons/runningtests.html)

#### Resources
[Chai](http://chaijs.com/){:target="_blank"}  
[Chai - Expect library](http://chaijs.com/guide/styles/#expect){:target="_blank"}
