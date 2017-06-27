---
layout: post
title: 'Webinar Follow-up: New Testing Battlefields'
date: '2016-06-21T22:00:00.000+01:00'
author: Richard Bradshaw
tags:
- mobile
- IoT
- mobile testing
modified_time: '2016-06-21T22:00:12.861+01:00'
blogger_id: tag:blogger.com,1999:blog-8318661666872903125.post-1466419961213195188
blogger_orig_url: http://www.thefriendlytester.co.uk/2016/06/webinar-follow-up-new-testing.html
permalink: /2016/06/webinar-follow-up-new-testing.html
---

I recently had the privilege to take part in a webinar, this webinar was on the topic of ‘New Testing Battlefields’, which in this context of this webinar and post are Mobile and IoT. The Webinar was arranged by Telerik. I was joined by three other testing minds: -  

*   [Jim Holmes](https://twitter.com/aJimHolmes) – Jim was our host, but also active in the discussions, being a tester himself and currently doing some interesting work in the automotive industry.
*   [Daniel Knott](https://twitter.com/dnlkntt) – Daniel is a tester mostly working on Android over at Xing. He is also the author of ‘[Hands-On Mobile App Testing](https://www.amazon.co.uk/Hands--Mobile-App-Testing-Involved/dp/0134191714/ref=sr_1_1?ie=UTF8&qid=1466537347&sr=8-1&keywords=mobile+testing+daniel+knott)’.
*   Iliyan Panchev – Who is an ex tester, and know currently Program Manager for Test Studio at Progress.

I took some notes during the webinar, which I’m simply going to expand on during this post. If you want to watch the webinar before reading the rest, a recording is available over on [YouTube](https://www.youtube.com/watch?v=_QSqjRYx2rw&feature=youtu.be).  

### Interfaces

I spoke a lot during the webinar about how in my opinion, most mobile applications are just interfaces to the main system, that system being the backend, behind all the APIs. This, again IMO, is the product, not the mobile app. In some cases the APIs could be viewed as being the product. But the point I was trying to make is that the best apps I used and worked on, are where the front end is as dumb as possible, keeping the majority if not all the business logic in the backend. As we will talk about later in the post, this also makes testing significantly easier, especially when looking to add some automated checks into your testing approach.  
In such a fast moving industry this also allows you to try and stay ahead of the competition and keep up to speed with all the latest trends in UX, as you can redesign the app without having to focus as much on the business logic.  

### All companies are software companies

The theme at Davos 2016 this year was “The Fourth Industrial Revolution” referring to the advances of ‘economy-changing’ technologies. Unfortunately, I cannot find the post, but I recall hearing an interview with a CEO saying that all companies are now software companies, it appears that it’s software that is giving companies their edge these days. With this in mind, I think we’re at the beginning of this boom, and the interfaces and applications of this technology we are going to be testing if mind boggling. I personally embrace technology, so I can’t wait!  

### Internet of Shit

I was thinking about this during the webinar, and Daniel had the courage to bring it up, so I’m just adding a link here. If you haven’t seen this [Twitter account](https://twitter.com/internetofshit), it’s brilliant, it’s hilarious, it’s also terrifying!!!  

### Mobile, it’s personal

We mentioned many user aspects during the webinar, mostly focusing on how a mobile device is personal. Firstly, users configure they devices any which way they like, not such a huge problem on iOS, but can be very problematic on Android. Some system settings, such as fonts, can actually change your app, amongst many other things.  

Also we mention speed a fair amount, but it’s important. People are normally doing 10 things on their phone. Reading the news, whilst sending a tweet, whilst WhatsApping Dave and checking social media. So when they switch to your app, it needs to work, immediately, or they will leave. Now in the context of an app were they are multiple apps you can download, that’s is exactly what they will do. Delete your app and download another one!  

Interruptions, we also explored how other apps, and the fact it’s a mobile phone can impact your testing. A user will receive a call whilst using your app, what does your app do? They get a notification from another app, and click it, when your app resumes, what does it do? When the users’ connection drops and recovers, how does your app behave?  

We have some really interesting conversation around the above, but they were all in the context of testing mobile, and the short comings of most automation tools. However, this is OK IMO, as mentioned during the webinar, I love the quote from Dhanasekar ~ “It’s a sin to test a mobile app at your desk” to which I’ve adapted to “It’s a sin to only test a mobile app at your desk”. We have to get out there when testing our apps, out into a real environment. We need to test them on a real phone, with real other apps and a sim card so calls can be received. This is how a user is going to use your app. Simulating all this, is difficult, but more importantly very time consuming, time which most teams simply do not have.  

### Tools

We hit on a few tools during the webinar, but my conclusion on the majority of mobile tools aimed at testing/checking are that they are very immature. But this isn’t surprising, the platforms themselves are immature. For example, iOS was only released in 2007, making it only 9 years old. It’s been in a constant stage of change ever since, which big architecture changes in most major releases, due to the very context of mobile and mobile hardware. It’s evolving at such a rate, change is inevitable. So this means the tool vendors are always playing catch up. There is hope though, tools from the vendors themselves (XUITest, Espresso) have become significantly better in the recent year, I hope this trends continues.  

### Proxies

I mentioned the importance of testing with proxies several times during the webinar, making the point to repeat it. It’s important. I find it virtually impossible to test a mobile application without using a proxy. The reasoning being is I **need** to see what data the app is getting. I **need** to see what data the app is sending. I **need** to see what APIs the app is calling, and when. A proxy allows me to see this information. It’s the most important tool when testing mobile/IoT IMO. Also from a testing context, it allows you to test multiple scenarios with ease, such as status codes and different length data, as you can alter the request leaving and arriving on your device.  
If you haven’t tested using a proxy before, please try them! I use CharlesProxy on my mac, but Fiddler is also a great option for Windows.  

### Twitter Driven Testing

I first heard about Twitter Driven Testing from the Panda, [Pradeep Soundararajan](https://twitter.com/testertested?lang=en-gb). He spoke about how he was testing a public facing website, and turned to Twitter to read what users were saying about his product. Of course, as with most things, there were positive and negative comments, but all this information turned out to be a great source of test ideas for Pradeep. This is something I’ve continued to do, however I’ve expanded beyond Twitter now, and look on forums and Facebook. But as we are talking mobile, I also take advantage of the app stores, the reviews people go to the effort of leaving there are gold for a tester, or someone looking to do some testing.  

Doing some basic searches on social media for your product, see what people are saying about it, could lead to some very interesting testing.  

### Data Builder Pattern

Someone asked a question during the webinar about how to manage test data. I mentioned this is a place where I heavily relay on automation. I use a pattern called the Test Data Builder Pattern, I’ve blogged about this already, which you can read [here](http://www.thefriendlytester.co.uk/2015/06/an-introduction-to-data-builder-pattern.html).  
In addition to this post I suggested adding a common interface to your data creation code now, such as an HTTP API. This would allow you to take advantage of this code from many interfaces now. So your automated checks could call them, you could use a tool like POSTMan to call them whilst testing, means you don’t have to keep repeating code that creates data.  

### Modelling

My final thing I made a note of was my advice to model your system. Initially a high level model, just have a box for interfaces, box for APIs and a box for databases. This allows you to see the system boundaries with ease. These boundaries can help identify where mocking could be introduced to assist with testing, but also to show where data is moving in the system. I encourage every to have such a model, they are a fantastic tool to assist conversions about the product.  

So if you got this far, congratulations, I hope you enjoyed.