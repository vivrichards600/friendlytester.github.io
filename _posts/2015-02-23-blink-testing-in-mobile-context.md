---
layout: post
title: Blink Testing In A Mobile Context
date: '2015-02-23T22:02:00.002Z'
author: Richard Bradshaw
categories:
- Mobile Testing
tags:
- Mobile
- Blink Testing
modified_time: '2015-02-24T14:12:14.412Z'
thumbnail: http://3.bp.blogspot.com/-4WeF863KiDA/VOuVaVOjhDI/AAAAAAAAAt0/vSg4czAuCes/s72-c/MobileDevices.jpg
blogger_id: tag:blogger.com,1999:blog-8318661666872903125.post-6533338623798653193
blogger_orig_url: http://www.thefriendlytester.co.uk/2015/02/blink-testing-in-mobile-context.html
permalink: /2015/02/blink-testing-in-mobile-context.html
---

I was first introduced to Blink Testing by [James Bach](https://twitter.com/jamesmarcusbach) during [Rapid Software Testing](http://www.satisfice.com/info_rst.shtml), nearly two years ago now, however I only frequently used it, until now.  

For the last 9 months I have been testing a native mobile app, and upon recent reflection, it turns out I am using Blink Testing a lot.  

James describes [blink testing](http://www.satisfice.com/blog/archives/33) as an heuristic oracle, and offers the following definition:-  

> What you do in blink testing is plunge yourself into an ocean of data– far too much data to comprehend. _And then you comprehend it._

He also offers some examples, one that really relates to my use:-  

> Flip back and forth rapidly between two similar bitmaps. What catches your eye? Astronomers once did this routinely to detect comets.

So how do I use it, like this...  

![](http://3.bp.blogspot.com/-4WeF863KiDA/VOuVaVOjhDI/AAAAAAAAAt0/vSg4czAuCes/s1600/MobileDevices.jpg)

When I am testing I will line up a minimum of two devices and execute my tests on them all at the same time. By doing this, I am exposing myself to more data then I can comprehend. Majority of you have probably done something similar with browsers on separate monitors, but due to the size of mobile devices, using this technique is very easy with devices.  

Going left to right, I repeat the same actions on the app on all the devices and just as James has described, our brains love to pattern match. I am not always looking for the types of problems I will list, but I regularly come across them working this way.  

Here are just a few of the problems I have found using this heuristic.  

### Layout  
Mobile devices come in all shapes and sizes, especially on Android... and by using this technique the differences just jump out. By having similar size screen devices side by side, your eyes are quickly drawn to the differences.  

### Images  
It can be common to use the same artwork across devices, but devices don't always have the same screen real estate, meaning that images can appear squashed or stretched, again something easy to notice using this technique.  

### Transitions / Animations  
Mobile apps user interfaces can have lots of animations and transitions, and depending on the speed of the devices, API levels, memory and screen size the performance of these animations can vary massively. By aligning devices, it can make differences easier to spot.  

### Performance  
As mentioned with the animations, performance on mobile devices can vary on many things. By repeating the same process on many devices, the performance becomes obvious. For example, if an action on the first five devices takes what feels like a second to complete, then the sixth feels like it takes more, you will notice.  

If you are testing a mobile application and not using this approach or a similar one already, give it a go, and let me know how you get on.  

#### References:
_http://www.satisfice.com/blog/archives/33 by James Bach _