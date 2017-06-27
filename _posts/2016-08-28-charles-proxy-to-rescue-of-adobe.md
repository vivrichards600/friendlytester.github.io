---
layout: post
title: 'Charles Proxy To The Rescue of Adobe Bloodhound '
date: '2016-08-28T12:16:00.002+01:00'
author: Richard Bradshaw
tags:
- charlesproxy
- bloodhound
- proxy
- adobe
modified_time: '2016-08-28T12:23:47.658+01:00'
blogger_id: tag:blogger.com,1999:blog-8318661666872903125.post-4196005353324406235
blogger_orig_url: http://www.thefriendlytester.co.uk/2016/08/charles-proxy-to-rescue-of-adobe.html
permalink: /2016/08/charles-proxy-to-rescue-of-adobe.html
---

The client I'm currently working at has decided to switch from Google Analytics to Adobe Analytics for our native mobile application. Which created a new testing problem for me, how do I test this?  

Our current solution for Google Analytics (GA) was to use a development key, and using a combination of the Real-Time feature on GA and checking back the next day to see final propagated results.  

But Adobe Analytics offers a tool to help test them called [Bloodhound](https://marketing.adobe.com/developer/gallery/bloodhound-app-measurement-qa-tool-1). Bloodhound is simply a proxy. You configure your device to route all your traffic via Bloodhound running on your machine, just like you would with any proxy tool such as Charles / Fiddler. So I gave it a go.  

Initially I got no results in Bloodhound, turns out that is due to the SSL restrictions on iOS, so no problem, Bloodhound comes with a cert you just need to install. Installed it and just like magic analytics started appearing in Bloodhound! The magic didn't last long though, because while Bloodhound seemed happy enough to pick up all the analytic calls, it seemed to kill all other calls, render my app pretty much useless! I could interact with our navigation and see the app making such tap and page calls to analytics, but I couldn't get to 50% of the screens as they required server calls!  

I discovered two ways to fix my issue.  

The first one is very specific to our context. The iOS developers of our app has built an offline version of the APIs call, essentially a mock. So I was able to configure our app to use the offline mode and I was now able to navigate to all the pages and see if the analytics calls were correct. Sadly. though I ran into an issue with our offline mode, it didn't quite have all the scenarios I needed to be happy with my testing, so back to the problem of Bloodhound eating my apps requests.  

I did some googling and find some forums, but most of them were Adobe forums telling you to contact support and they would solve your problem with you. Nice support, but not something I was interested in at this stage, kind of expected it to take a while to get a response being a big company, probably a bias that could do with being tested again.  

Anyhow, I ponded for a few more minutes, and decided, well if Bloodhound can intercept these calls, surely any proxy could. Sure enough, [Charles](http://charlesproxy.com/) could see all the requests to the Adobe servers, and I could see the specific analytic calls being made. However it wasn't as easy as Bloodhound.  

Bloodhound was designed to show these analytics, Charles isn't. So in Charles I get calls with lots of analytics in, in their raw form. Bloodhound was designed to strip individual analytic from the calls, meaning I could easy find a specific analytic caused by the action I just did, such as clicking a button or landing on a specific page.  

So while I could now use the app against real servers, and see all the analytics, and able to test them, it just wasn't as easy as I wanted. As said, Bloodhound made it really easy to test individual analytics. The process of tapping/navigating in the app, checking Bloodhound, was quick and efficient. It was a bit more cumbersome in Charles as I had to read over the raw call to find the exact analytic.  

So again I pondered for a few more minutes, and remember a feature of request forwarding / mapping in Charles. Something I hadn't actually used for a while, so required a few googles to refresh my memory. But there it was, Map Remote, the missing piece. Charles allow you to map requests to a remote server. A featured I'd actually used in the past to test against different version of an API, tricking the app in to using a version of the API it wasn't yet coded to do so, a great way to test early.  

However, as Bloodhound was running on my local machine, instead of mapping remotely, I wanted to map locally. No a problem, instead of a remote IP you just enter localhost or your IP. So I enabled 'Map Remote' in Charles and added a new rule. I should add here that you can configure the port Bloodhound runs on, in this instance it was 50000.  

I configured my device to point to Charles and instructed it to map any calls for our Adobe server (you can find this out from Adobe SDK config, or just from looking at the recorded traffic in Charles) to my IP address on port 50000, which was where Bloodhound was running. I saved my config and gave it ago.  

Voila! It worked. I was now able to see all my analytics in Bloodhound and my app was also able to hit the server, allowing me to hit every page in the app, and verify the analytics in Bloodhound. Win.  

So there you have it, a nice combination of tools. I really do love proxies! Such a powerful tool.