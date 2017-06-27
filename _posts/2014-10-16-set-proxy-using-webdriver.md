---
layout: post
title: Set Proxy Using WebDriver
date: '2014-10-16T12:44:00.002+01:00'
author: Richard Bradshaw
tags:
- selenium
- c#
- proxy
- webdriver
- automation
- java
modified_time: '2014-10-16T12:51:06.296+01:00'
blogger_id: tag:blogger.com,1999:blog-8318661666872903125.post-880412257304893426
blogger_orig_url: http://www.thefriendlytester.co.uk/2014/10/set-proxy-using-webdriver.html
---

I am currently at the London Tester Gathering Workshops in a session being hosted by Bill Matthews. He is showing the attendees how to use Zap Proxy. During the class he mentioned that you can hook your existing WebDriver checks into a proxy. Something I also mentioned in my recent "<a href="http://www.thefriendlytester.co.uk/2014/10/webdriver-beyond-checks.html" target="_blank">WebDriver Beyond Checks</a>" post.<br /><br />So I thought I would create a quick post showing you how you can do this. I am not using Zap, instead I am using <a href="http://www.telerik.com/fiddler" target="_blank">Fiddler</a>, but you just need the right proxy url and change accordingly.<br /><br />Here is how you do it in C# using Firefox and Chrome drivers.<br /><b><u>Firefox</u></b><br /><script src="https://gist.github.com/FriendlyTester/897c776c1fcf14e627c8.js"></script><br /><b><u>Chrome</u></b><br /><script src="https://gist.github.com/FriendlyTester/79e7d61ce418ed24cedb.js"></script><br />Here is how you do it in Java.<br /><br /><b><u>Firefox</u></b><br /><script src="https://gist.github.com/FriendlyTester/142adce94926dd20e677.js"></script><br /><b><u>Chrome</u></b><br /><script src="https://gist.github.com/FriendlyTester/654c0476c9fc69c73ce7.js"></script><br />There you go, you can now add a proxy to your WebDriver checks, and collate lots of information to explore from various proxies available such as, BrowserMob, Fiddler and ZapProxy.<br /><br />Happy Proxy-ing.