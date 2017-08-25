---
layout: post
title: Three Free Programming Courses for Testers
date: '2017-08-25T11:23:39.450+01:00'
author: Richard Bradshaw
categories: 
- Automation in Testing
- Automated Checking
- Automation
- Free Software Testing Training
- Programming for Testers
- Programming Basics
tags:
- Automation
- Java
- Selenium WebDriver
- Community
- Training
- Programming
modified_time: 2017-08-25T11:23:39.450+01:00'
permalink: /2017/08/three-free-programming-courses-for-testers
comments: true
---
Three Free is difficult to say! I've created **three programming courses** to support testers or anyone for that matter in their programming journey. They're all text and code based, and available for free on this blog.

I'm calling them courses, as in a way they are. What they all are is a collection of structured posts in a logical order with the hope of teaching/informing people of things related to programming, that I believe are important. Some posts are just text, some are posts with code examples, and some are just text with links to code over in GitHub. All the code I've written I've heavily documented, and where possible I've added additional notes for the context of testing.

### Why?
This started as a simple job of rewriting my Selenium WebDriver in Java course until I realised I'd inferred so much knowledge, that I thought a beginner would really struggle with this, especially someone with no knowledge of programming whatsoever. Which got me thinking further. I see an unpleasant pattern in software testing, which is the push to code. My view is simple, the more tools you have in your tool belt the better. However, there are only so many slots in someone's belt, so choose which best suits your current roles or roles in your area. Now having said that, many testers are wanting to learn to code and turning to the internet to do so. Now, aside from a few exceptions, most notably Alan Richardson's '[Java For Testers](http://javafortesters.com/page/about/)', a lot of the content aimed at testers wanting to learn to code starts with a framework, such as Selenium WebDriver. So they fire open an IDE they know nothing about, copy some code from a page, google how to run it, it works, they declare themselves all conquering and continue to build up from that example without understanding it, at all. Sweeping generalisation, I know, but I know it happens.

This, in my opinion, is leading to testers who know enough of a programming language to build an 'automation framework', based on scenarios framed by the framework, not the language, but have no idea why people design them the way they do. Or really struggle to talk about what they are doing or thinking. This is a common problem already with testers talking about testing, yet we are not learning when it comes to automation and code. I've used this example in talks, but a few years back I was interviewing for an Automator, mostly Selenium WebDriver in C#. During the interview I asked if they could explain Encapsulation and Abstraction to me, they declined and said they couldn't. 5-10 minutes on in the interview, he explained how he would implement PageObjects for the example application I gave him. Page Objects... but can't tell me what Encapsulation and Abstraction are? That is broken. 

So I pondered a lot about what I should do about this. I have this problem for my own course but also feeling like it's a wider problem. I also saw a post on Twitter saying that testers at their meet-up were desperate to learn to code but didn't know where to turn to. Now, there is a lot of basic programming material out there, most of it free, but perhaps they weren't looking outside of testing, I don't know. In creating all this material I found loads, and have included links to them on each lesson. I want to say how awesome the BBC Bitesize material is on programming.

### What?
So after the pondering, I decided on my approach. First, I wanted to make a programming basics course that was code agnostic. Covering common terminology shared by most languages, along with some more specific terminology relating to programming paradigms. My aim for this is to help people talk about their code and their thinking. Also to understand why some frameworks are designed the way they are, instead of just accepting it and proceeded to use it. Second, I wanted to create a Basic Java course which provided code examples of whats covered in the programming basics. So now we can talk about it, as well as implement it. This Basic Java also proceeded to 7 lessons on JUnit as I find it the easiest way for beginners to run their code, as well as three lessons on using IntelliJ. Finally where all this started, rewriting my Selenium WebDriver course.

### How?
I reckon this has taken me 100+ hours to complete. Considering I like to value my training/work time at around the £100 an hour mark, this was a significant investment by me. Sure, I didn't set out thinking it would take 100 hours, far from it, but it has done and I'm OK with that. I haven't done this for money, I did it because I care about my craft and I want to support others on their journeys.

Overall **there are 55 pages**, many lines of code, and many external links to learn more from. This material is by no means polished, I'm not declaring what I've written is gospel, but I've done my best. In actual fact, I have huge imposter syndrome releasing this. The whole process has made me somewhat uncomfortable. However, it's been very rewarding. I actually learnt a lot, realised some things I thought I knew all about, I knew nothing. Realised I knew a lot of things I couldn't talk about. In the majority of cases was just a great refresher.

I'm not a good writer, or at least that's what I tell my self. Others tell me I am. I make many mistakes when writing, spelling mistakes and a lot of time I throw some random words in there. So, these pages will be full of mistakes, so if you see some do feel free to point them out, or if you're comfortable with GitHub, my [blog is open source](https://github.com/FriendlyTester/friendlytester.github.io), so you can go right ahead and submit a pull request. But please don't just fire typos at me without anything positive to say about the content, I personally find it disheartening.

Content, if you think I'm missing something please reach out to me, or add a comment on the lesson or roadmap page for that course. If you think I've written something inaccurate or misleading, again please contact me or add a comment. Or as with the grammar, if you're comfortable with GitHub just go ahead and submit a PR on my [blog repo](https://github.com/FriendlyTester/friendlytester.github.io).

### Where?
A page for all my online courses is [right here!](https://thefriendlytester.co.uk/training/online/). Or individually with lesson breakdown:
* [Programming basics](/programming/course/)
* [Java Basics](/java/course/) which includes IntelliJ and JUnit
* [Selenium WebDriver in Java](/selenium/course/)

### Next?
I'll likely record these classes as videos and add them to the [Ministry of Testing Dojo](dojo.ministryoftesting.com).  
All the courses have a roadmap page on them, I've asked people to submit requests on those and I've also added things I intend to add.

So there we have it. It's finally live. I hope this provides some value to people and helps those who have decided to add automation/coding to their belt.

Many thanks

