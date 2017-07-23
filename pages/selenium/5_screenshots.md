---
layout: page
title: Lesson 5 - Screenshots
permalink: /selenium/lessons/screenshots.html
description: "How to take a screenshot with Selenium WebDriver"
---
[Course Home](../course) \| [**Code Examples**](https://github.com/FriendlyTester/Selenium-WebDriver-Examples/blob/master/java/src/test/java/lessons/E_Screenshots.java)

Now we can navigate to sites, and interaction with them to repeat behaviour, we may want to see what the screen looks like every now and again.  
It's important to remember that WebDriver doesn't visually check your site. Your site could be a complete mess and your checks still be passing.

So some people like to take screenshots at certain stages, so they can look at how the page is looking.  
Or some go one step further and do some form of Visual Testing, something to explore at a later date, lots of resources on it.

### Taking a screenshot
```java
File scrFile = ((TakesScreenshot) Driver).getScreenshotAs(OutputType.FILE);
//File path would change based on Mac/Linux/Windows
FileUtils.copyFile(scrFile, new File("/Users/richard/Desktop/locator_form.jpg"));
```
This is the code to take a screenshot. I've explained it on the code example, so check the class for a more detailed explanation.

### Different Browsers
You can use this on all the drivers.

### [Next Lesson &#10132;](../lessons/selectelement)