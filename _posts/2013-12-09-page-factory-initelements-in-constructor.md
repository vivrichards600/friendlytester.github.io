---
layout: post
title: Page Factory InitElements In Constructor
date: '2013-12-09T14:18:00.000Z'
author: Richard Bradshaw
tags:
- Page Objects
- selenium
- c#
- webdriver
modified_time: '2013-12-09T14:19:59.906Z'
blogger_id: tag:blogger.com,1999:blog-8318661666872903125.post-1021586930987519807
blogger_orig_url: http://www.thefriendlytester.co.uk/2013/12/page-factory-initelements-in-constructor.html
permalink: /2013/12/page-factory-initelements-in-constructor.html
---
If you take advantage of the PageFactory support in the Selenium project then you may be continuously writing "PageFactory.InitElements(driver, LoginPage)" where ever you are initialising a new page object within your checks, it can get very repetitive depending on your application under test.

So, here is an easier way to do it.  

You can initialise the elements within the constructor of the PageObject (PO) by taking advantage of the "this" keyword to refer to the current class instance, like so:  

<div class="centerplugin">
{% gist FriendlyTester/5392e18770df8d8a62d3 %}
</div> 

This will stop you repeating yourself in your checks and also remove the need for your checks to know about the driver, which I intend to write about in the coming weeks.