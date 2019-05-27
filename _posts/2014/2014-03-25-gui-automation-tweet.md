---
layout: post
title: GUI Automation Tweet
date: '2014-03-25T21:52:00.002Z'
author: Richard Bradshaw
categories:
- Automation in Testing
- Selenium WebDriver
- GUI Automation
- Automated Checking
tags:
- Selenium WebDriver
modified_time: '2014-03-25T21:53:31.369Z'
thumbnail: http://4.bp.blogspot.com/-n7cselNHbl4/UzH6cEGpIhI/AAAAAAAAASU/SX_JCOq16pQ/s72-c/2014-03-25_21-51-11.png
blogger_id: tag:blogger.com,1999:blog-8318661666872903125.post-6062149559420945159
blogger_orig_url: http://www.thefriendlytester.co.uk/2014/03/gui-automation-tweet.html
permalink: /2014/03/gui-automation-tweet.html
comments: true
---

![GUI Automation Tweet]({{site.url}}/images/blogpostimages/guiautomationtweet.png)

Unfortunately in my experience when you mention automation to people, they immediately think about GUI automation, perhaps it’s because that’s how they perceive their applications, or it’s the only entry point they use when testing.

This is bad in my opinion because while I think GUI automation is OK, is does have drawbacks against automation further down the system stack, it can be slower, harder to maintain, requires 3rd party libraries. So seeing automation as GUI means teams aren't exploring other possibilities of automation, unit tests, API, DTO and even just lower than the UI looking at automating just the JavaScript.

Only having GUI automation could be bad, because you are attempting to check the application as a whole therefore increasing the possibility of your checks failing due to something other than the layer you are actually trying to check, in this instance the GUI. You could of course mock everything below the UI but that could take a long time for little value.

If a GUI check fails, the majority of people will then repeat it themselves observing the UI for issues, if nothing obvious, they will then probably look at the logs to see if anything reported there. It’s likely that the error is actually being thrown further down the stack, lets say at the API level, but that investigation would have taken valuable time away from you, and could have been picked up faster if there was automation at the API level.  

In conclusion I think GUI automation has a lot to offer any project, however it needs to be used in moderation and teams need to be looking at automating further down the stack. Yes you can just have GUI automation, I wouldn't recommend it, but I have seen it work, it depends!  

For another post perhaps, some of you maybe reading this and saying but automating further down the stack can get very technical, I agree, but its the team's job to create automation, if you don’t have the technically skills get help from a developer, learn from them. Produce your checks as a pair, harnessing each others skill sets.