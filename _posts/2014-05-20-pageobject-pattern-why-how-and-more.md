---
layout: post
title: PageObject Pattern - Why, How and More
date: '2014-05-20T20:16:00.000+01:00'
author: Richard Bradshaw
categories:
- Selenium WebDriver
- Automation in Testing
- GUI Automation
- Automated Checking
- Automation Design
tags:
- PageObjects
- Selenium WebDriver
modified_time: '2014-06-07T17:08:28.495+01:00'
thumbnail: https://lh3.googleusercontent.com/fxlB0QrjymAwZMbILFaONlCIsMATYgqTZHu_oLRLkN4wgwM51vqPaJNvixqD7WYJZhrkhgmitGUHrAHCchyNG-eLI8WWEBvA-VRg-hUIx2wOu1UPrHcecgmxMVwCfovSpF59=s72-c
blogger_id: tag:blogger.com,1999:blog-8318661666872903125.post-6677203297130230522
blogger_orig_url: http://www.thefriendlytester.co.uk/2014/05/pageobject-pattern-why-how-and-more.html
permalink: /2014/05/pageobject-pattern-why-how-and-more.html
---

This post it based on the talk I did at Belgium Testing Days with the same title. I had 8 attendees I believe so thought I would share my ideas with you all on here.

The trigger for this talk was reading lots of complaints about how complicated code is and how difficult patterns are. I want to show how the PageObject pattern is simple to follow and explore the advantages of using it.  

### Problem can solve  

