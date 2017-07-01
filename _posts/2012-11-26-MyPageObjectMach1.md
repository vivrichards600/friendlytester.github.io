---
layout: post
title: My Page Object Approach
date: '2012-11-26T21:26:00.000Z'
author: Richard Bradshaw
categories:
- Selenium WebDriver
- Automation in Testing
- GUI Automation
- Automated Checking
- Automation Design
tags:
- PageObjects
- C#
- Selenium WebDriver
modified_time: '2013-10-14T22:04:50.240+01:00'
blogger_id: tag:blogger.com,1999:blog-8318661666872903125.post-6975091096853398915
blogger_orig_url: http://www.thefriendlytester.co.uk/2012/11/MyPageObjectMach1.html
permalink: /2012/11/MyPageObjectMach1.html
---
So I have been using a page object (PO) approach for a while now, but not been blogging for long, so am going to mark the below as "My Page Object Mach 1", and will continue the theme as my PO's involve.  

So to start with I have abstract class which we are going to call DefaultPage, this is essentially my default PO, but it started by just handling WebDriver, like so:

<div class="centerplugin">
{% gist FriendlyTester/6982176 %}
</div>

It has since evolved into having several methods for interactions I found myself repeating, such as populated and reading fields, and dealing with Select boxes.  

Then each of my page objects inherits the DefaultPage.  

The basic structure of my page objects is:  

*   Initiate locators.
*   Wait for a specific element
*   Assert that the application has taken you to the correct page, using a specific attribute of an element or could use the URL depending on your application.

<span style="color: red;">Edit: I no longer agree with Assertions in PageObjects. The PageObjects job/role is to allow a test/check to interact with a page, a test/check would soon tell you there is an issue when the PO fails to serve the request. And if you are always running all your tests/checks, which you should be otherwise why bother to create them, you know soon enough if the page header isn't correct!</span>

Which looks like:

<div class="centerplugin">
{% gist FriendlyTester/6982183 %}
</div>
 
I parameterise the timeout value, as I required to increase it for specific tests / environments, so made sense to make it default page of my approach.  

I have heard people not recommend putting asserts in your page objects, however I believe that should be the rule for the methods but serves a good purpose in the constructor.  

Then objects are instantiated like so:

<div class="centerplugin">
{% gist FriendlyTester/6982189 %}
</div>

Perhaps for another post, but I believe this is a good approach, and as mentioned above you can add common methods to the default page.  

Appreciate all comments.