---
layout: post
title: WebDriver Beyond Checks
date: '2014-10-02T22:47:00.001+01:00'
author: Richard Bradshaw
categories:
- Selenium WebDriver
- Automation in Testing
- GUI Automation
- Automated Checking
- Automation Design
- Monitoring
- Testing in Production
tags:
- PageObjects
- Conferences
- C#
- Selenium WebDriver
- Monitoring
- Testing in Production
modified_time: '2014-10-16T12:49:39.729+01:00'
thumbnail: http://3.bp.blogspot.com/-RZPJKQyOd8g/VC27_BfkOGI/AAAAAAAAAaU/1dJMSpkFDHg/s72-c/Slide1.bmp.jpg
blogger_id: tag:blogger.com,1999:blog-8318661666872903125.post-3482163000478128423
blogger_orig_url: http://www.thefriendlytester.co.uk/2014/10/webdriver-beyond-checks.html
permalink: /2014/10/webdriver-beyond-checks.html
comments: true
---

So on Tuesday I did at a talk at the London Selenium Meetup ([#LDNSE](https://twitter.com/search?q=%23LDNSE&src=typd)), titled “WebDriver Beyond Checks”. After the talk several people asked me if I would share my slides, I said of course, but felt they would be little use to people without the words that accompanied them, so here are those slides with some words.  

This talk was intended to show people that we can use WebDriver a lot more in our testing then just doing UI Checks with it.  

![]({{site.url}}/images/blogpostimages/webdriverbeyondchecks/slide1.jpg)

My first slide starts with a small rant. Hear too many people say we use Selenium to do our ‘automated #testing’. Well you don’t, you use WebDriver, Selenium is a project not a tool. I made this point because it’s important to realise this, a lot more goes in to the Selenium project then WebDriver. The Selenium project team are awesome!  

![]({{site.url}}/images/blogpostimages/webdriverbeyondchecks/slide2.jpg)

The slide followed by another small rant. It’s obvious, right? If it was so obvious why do so many people only use it for automated checking? WebDriver is a tool to drive browsers, ooooo the possibilities.  

That was my mini rant over, now a look at how I have used WebDriver for more than just my UI checks.  

![]({{site.url}}/images/blogpostimages/webdriverbeyondchecks/slide3.jpg)

If I was going to start a new automated checking project from scratch this is the basic approach I would go with, this is also what I believe most people have now, even if you don’t use the same names.  

**Driver Factory** – No going to repeat myself, you can read about Driver Factory in [this post](http://www.thefriendlytester.co.uk/2014/02/webdriver-factory.html).  
**Page Objects** – Again, you can read about PageObjects [here](http://www.thefriendlytester.co.uk/2014/05/pageobject-pattern-why-how-and-more.html).  
**Data Builder** – This is a pattern for managing the data your checks consumer and create. The pattern can be a simple as CRUD, but hides the complexity from your check. [Alan Parkinson](https://twitter.com/alan_parkinson) talked about this at the [Selenium Conference last year](http://www.youtube.com/watch?v=yLg36oBL-PE).  
**Utilities** – This is where more context specific methods go, such as driver extensions, screenshot methods, logging and reporting methods.  
**CI** – Continuous Integration, most now have their checks triggered by a CI server, perhaps a checking or a deployment.  

So this is what I consider a basic automation architecture, I didn’t and won’t in this post go into the technical aspects of such an architecture because all do it differently, but I will make a few points.  

*   Use interfaces wherever possible, IWebDriver for example.
*   When designing your architecture, think of these 4 orange boxes as separate tools that together form your checking framework, but individually could have many uses.

So let’s see how else this architecture can be used in our testing.  

![]({{site.url}}/images/blogpostimages/webdriverbeyondchecks/slide4.jpg)

If you are familiar with the Data Builder Pattern (if not watch the video above) a lot of effort goes into it, first to make it manage the data you care about, but secondly to abstract this management away from your checks. Allowing the check to call simply methods such as dataBuilder.Offer.Create() and have that return you the name of the offer created. Why should only the checks get to take advantage of this? We all create and manage data when testing, some more than others of course.  

So why not create a tool that the whole team can use to manage data during their testing? All you need to do it write an interface that the testers can use and have that call the methods you already have. Could be a command line tool, could be a tool with a simple UI. This saved me A LOT of time, especially in context where the system was very data heavy.  

**Note**: I said WebDriver beyond checks, well truth is, in a few contexts I have had to resort to using WebDriver in my Data Builder as no APIs or straight to DB was available, so the quickest way to get some progress was to use the UI. But using the pattern meant that as soon as the API became available I was able to switch it out without effecting the checks or the tool I had created.  

![]({{site.url}}/images/blogpostimages/webdriverbeyondchecks/slide5.jpg)

Visual testing, something that is very difficult to automate. However, we can take advantage of the checks we have already written. Most people probably already take a screenshot when a check fails, if you don’t you should, it’s easy and can really help debugging failures. But very few people take a screenshot when a check passes, a missed opportunity I feel. Now I’m not telling you to do this for every check, but why not consider doing it for a few key screens in your application. Have the automation put them in a dated folder, which you or a team member can then click through looking for anomalies. This is far quicker than messing around with image comparison, which in my experience has been very flaky.  

In a previous role we use to do this in our daily stand-up, each day it was a different persons responsibility to click through the screenshots from the overnight run. Alternating the person doing this was great as people focus on different areas of the image.  

![]({{site.url}}/images/blogpostimages/webdriverbeyondchecks/slide6.jpg)

We have all probably had to try and automate a table or a graph, it can be a real nightmare and very time consuming. Even more so if said table or graph has a lot of data in it that regularly changes. So why bother? Why not let WebDriver do all the legwork for us. It was [Matt Archer](https://twitter.com/MattArcherUk) who first introduced me to this approach. Use WebDriver to navigate to the page in question and have it get the graph (screenshot) or table and write some code to write this out to an html file. You could then also write some code which adds the expected outcomes to this html file as well allowing you to quickly do the comparison, far quicker in my experience then trying to code/maintain this.  

The same applies with graphs, graphs are very tricky to interact with, even harder if it’s a canvas graph. So again, why not use your existing checks / PageObjects to navigate you to the page, screenshot the graph and produce a output containing the expected numbers along with the graph, allowing you to quickly check the points/labels on the graph.  

![]({{site.url}}/images/blogpostimages/webdriverbeyondchecks/slide7.jpg)

I am not talking about performance testing here as most probably thought when reading the slide, however I am talking about measuring machine performance by using your existing checks. This is by no means performance testing, however is a low cost early indicator. Try monitoring your machines CPU/Memory usage by running your checks to simulate some load. You aren't going to be able to say you machines are performing as expected, but you might find that the memory or CPU gets unacceptably high, as I said an earlier indicator, but not performance testing.  

![]({{site.url}}/images/blogpostimages/webdriverbeyondchecks/slide8.jpg)

If you are a small team it can be hard to do concurrency testing, so why not take advantage of your existing checks to be fellow team members. Do your other testing while the checks are running, perhaps even share the same user(s).  

Be careful thou, you really need to put some logging in place so you can sync your testing with what the automation was doing when you come across issues, as any problems found could be down to the checking or what you were doing, means that problems could be very hard to replicate without any solid logging.  

![]({{site.url}}/images/blogpostimages/webdriverbeyondchecks/slide8.jpg)

WebDriver comes with proxy support, mean that you can put a proxy between the browser and the system being tested. So if you consider this ability when creating your Driver Factory you can easy switch in a proxy.  

Two specific proxies I mentioned were [BrowserMob](http://bmp.lightbody.net/) and [Zap](https://www.owasp.org/index.php/OWASP_Zed_Attack_Proxy_Project). Both this proxies produce A LOT of information, so adding assertions to this information for me, simply isn't worth it. Plus in the context of Zap, new vulnerabilities are being added all the time so keeping it up to date would be exhaustive. So instead take advantage of your checks, hook in a proxy, and explore all the information produced.  

<span style="color: #F5986D;">*** Update - <a href="http://www.thefriendlytester.co.uk/2014/10/set-proxy-using-webdriver.html">Here</a> is how you add a proxy to Chrome/Firefox in both C# and Java.</span>  

![]({{site.url}}/images/blogpostimages/webdriverbeyondchecks/slide9.jpg)

Monitoring is more in demand especially with the DevOps movement. So why not consider using WebDriver to monitor your production sites. You can take advantage of existing checks and CI configuration to achieve this. I removed the DataBuilder as the data here would be different and likely set instead of being created on the fly. I would strongly recommend that if you are going to try this you use a machine outside of your organisation & production cloud, as well, if the cloud goes down, you won’t be informed, so we used an AWS instance.  

Simply set up a CI job to run regularly and have it do business critical user journeys. If the build fails, have the CI server email you. We later added texting to our CI using a SMS API provider such as [Esendex](http://www.esendex.co.uk/).  

Also note that, you may have to consider versioning you Page Objects if they are external to your production code, as production will be out of sync with dev the majority of the time.  

The main reason I explored this was due to the hosting provider at the time saying it would cost £80 per user journey, per month! This cost a few hours of my time, and successfully alerted us of issues on several occasions. Especially useful if you have third parties.  

![]({{site.url}}/images/blogpostimages/webdriverbeyondchecks/slide10.jpg)

Ever had to test a process that has many steps? Or an application where you always have to log in to test? Then why not consider taking advantage of your existing architecture and produce a simple tool that spins up several browsers instances and completes the login for you, or navigates you to the right step in a process?  

I have done this on several occasions by simply writing a few new checks to get me to the stop required, add a section in my driver factory to not close the browser, then created a basic UI to choose the test from along with how many instances to open.  

Note that if you regularly test with extensions/plugins ensure to select that profile if using Firefox or add them to the driver instance in your factory.  

This really can save you a lot of time, but don’t always use it. As using this all the time will reduce your opportunities for observations on the earlier steps.  

**<u>Accessibility Testing</u>** – I forget to create a slide for this one, but did remember to mention it before the talk. Alistair Scott blogged about this a while back now [here](http://watirmelon.com/2013/02/12/automated-local-accessibility-testing-using-wave-and-webdriver/). He explains how you can add [WAVE](http://wave.webaim.org/) to your Firefox instance and activate it by sending key commands to the driver. WAVE then updates the HTML of the page where it finds errors, which you can then read with WebDriver and write out potentially issues which you can go back and investigate.  

![]({{site.url}}/images/blogpostimages/webdriverbeyondchecks/slide11.jpg)

Design an automation architecture not frameworks. Frameworks, or tools as I prefer to call them can then grow from your architecture.  

Think about “How are we going to test this?” not “how I am going to automate this”. Use automation to support your testing, not just by using it for checks, but also for creating tools to support you.  

Think about what your architecture is doing, split it up like a jigsaw puzzle and piece it back together to make new tools. You may need to create a few extra pieces, but that just gives you more to play with in the long term. Also don’t be afraid to produce extra pieces that will be thrown away, if they help you test at the time, fantastic!  

If you got this far, your awesome! Hopefully you have lots of ideas on how you can use your architecture more.