![Image by Ben Pacificar]({{site.url}}/images/blogpostimages/crazypageobject.png)  
*Image by Ben Pacificar || [Original Image](http://www.redbubble.com/people/bvphoto/works/902622-maintenance-nightmare)*

Automation can be a maintenance nightmare, abstraction can really help with this, PageObject pattern is one way to achieve this. Patterns and a good naming convention can make this a lot easier.  

> _"Automation may not be production code but it is used to check potential production code."_

My intention with this remark was to highlight the fact that your automation code is really important, give it some love, you could argue it's more important than your production code.  

### What is the PageObject Pattern  
There is a description of PageObjects available on the Selenium wiki [here](https://code.google.com/p/selenium/wiki/PageObjects), the summary is the main part. For me when people ask, I describe it as "A class representation of a page/part of a page, exposing services that the page has to offer".  

There are lots of ways to write automation, lots of patterns to follow, think of it like sewing. So many stitches to choose from, but you choose the one that fits the context. More stitches you know the easier it will be for you to create maintainable automation.

The PageObject pattern really comes into its own when the application you are checking consists of many pages with different style or rendering engines. By this I mean you could take an approach where you have custom methods for locating elements, perhaps by label, but as soon as a page breaks this pattern you start introducing unnecessary logic into your finders and over time these can become a nightmare to debug or maintain. So interpreting the pages you want to automate as a PageObject means those methods are already in the context of the page.

### Example

![Example Page Object]({{site.url}}/images/blogpostimages/examplePageObject.jpg)  
*Example of a C\# PabeOjbect with notations*

#### Locators

So this is where we define the elements we want to interact with along with how we want WebDriver to find these elements. I am utilising the FindsBy attribute which is available in the OpenQA.Selenium.Support.PageObjects namespace. This mean we no longer have to write driver.findElement(By.ID("X")); this supporting class will take care of all that. Another benefit of the library is that WebDriver will now automatically get the element every time we want to use it meaning that we always have the latest element avoiding StaleElementException.  

Now lets look at the naming convention I have adopted here. It's [hungarian notation](http://en.wikipedia.org/wiki/Hungarian_notation). Yes! This does appear old school, but it makes my code and methods really easy to read, meaning that debugging is a lot easier. It's also easier for new members to follow the code. Of course I could just write textboxPassword but I find shortening them is my preference. The benefit of following a naming convention in this format is that when you are creating your methods it's very easy to find the element you want to interact with.  

#### Constructor

The PageFactory requires your instance of WebDriver to initiate the PageObject. I tend to pass the driver into the PageObject from the check then pass this to a local variable. But of course you could just have each PageObject read the driver instance from a testbase or from a static class.  

We then need to initiate the PageObject with the PageFactory this allows PageFactory to do its magic in terms of locating our elements from the FindsBy attributes. I have and seen others initiate the PageObject in the check or step binding however due to the _this_ keyword in C# we can do this in the constructor removing unnecessary code from the check.

  
Are we loaded? Probably. That doesn't really work with automation so we can harness the constructor and add a wait in. It's important to find something specific to the page and of course this won't take javascript into consideration. But what ever approach you take the constructor can be a good place to do this. You could also look at [LoadableComonents](https://code.google.com/p/selenium/wiki/LoadableComponent) however I am yet to need to go to this level of abstraction.  

#### What do you want to do? What does the page offer?

I break this down into the following:  
**Get** - Read something from the page. This could be anything from text, input values and images plus lots more. I tend to use the keyword of "Read" to name methods related to a get action. These methods simply return what they find.  

**Set** - Populate, Select or Tick something on the page. Again considering the context of the element I want to set something on, I tend to use the keywords "Populate, Select, Tick, Check". I make these methods voids. I could add logic into check the action was done but my goal is not to test WebDriver, plus a well defined check would fail sharpish if the set failed.  

**Check** - This is where you want to check something on the page. Different to read in that this method will have logic and tends to just return true or false. I start these method names with the keyword "Is", an example would be IsErrorMessageDisplayed which would just check for an element and return the result as a bool.  

**Do** - This is where you are going to do something that causes you to move away from the page, click a link or trigger a popup perhaps. Click is the most common keyword for me here, e.g. ClickLoginButton. These methods tend to return the PageObject of the page or part of a page triggered by this action.  

### Using PageObjects

Aside from the abstraction and maintenance benefits I believe come from using the PageObject pattern they make your checks really easy to read. 

Lets look at an example.

![A check using a PO]({{site.url}}/images/blogpostimages/examplePOBeingUsed.jpg)  
*A check using a PageObject*

We can immediately tell what page the check is interacting with, then because we have taken care in naming or methods is clear to everyone what the check is trying to do. Imagine if this was just a long script consisting of driver.findElement("X").SendKeys or .Click. We have something that is very readable. Not the 4th line of the check, we are using the same variable but the method being called will return us a new instance of the PageObject as the page will have reloaded, therefore a new page. If this method returned a different page we would create that using the method e.g. var homePage = loginPage.ClickLogin().  

### Assertions

Do assertions belong in a PageObject? For me no. The PageObject is a dumb messenger, we use it to interact with the page, all it cares about it how it goes about doing that. You design checks to check something specific, if you design them well enough and the oracle is broken, the check will fail. There is no need to check the page title every time or the url, it's unnecessary overhead. "But I get it for free", I've heard this argument, but how is it free? You are making additional calls to the driver, that takes time for something you check doesn't require. It can cause a large increase in execution time if all your PageObjects are doing this, even more so if you switch to GRID or even utilise a cloud.  

But my main gripe with it is, don't break your abstraction. Your PageObject doesn't need to be tied to a test framework, it doesn't know its going to be used for testing, it doesn't know what's right or wrong, it knows how to interact with a web page, leave it at that.  

### Base PageObjects

Using inheritance we can allow another PageObject to utilise methods on another PageObject. An example of this is, if your application has navigation panel. You can create a PageObject for interacting with this panel then all the other PageObjects can inherit this, allowing you to interact with the panel from any PageObject within your check. Reducing the need to create the navigation panel PageObject throughout your test every time you want to navigate around the application.  

### Helper Methods

After creating numerous checks with your suite, you will likely notice that you find yourself repeating a sequence of PageObject creation and method calls. For example logging into an application. I like to collate these and create what I call a helper.  

![Example Helper Method]({{site.url}}/images/blogpostimages/exampleHelperMethod.jpg)  
*Example of a helper*

This allows me to still utilise my PageObjects and the benefits that come with them, however removes duplication in my checks. For example if there was an additional requirement on the login page to enter my answer to my secret question I would have to update all my checks to add in this action. This way I could just update this helper and therefore update all the checks.  

### Ways to use your PageObject library
Once you have invested time in creating a PageObject library you can harness it for more than just checks  

*   Monitoring, Create a custom monitor but use your PageObject library, so when the application updates so does the monitor.
*   Additional check projects. If you have different projects for different kind of checks, e.g. smoke, acceptance then you can reference the PageObject library for all this. <span style="color: #679ACB;">Be careful here though, could have version issue if the smoke test project is updated before the code reaches that environment. Can be avoided if all in the same solution.</span>
*   Tools to assist testing
*   A tool to fetch data from pages
*   Take screen shots to look for layout issues.

### Activity

Take a screen shot of a page and with four different coloured pens, draw squares around the elements you would want to "Get, Set, Do or Check" on. Done? Awesome you have just designed your PO, now go implement it.  

### Conclusion  
I have been able to overcome a lot of maintenance issues by using the PageObject pattern. It's a simple level of abstraction to understand and can lead to further abstraction. I feel it also leads to more readable checks when following a naming convention as described. Debugging is faster as establishing why the check is failing is simpler as I will know which page is being interacted with, an idea of what the method is trying to achieve and also with which element.  

It is an investment, so I wouldn't recommend this for a throw away project, it can feel like you are writing more code, but in my experience all that time will be recouped by faster maintenance.  

Also team members will less WebDriver experience could probably create some new checks without digging into the PageObject code.  

As with everything, give it a go, hopefully this post with give you some guidance in doing that, then make your own evaluation.

