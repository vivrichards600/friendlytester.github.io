---
layout: page
title: Waits
permalink: /selenium/lessons/waits.html
description: "A look at the options we have available for waiting in Selenium WebDriver"
comments: true
signoff: true
---
[Course Home](../course) \| [Code Examples](https://github.com/FriendlyTester/Selenium-WebDriver-Examples/blob/master/java/src/test/java/lessons/G_Waits.java)

Now if you remember in lesson 3, I said locators was arguably one of the most important skills to master when working with Selenium WebDriver, well waits is another.  
As per locators, it's not the WebDriver commands that you need to master, it's understanding and modelling your application to get the right wait strategy.  
If you get them wrong, you could have pointless lengthy delays in your execution, or you have a flakey check due to the waits being indeterministic. 

There are two types of waits within WebDriver, Implicit and Explicit. Selenium provides numerous ways to utilise both.

### Driver.Navigate()


### Implicit - Thread.Sleep()
So this isn't actually a feature of Selenium WebDriver, it's a common feature in most programming languages though.  
But none of that matter, don't use this!

Thread.Sleep() does exactly what you think it does, it's sleeps the thread. So when your program runs, in the majority of your cases that program will be some automated checks, they are running on a thread.  
So when we call Thread.Sleep we are instructing our program to do absolutely nothing for a period of time, just sleep.  
It doesn't matter what our application under test is up to, we don't care, our checks are having a nap time!

Depressingly though, it's fairly common to see a few instances of Thread.Sleep() in Selenium WebDriver GUI check frameworks.  
What tends to happen is a script will be failing or failing sporadically, and someone runs it locally and realises there is a race, that sometimes WedDriver is losing. It could be that an application sometimes takes longer to load, perhaps when it has more data, so to fix it they tell WebDriver to take a nap, to ensure that the application is loaded before the check continues.

```java
Thread.sleep(5000);
``` 
The value provided is in milliseconds, so this code would sleep the check for 5 seconds. 

I don't encourage you to use Thread.sleep(), but it's important you are aware of it. 

### Implicit - Global
Selenium WebDriver provides you with the option to set a global implicit wait.
```java
Driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
```
So what does this mean?  
Well, it means that we can add an implicit wait to all WebDriver calls, however, it doesn't work like the Thread.Sleep().  
What this setting does is provide the maximum time WebDriver should keep trying the same command for until it's successful. But it will do this for all calls.

So you need to be careful with how high you set this value if you set this at all.  
I joined a company once where this was set to 60 seconds! One day, the login page broke. It took us three hours to be notified. The reason? The global implicit wait.  
All the checks took 60 seconds to fail, we had nearly 200 of them, all were waiting for the homepage after logging in, it never arrived, so it kept trying for 60 seconds until eventually failing.

We are going to explore Explicit waits next, I encourage teams to stick to those, but if you are going to use a global implicit wait, ask yourself this question. How long would a user wait for your page to load?  
Don't set the global implicit wait to any more than that.

### Explicit Waits
So most would define implicit as being fixed, and explicit being variable. As you can see that's not really true for the global implicit wait. As during that time, WebDriver will be trying to execute your commands, and if a call was successful the script would progress. That isn't the case with the Thread.sleep(), that will wait for exactly the provided amount of time.

For me though, I prefer to talk about explicit being contextual, they're designed for the specific context in question. The important distinction is that an explicit wait is waiting for a specific event to happen, as the moment it does, the script will continue.

There is why I spoke about the importance of understanding your application and being able to model it. If you can do this, you explicit waits become obvious to you.  
Let's look at an example.  

I have a web application that requires me to log in, I enter my username and password and click login. At this point, I don't close my eyes and count 10 seconds, I'm watching the screen waiting for the point I believe the application is ready for me to interact with. if I understand my application well enough, I will know exactly when that is. I can then instruct WebDriver to copy my behaviour. This is how we use explicit waits. 

Selenium has provided us with a handy class to make it easy to use explicit waits.
```java
WebDriverWait wait = new WebDriverWait(Driver, 5);
wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("password")));
```
This block of code creates a new instance of the wait object, passes in our Driver instance, and says that I'm willing to wait 5 seconds for this condition.  
We're then using the ExpectedConditions class provided by Selenium and specifically the method called 'visibilityOfElementLocated'.  
So we're saying I'm willing to wait up to 5 seconds for the element with the id 'password' to be visible.  
The Selenium team have provided us with a whole bunch of these ExpectedConditions, so I encourage you to check them all out.

### ExpectedConditions
I'm not going to list them all here, instead, I encourage you to check them all out. As mention in this [IntelliJ](../java/lessons/usingintellij) lesson, you can use IntelliSense to look at all the methods available on an object. 

### FluentWaits
Selenium also provided an object called FluentWaits. I'm not going to go into them with this lesson, but I wanted to list them in case you fancy digging more into them.  
However, I've personally had very few instances where I've needed to use them, plus they require basic+ programming knowledge. 

### [Next Lesson &#10132;](../lessons/roadmap)