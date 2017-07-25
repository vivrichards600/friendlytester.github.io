---
layout: page
title: Debugging In IntelliJ
permalink: /java/intellij/lessons/debugging.html
description: "A quick look at how to debug code in IntelliJ"
comments: true
signoff: true
---
[Course Home](../../course) \| [Official IntelliJ Docs on Debugging](https://www.jetbrains.com/help/idea/debugging.html?search=debug)


No matter how good you get at programming you will have to debug some code within the first few weeks of coding. Then probably every day you code after that.

Debugging is where we add breakpoints into our program, and as our code is being executed it will stop at the breakpoint so we can do some investigation.  
An example of this would be Selenium WebDriver not clicking a link on your page. You'll run it a few times and it will continue to fail. You'll run it again closely watching it, but eventually you'll want to debug it.

So from the Run window, we'll be able to see at which line the code is failing. We then need to go to that line in the class, and click next to the line number, to the left of the code.

![Breakpoint](/images/course/breakpoint.png)

It should add a red dot. This is a breakpoint. So now if we run our test in 'debug' mode, our code will stop at this point. You can run a test in debug mode by right clicking, and instead of 'Run <methodname>' click 'Debug <methodname>'.  
Your test will start like normal, but as soon as it hits your breakpoint, IntelliJ will come into focus and you'll see you some text around the line of code with the breakpoint, but more importantly, you'll see Debugger window.  

![Debugger Window](/images/course/debuggerwindow.png)

I've highlighted the key areas. We'll start with the bottom right red rectangle. Here is where you'll see any variables you have in your test, along with their values. This is very useful information especially if having issue with test data, or perhaps something is returning as null. 

The second red rectangle, top left, is the controls we have when in debug mode. You can hover over them to see what they are. The main ones I use though are 'step over' and 'step into'. If you press 'step over' it will move to the next line of code. If you press 'step into' will move into the classes of the objects on that line.

So if we had a class called Car, that had a method on it called getNumberOfDoors.
```java
public class Car
{
  public int getNumberOfDoors()
  {
    return 4;
  }
}
```
If we then had some code in our test like so:
```java
var richardsCar = new Car();
var numberOfDoors = richardsCar.getNumberOfDoors();
```
If we were to add a breakpoint to the second line of our test, and ran the test in debug, if we pressed 'step into' IntelliJ would take us to the Car class and into our method.

As mentioned, you'll spend a lot of time debugging, so it's worth exploring and practicing with different programs. You all likely have access to someone who can tell you a lot about debugging, they're called Developers!

### [Next Lesson &#10132;](../lessons/intellisense)