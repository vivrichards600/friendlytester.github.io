---
layout: post
title: New Headless Chrome With Selenium WebDriver
date: '2017-04-30T22:09:00.002+01:00'
author: Richard Bradshaw
categories: 
- Automation in Testing
- Selenium WebDriver
- Automated Checking
tags:
- Selenium WebDriver
- Headless
modified_time: '2017-05-01T21:01:39.450+01:00'
thumbnail: https://3.bp.blogspot.com/-wdUvSFp0WRE/WQZZ7sClWnI/AAAAAAAAIHI/i4RRYYjpAfYXVuz00054vuRP9ittz6fmgCLcB/s72-c/Untitled%2Bdrawing%2B%25282%2529.jpg
blogger_id: tag:blogger.com,1999:blog-8318661666872903125.post-1638404822705746057
blogger_orig_url: http://www.thefriendlytester.co.uk/2017/04/new-headless-chrome-with-selenium.html
permalink: /2017/04/new-headless-chrome-with-selenium.html
---
![Headless Chrome]({{site.url}}/images/blogpostimages/headlesschrome.jpg "Headless Chrome")

So if you hadn't heard, Google has implemented a headless option for Chrome. This will be included from version 59, however you can download it now and a play using the <a href="https://www.google.com/chrome/browser/canary.html">Canary</a> install.

So I did just that. I downloaded the latest <a href="https://chromedriver.storage.googleapis.com/index.html">ChromeDriver</a>, wasn't sure if a new version was required or not, digging a little bit deeper after the event, I realised it wasn't, but seems like a good practice when trying out new things. Then I downloaded and installed the Canary Chrome, nice thing about Canary Chrome is it remains a seperate app, so doesn't interfere with your existing chrome.

Then from a quick google, I discovered the argument for headless, is well '--headless', easy! 

So I know from existing use cases that you can pass arguments to ChromeDriver using ChromeOptions, so I created a ChromeOptions in my code and passed in the argument '--headless'.  
Now as mentioned above, Canary Chrome installs a seperate app, so this reminds me, that I have to instruct ChromeDriver on where to find this binary.

So again, we can do this using ChromeOptions, and specifically the setBinary method. Now the first time I did this, I set the path to be "<span class="bluenumber">/Applications/Google Chrome Canary.app</span>", this didn't work. So I dug a little bit deeper into the content of the package and discovered that I needed to go all the way to the executable, which turns out to be "<span class="bluenumber">/Applications/Google Chrome Canary.app/Contents/MacOS/Google Chrome Canary</span>", and boom it worked!

I then thought I'd instruct WebDriver to take a ScreenShot so I could indeed see if it was working, alas this functionality isn't available on a Mac yet, but I read <a href="https://github.com/nightwatchjs/nightwatch/issues/1439">here</a>, that it does indeed work on Linux.

So here is plain pretty dull Java code, but it does the trick and runs successfully using Chrome headlessly!

<div class="centerplugin">
{% gist FriendlyTester/d0706d5ca51e573c0bd3554c70dc5b2f %}
</div>

Now, historically I'm not a fan of headless browsers. If I'm going to go the expense of automating on the UI, I want those to execute on a browser that my users actually use, non of my users use a headless browser!

This may change with headless chrome though, may. I say this because, in the past, most of the headless options were standalone tools, seperate from the common browsers, such as HTMLUnit or PhantomJS. Also if you hadn't seen it <a href="https://groups.google.com/forum/m/#!topic/phantomjs/9aI5d-LDuNE" target="_blank">looks like</a> PhantomJS will no longer be supported as the project lead stepped down. So I think once it's more stable and available in standard Chrome, I'll do some experiments against it to see what the gains are, or aren't as the case may be. Plus I'll see if I can find some information on the internals to see how much it differs from how Chrome with a head works.

Few useful links I found since writing:

* [https://developers.google.com/web/updates/2017/04/headless-chrome](https://developers.google.com/web/updates/2017/04/headless-chrome)
* [https://medium.com/@dschnr/using-headless-chrome-as-an-automated-screenshot-tool-4b07dffba79a](https://medium.com/@dschnr/using-headless-chrome-as-an-automated-screenshot-tool-4b07dffba79a)
* [https://watirmelon.blog/2011/08/27/running-headless-watir-webdriver-tests-using-a-real-browser](https://watirmelon.blog/2011/08/27/running-headless-watir-webdriver-tests-using-a-real-browser)