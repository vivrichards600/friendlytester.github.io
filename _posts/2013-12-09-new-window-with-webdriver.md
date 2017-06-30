---
layout: post
title: New Window With WebDriver
date: '2013-12-09T10:13:00.002Z'
author: Richard Bradshaw
tags:
- c#
- webdriver
- selenium conference
modified_time: '2013-12-09T10:26:10.028Z'
blogger_id: tag:blogger.com,1999:blog-8318661666872903125.post-5535646167089297388
blogger_orig_url: http://www.thefriendlytester.co.uk/2013/12/new-window-with-webdriver.html
permalink: /2013/12/new-window-with-webdriver.html
---

A feature of a specific web application is that you can set the account context for the page you are currently viewing, however this is for that window only and those settings aren't saved to the server.  

Now if you are new to WebDriver you may not be aware that WebDriver doesn't have a defined method of opening a new window within the same session, it does support multi windows though, just no way of telling it to open you a new window. Note that WebDriver doesn't support tabbed windows.  

So I had a problem, I really wanted to write a check for this scenario, where I open a new window change the account context, navigate back to the original window and ensure that the original account context is still displayed. But there is a way to do it!  

If like me you will love keyboard short cuts, and there is one to open a link in a new window, not tab, window. This is Shift+Left Click (Works in IE, FF and Chrome), which lead me to think, can I achieve this in WebDriver, well I knew I could send the instruction but would the result be what I desired.  

Turns out it was! So if you wish to do some tests when you require a new window within the same session you can achieve it using the following approach, using the "Actions" class from the Selenium project.

<div class="centerplugin">
{% gist FriendlyTester/07750794c41f411ad00e %}
</div>

If your page doesn't have any clickable links, perhaps you could add one as an hidden element, and try sending the command to that, I haven't tried this but it could work.  

Few things to note once you start using multiple windows:  

*   If you operate in framework where you use the same session, to save time opening and closing the browser all the time, then ensure to close both windows.
*   If you close the second window, you will still need to tell WebDriver to switch the context to the only open window.