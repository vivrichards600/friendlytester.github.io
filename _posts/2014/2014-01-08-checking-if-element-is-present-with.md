---
layout: post
title: Checking If An Element Is Present/Displayed With WebDriver
date: '2014-01-08T22:14:00.000Z'
author: Richard Bradshaw
categories:
- Automation in Testing
- Selenium WebDriver
- GUI Automation
- Automated Checking
tags:
- C#
- Selenium WebDriver
- PageObjects
modified_time: '2014-12-22T10:40:05.114Z'
blogger_id: tag:blogger.com,1999:blog-8318661666872903125.post-4225032110615144844
blogger_orig_url: http://www.thefriendlytester.co.uk/2014/01/checking-if-element-is-present-with.html
permalink: /2014/01/checking-if-element-is-present-with.html
comments: true
---

On several sites I have worked on in recent years there has always been a check scenario whereby I have wanted to check that something isn’t on the page, such as a error message or a field not required in a given context.  

WebDriver by design, as its intended to show you what the user can see, will return a NoSuchElementException if given a locator for an element that shouldn’t be on the page.  

So what most people write is a function containing a try catch and subsequently return a bool indicating if the element is on the page or not. Something like this:

<div class="centerplugin">
{% gist FriendlyTester/a6768627b3954bc91e68 %}
</div> 

In my opinion this is a nice way to do it, you could of course return the exception and assert against that, but I find bool a nicer approach. But what is often overlooked with this approach is the default timeout for the driver. If you haven’t altered this, then it will be 0 so you won't have this problem, but I know a lot of people do to reduce _flakiness_, so lets says its 20 seconds. What happens when you run the above code is WebDriver will try to find the element for that time duration, making it look like your test has hung, before it declares it not present. This can be a lengthy amount of time depending how many times you are looking for something not to be present during your suite.  

One way to achieve this is to reduce the driver timeout before the try catch and then setting it back to the appropriate value afterwards. This could be done in a helper class or if you have created a custom driver can be added as a method on that. Something like this:

<div class="centerplugin">
{% gist FriendlyTester/257795f6fd6df23cf12f %}
</div>   

Another way to do this is with the IDisposable interface as introduce to me by a chap called James Barker, use the using command and then do your call inside there, then the timeout would be automatically set back after the call during the disposal. Something like this:  

<div class="centerplugin">
{% gist FriendlyTester/f0d568a623231bc65456 %}
</div>

However if you are following the PageObject approach and using the PageFactory then you would want to be passing the appropriate IWebElement in to the method. You would initially think that this isn't possible because the element would be null, but it actually isn't because at the point of initialising the PageObject with the factory is creates it as an IWebElementProxy (something like this, some black magic :) ) so you can actually pass the IWebElement to a method and call the IsDisplayed() method inside a try catch like above.  

I achieve this with the following code, but note that this code isn't full proof because if the element is present but not displayed you will get false, if the element isn't present you will get false. So if you intention is to check that the element isn't in the code at all, your probably better following a pattern above. Issue there will be you will likely have to duplicate your locator or you could do some nasty reflection to get the locator, or stick it in a const string. However I haven't had a need to do that and for me as long as a user cannot see the element, I am happy.  

<div class="centerplugin">
{% gist FriendlyTester/4eff7da55b69b96b4814 %}
</div>

So there you have it, several approaches to dealing with checking if an element is present/displayed.  
Hope this is of use to some of you and happy coding!  

#### Update
Here is another approach for you. [Jim Holmes](https://twitter.com/aJimHolmes) asked me and [Jim Evans](https://twitter.com/jimevansmusic) how to check if an element is not present, Jim replied with this very neat approach, which could also be used to check if an element is present too. The reason this works is due to the fact that findElements won't throw an exception if non are present, the collection is just empty.

<div class="centerplugin">
{% gist FriendlyTester/c1cb0a31a527251ce9ae %}
</div>