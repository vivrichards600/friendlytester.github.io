---
layout: post
title: Take Screenshots With RemoteWebDriver
date: '2012-11-14T15:27:00.002Z'
author: Richard Bradshaw
tags:
- remotewebdriver
- c#
- screenshots
modified_time: '2014-03-06T11:13:37.199Z'
blogger_id: tag:blogger.com,1999:blog-8318661666872903125.post-6165339037108894979
blogger_orig_url: http://www.thefriendlytester.co.uk/2012/11/take-screenshots-with-remotewebdriver.html
---

So am currently working on a project that I intend to post about soon, and ran into an issue when trying to take screenshots using RemoteWebDriver.<br />Turns out that RemoteWebDriver doesn't have the capability that the other drivers have, however after a few searches I managed to find a solution and with a small tweak got it working.<br /><br />So here is how you can take screenshots using RemoteWebDriver.<br /><br />You need to create a class that extends RemoteWebDriver and inherits ITakeScreenshot, should look like this:<br /><br /><script src="https://gist.github.com/FriendlyTester/6982140.js"></script><br /><br />The issue I had was that the example I found by Jim Evans, must have been when RemoteWebDriver didn't have any paramters, so had to include the URI and Capabilities.<br /><br />To use this now you have to use your ScreenShotRemoteWebDriver instead of RemoteWebDriver, like so:<br /><br /><script src="https://gist.github.com/FriendlyTester/6982153.js"></script><br /><br />Then you can take a screenshot using the following code:<br /><script src="https://gist.github.com/FriendlyTester/6982149.js"></script><br /><br />Note that the screenshots are saved on the machine where the test is being executed from, not the client.<br /><br />Happy screenshoting!<br /><br /><span style="color: red; font-size: large;">* Update *</span><br /><br />There has been lots of changes in RemoteWebDriver since I wrote this original post, one of those is that screenshots are now a lot easier as per Jan Zdrahal comment below.<br /><br />So you can now create an extension for IWebDriver to take a screenshot for you that will also work with RemoteWebDriver.<br /><script src="https://gist.github.com/FriendlyTester/9387475.js"></script><br />Then you can call the method like so.<br /><script src="https://gist.github.com/FriendlyTester/9387503.js"></script><br />