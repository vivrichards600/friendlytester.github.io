---
layout: post
title: Take Screenshots With RemoteWebDriver
date: '2012-11-14T15:27:00.002Z'
author: Richard Bradshaw
categories:
- Automation in Testing
- Selenium WebDriver
- GUI Automation
- Automated Checking
tags:
- C#
- Selenium WebDriver
modified_time: '2014-03-06T11:13:37.199Z'
blogger_id: tag:blogger.com,1999:blog-8318661666872903125.post-6165339037108894979
blogger_orig_url: http://www.thefriendlytester.co.uk/2012/11/take-screenshots-with-remotewebdriver.html
permalink: /2012/11/take-screenshots-with-remotewebdriver.html
---

So am currently working on a project that I intend to post about soon, and ran into an issue when trying to take screenshots using RemoteWebDriver.  
Turns out that RemoteWebDriver doesn't have the capability that the other drivers have, however after a few searches I managed to find a solution and with a small tweak got it working.  

So here is how you can take screenshots using RemoteWebDriver.  

You need to create a class that extends RemoteWebDriver and inherits ITakeScreenshot, should look like this:

<div class="centerplugin">
{% gist FriendlyTester/6982140 %}
</div>

The issue I had was that the example I found by Jim Evans, must have been when RemoteWebDriver didn't have any paramters, so had to include the URI and Capabilities.  

To use this now you have to use your ScreenShotRemoteWebDriver instead of RemoteWebDriver, like so:

<div class="centerplugin">
{% gist FriendlyTester/6982153 %}
</div>

Then you can take a screenshot using the following code:  

<div class="centerplugin">
{% gist FriendlyTester/6982149 %}
</div>

Note that the screenshots are saved on the machine where the test is being executed from, not the client.  

Happy screenshoting!  

### Update

There has been lots of changes in RemoteWebDriver since I wrote this original post, one of those is that screenshots are now a lot easier as per Jan Zdrahal comment below.  

So you can now create an extension for IWebDriver to take a screenshot for you that will also work with RemoteWebDriver.  

<div class="centerplugin">
{% gist FriendlyTester/9387475 %}
</div>

Then you can call the method like so.

<div class="centerplugin">
{% gist FriendlyTester/9387503 %}
</div>