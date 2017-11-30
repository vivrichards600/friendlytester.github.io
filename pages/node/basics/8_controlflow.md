---
layout: page
title: Control Flow in Node
permalink: /node/basics/lessons/controlflow.html
description: "A look at control flow in Node"
comments: true
signoff: true
---
[Course Home](../../course) \| [What is Control Flow?](/programming/lessons/controlflow){:target="_blank"} \| [Code Example(s)](https://github.com/mwinteringham/free-node-basics-course/blob/master/nodelessons/F_ControlFlow.js){:target="_blank"}

Control flow is how we control the logic and flow of code in our code and therefore our solution.

## If Statements
If statements are responsible for controlling the flow of your code, directing your code in specific directions based upon on the state of variables and outputs from functions. If statements are an essential tool in any code you create.

```javascript
// If a value is true then whatever lives within the curly brackets
// can be run
if(true){
  console.log("I can be run");
}

// We can use operators to determine if something is true or not
var cake = "sponge";

// This will return true because both values match
if(cake === "sponge"){
  console.log("I like sponge cake");
}

// This will return false because both values don't match and
// in turn will not run the code inside
if(cake === "fruit"){
  console.log("I like fruit cake");
}

// We can also ensure specific code is triggered based on a true
// false decision by using if/else statements

// If the two values match then trigger the code within the brackets
if(cake === "sponge"){
  console.log("I like sponge cake");
// If the two values don't match then trigger the code within the else
// brackets
} else {
  console.log("I don't like " + cake);
}
```

## Loops
Loops allow you to iterate over a piece of code multiple times to save you having to write it out many times over. You can also use loops to iterate over collections of data, for when you want to do something with each entry in an object for example.

```javascript
// This loop declares a variable called 'i' and sets it to 0.
// It has a condition that says if 'i' is less than 10 then
// run the code again. Each time the loop runs, the ++ symbol is
// applied to increase 'i' by one. Therefore this will loop
// 10 times before exiting once 'i' reaches 10.
for(var i = 0; i < 10; i++){
  console.log(i);
}

// While loops keep looping until a specific expectation is met
// so it's important to ensure they ultimately meet that
// expectation or they will continue to run forever

// Let's assigning a value of zero to ten
var count = 10;

// While count is greater than 0 keep running the code inside as a
// loop
while(count > 0){
  console.log(count);

  // Use the -- symbol to reduce the count by one
  count--;
}

// The for/in loop while loop over an array until it's exhausted
// all array entries

// Let's first declare an array
var cakeTypes = ["Sponge", "Fruit", "Cheese"];

// Next we use the for/in loop to iterate over the array. The x
// is a numerical count from 0 which will increase for each value
// inside the array
for(x in cakeTypes){
  console.log("Current count: " + x);
  console.log("I like " + cakeTypes[x] + "cake");
}
```

## Callbacks

We've discussed callbacks in previous lessons, but let's explore them once more to really understand them. Callbacks are when a function takes another function as a parameter and then executes it. Let's look at an example:

```javascript
// First of all I am going to declare my function with a
// single parameter
function myDeclaredFunction(parameterFunction){
  // I've decided that my parameter is a function so I will
  // execute it like a function. This means calling the parameter
  // name with parentheses next to it
  parameterFunction();
}

// Now I will call myDeclaredFunction and for the parameter
// I will pass what is known as an anonymous function. This is
// a function that isn't assigned to a variable
myDeclaredFunction(
  function(){
    console.log("I'm an anonymous function being run");
  }
);
```

Using this control flow design means we can ensure one function is run after another as node is asynchronous by design (meaning two separate functions on two different lines don't run one after another but at the same time).

One thing to be careful about when using callbacks is the _'Pyramid of doom'_ where you have so many callbacks that the code becomes unreadable. Here's an example from the read me in a [Node library called 'q'](https://github.com/kriskowal/q).

```javascript
step1(function (value1) {
    step2(value1, function(value2) {
        step3(value2, function(value3) {
            step4(value3, function(value4) {
                // Do something with value4
            });
        });
    });
});
```

## Promises

The _'Pyramid of doom'_ is likely to turn up when you are attempting to chain multiple functions together that must be run after one another. This means you can be stuck between a rock and a hard place, attempting to get your code to work but not write something that is unreadable. That's where Promises come in. Promises balance the asynchronous nature of Node but allow you to chain functions in a way that produces clean readable code.

Say we have two functions that we want to run after one another. Instead of using a callback to trigger function two, function one immediately returns a Promise before running its code. Function two takes the promise and waits for function one to finish and fulfil it's promise by returning one of the three following states:

1. Pending  - Meaning function two has to wait a little longer
2. Resolved - Meaning function one ran successfully and function two can now run
3. Rejected - Meaning function one failed and function two cannot run

So to re-iterate: function one, when triggered, will send a promise to return something once it's finished executing its code to function two. Function two waits until the promise is fulfilled and depending on the state of the fulfilled promise it will either run or not run.

I'm not going to go into the implementation details of promises but if you want to learn more, check out this excellent [introduction to promises](https://scotch.io/tutorials/javascript-promises-for-dummies) from [Jecelyn Yeen](https://twitter.com/jecelynyeen). However, if you see code like the example below taken from the [selenium-webdriver NPM page](https://www.npmjs.com/package/selenium-webdriver) then it is highly likely that it using promises:

```javascript
// Notice how the functions are chained after one another
var driver = new webdriver.Builder()
    .forBrowser('firefox')
    .setChromeOptions(/* ... */)
    .setFirefoxOptions(/* ... */)
    .build();
```

### [Next Lesson &#10132;](../lessons/abstraction.html)
