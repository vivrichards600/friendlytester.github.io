---
layout: page
title: Node introduction
permalink: /node/basics/lessons/introduction.html
description: "An introduction to JavaScript/Node"
comments: true
signoff: true
---
[Course Home](../../course) \| [Programming](/programming/lessons/programming){:target="_blank"}

Before we start looking at code it's worth learning a bit of history around the relationship of JavaScript and Node. If you've ever accessed a web page then you have undoubtedly used JavaScript. Whenever a new element is created on a web page, the style of some text changes suddenly or new values are injected into a table it's likely that JavaScript was used to create that behaviour.

Over the past 20+ years JavaScript has become more and more advanced, with companies now developing whole applications that run within the browser (as in they don't have a backend at all). This has been in part due to the active development carried out by organisations such as Microsoft, Mozilla and Google, whose V8 JavaScript engine that lives in Chrome was the basis of Node.JS.

[Node.JS](https://en.wikipedia.org/wiki/Node.js) was created in 2009 and is a JavaScript based language that comes with a few extra bells and whistles to create things such as web services and automated regression checking tools. It's use has exploded over the years with Developers and Testers alike using it in all sorts of ways to solve problems. For this series we will be looking specifically at Node.JS and it's syntax for different programming techniques.

## Node.JS architecture

Unlike other languages like [Java](https://thefriendlytester.co.uk/java/course/), Ruby or C#, Node works a little differently. Node operates on a single thread, executing methods asynchronously. This means the syntax for Node differs from other languages. To understand this in more depth let's compare an example of Java vs Node.JS.

First up, let's say we have this code in Java:

```javascript
// Print first message
System.out.println("Event 1");

// Wait five seconds
Thread.sleep(5000);

// Print second message
System.out.println("Event 2");
```

This will print

```
Event 1
Event 2
```

This is because Java works from top to bottom executing each line, waiting for the line to complete (such as waiting for 5 seconds) before moving onto the next line.

Now let's take a look at something similar in Node.JS:

```javascript
// Wait five seconds and then print the first message
setTimeout(function(){
    console.log("Event 1")
  }, 5000);

// Print second message
console.log("Event 2");
```

This will print:

```
Event 2
Event 1
```

Newcomers to Node will naturally by thrown off by the fact that 'Event 2' comes before 'Event 1' but there is a logic to it. Unlike Java (and other similar languages) Node doesn't wait for each line to finish executing before starting the next one. Instead Node roughly sends each [function](https://thefriendlytester.co.uk/programming/lessons/methodsandparameters) to be executed in it's own context or thread.

So that means ```setTimeout``` is run in it's own thread and then Node moves straight to ```console.log("Event 2")``` ands runs that in it's own thread. This means that both [functions](https://thefriendlytester.co.uk/programming/lessons/methodsandparameters) will be running at the same time. Once every thread is completed the Node observes there is nothing left to do and quits.

## Working with Callbacks

So in Node it's not as simple as arranging a series of [functions](https://thefriendlytester.co.uk/programming/lessons/methodsandparameters) to run line after line and expect them to run. This might seem daft, but it does mean Node is designed to be a highly performant language that can run multiple threads at once.

However, there are times we do want [functions](https://thefriendlytester.co.uk/programming/lessons/methodsandparameters) to run after one another, as we can see with the ```setTimeout``` [function](https://thefriendlytester.co.uk/programming/lessons/methodsandparameters) that waits 5 seconds and then outputs 'Event 1'. This can be achieved with the use of callbacks. Callbacks are a tricky thing to understand, but they are essential tool in Node so you should take time to really understand how they work.

One of the reasons Node is popular is because it's a _[dynamic language](tba)_. This means that you can store anything as a [variable](https://thefriendlytester.co.uk/programming/lessons/variables) ranging from numbers and strings to [functions](https://thefriendlytester.co.uk/programming/lessons/methodsandparameters).

Let's take another look at ```setTimeout``` again from the previous example:

```javascript
setTimeout(function(){
    console.log("Event 1")
  }, 5000);
```

```setTimeout``` takes two [parameters](https://thefriendlytester.co.uk/programming/lessons/methodsandparameters). The first is a function that we want to run after the timer has expired and the second is the time in milliseconds to wait. If we were to look at the guts of the setTimeout [function](https://thefriendlytester.co.uk/programming/lessons/methodsandparameters) it might look something like:

```javascript
function setTimeout(myCustomFunction, timeToWait){
  wait(timeToWait); // Or similar
  myCustomFunction();
}
```

Notice how the ```myCustomFunction```  [parameter](https://thefriendlytester.co.uk/programming/lessons/methodsandparameters) is called as a [function](https://thefriendlytester.co.uk/programming/lessons/methodsandparameters) after the wait. This is because whoever created the ```setTimeout``` [function](https://thefriendlytester.co.uk/programming/lessons/methodsandparameters) expects ```myCustomFunction``` to be a [function](https://thefriendlytester.co.uk/programming/lessons/methodsandparameters) that can then be executed once everything else has been carried out with the original ```setTimeout``` [function](https://thefriendlytester.co.uk/programming/lessons/methodsandparameters).

The declaring and running of ```myCustomFunction``` is known as a callback as it's calls back the function it was given at the start of the run of the function.

## Wrapping up

This can all seem a little confusing at first, but it's essential to understand before starting anything advanced with Node. Remember if you find yourself asking _'why is X running before Y'_ then it is probably due to an issue with callbacks.

### [Next Lesson &#10132;](../lessons/nodesyntax.html)
