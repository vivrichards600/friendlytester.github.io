---
layout: post
title: Crystal Ball - Automation in Ten Years Time
date: '2019-05-09T22:50:39.450+01:0'
author: Richard Bradshaw
description: "A prediction, or a bit of fun, on what automation in testing will look like in ten years time"
categories: 
- Test Automation
- Automated Testing
- Automation in Testing
tags:
- Automation in Testing
- Automation
modified_time: '2019-05-09T22:50:39.450+01:00'
permalink: 2019/05/what-will-automation-look-like-in-ten-years
comments: true
---
I asked on Twitter what I should write about next, the second response was from RangeTester…

<blockquote class="twitter-tweet tw-align-center" data-partner="tweetdeck"><p lang="en" dir="ltr">How you imagine automation in 10 years</p>&mdash; FreeRangeTester (@RangeTester) <a href="https://twitter.com/RangeTester/status/1126422822564143106?ref_src=twsrc%5Etfw">May 9, 2019</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

This a tough question, usually the type of question I avoid answering because it's impossible to know where it will be. However, I feel like indulging the question and having some fun trying to answer it. So, given the domain we are in, I've assumed the question was about automation in the context of testing.

## State of Play

For me, there is only one place to start with this question, what does automation look like right now? This question I can answer, but in doing so, it reveals a huge gulf, a gulf that is probably about ten years in the making! There are still many teams who don't utilise automation at all, some genuinely don't need to, and others that just haven't been able to get going for one reason or another. Then at the other end of the scale we have teams who've adopted continuous deployment and are running thousands of automated checks on all layers of their application umpteen times a day. Then, of course, they are teams who have thrown some AI magic into the mix, but we'll get to that.

However, I feel the majority of teams sit somewhere between these two points on the scale, with a large proportion of them having some form of continuous integration with thousands of UI and API automated checks.

However, such scales have little value in my opinion, as software development is very contextual, so many factors impact your testability, so to say one end is the pinnacle, or more mature (our industry loves a maturity model) doesn't really progress the use of automation. However, I think everyone is in agreement that rapid feedback is a must, and that is what all the teams are striving for.

## Future
The future for every time is to make rapid more rapid, so let's procrastinate and predict how teams may be able to do this in the future.

### Automating on Many More Layers and Seams
I feel we are finally dropping our industries obsession with the GUI, and automating everything on that layer. I've seen a sharp increase in API automation, through demand for training, but also in community activity on the topic. Then we've seen vast improvements in visual testing tools and javascript testing tools in recent years, I only see them getting better and better. Many teams have already added these tools to their tool belts and many more have plans to do so, so first and foremost, I see a steep increase adoption of these tools and teams automating on more seams.
I spoke about this in my recent talk at SauceCon, you can watch it on [YouTube](https://www.youtube.com/watch?v=83aHKC5C14Q&list=PL67l1VPxOnT5PZQ1r60wQoT2UPDk1of4z){:target="_blank"}.

### Self-Healing Automated Checks
We have these already, I believe [testim.io](https://testim.io){:target="_blank"} were the first to work on this problem and have a great working solution out there right now. I only see such tools increasing and becoming more sophisticated. However, with the previous section, these tools are going to have to move this healing to other seams, as I predict teams will be writing less UI automation and will start looking for tools that can help heal other layers. 

### State Management
This is by far the most important thing you can automate IMO. Such automation supports automated checks and exploratory testing, and I even heard stories of support teams utilising such automation to replicate live issues. If you're not familiar with the term it's automating things like deployments, date creation, config flags, being able to programmatically control your application so you can proceed to manipulate it through testing. With the increase in frameworks to support testing on different seams our solutions for state management need to evolve with them. If you've created code to manage data in Java for your UI scripts and have decided to add some API automation in JavaScript, you don't want to recreate that state management code in JS, that would create waste. One way I'm combated this is by utilising a protocol most languages support, HTTP. Take that Java code and add an API above it, allowing you to utilise the same code across all your testing frameworks. So, I expect to see a surge of tools around state management in the coming years, and I imagine many of them will try and utilise AI in form or another. How are you currently managing state?

### Analytics
I wasn't sure what to call this section, but basically, I'm thinking about tools that provide us with analysis of our development, live system and automated checks. These tools would just sit there running in the background guiding us as to where they believe we need to take a closer look. Let me paint the picture. I built a tool to do this a few years back, but never progressed the idea.

You have a model for your system and development, for ease let's say it has eight sections, and we utilise tags to map to those sections. We then tag everything to those sections. Commits, automated checks, exploratory testing sessions, stories, features, production analytics, support tickets, bugs I'm sure you can see where this is heading. The tool then processes all this data and using some weighting decides if further work is needed or it thinks we are covered. Let's say we commit 50 changes in a section that has little automated checks and we've done no exploratory testing sessions, but according to the analytics it is used by 90% of our users, as a team, we may want to have a look into that area to see if we are happy. It could be a two-minute investigation or could result in some more in-depth testing. But I envisage such a tool ticking away supporting our testing efforts with little prompts and nudges. Just for clarification, I'm not saying we solely rely on such a tool, it would play a supportive role. 

Does this make sense, would you utilise such a tool?

### Low Hanging Fruit AI Generated Automated Checks
'We use AI', how? 'We use AI', where, for what? AI AI AI AI AI!
This is the current state of AI in my opinion, lots of talk about AI, but little evidence. One major exception I see is [Jason Arbon](https://twitter.com/jarbon){:target="_blank"}, the CEO of [test.ai](https://test.ai){:target="_blank"} who is very public with his companies use of AI, and also have a vast background in testing and that shows with the way he talks about the future involvement of AI.

Jason in a recent conference talk mentioned that it wouldn't be until 2027 when AI was able to contextual computation. Now I haven't seen the talk, just the [slide his posted on LinkedIn](https://www.linkedin.com/feed/update/urn:li:activity:6532019229951176705){:target="_blank"}, however, my thinking around AI with regard to automation is how it would be able to understand the context of the system, especially the domain knowledge to perform 'human-like' testing. I should just Jason he has far more knowledge in AI then I do, but I don't think it will happen in ten years, but I do see a sharp increase in the low hanging fruit category. Many tools already offering it, but when I say sharp increase I'm referring to teams actually utilising such tools.

The majority of these tools I've read about or had demoed to me are basically advanced crawlers. They've been taught how to navigate a website and are looking for common web issues; broken links, console errors, broken images and so forth. The difference I've seen in some of them is they are capable of filling in basic forms and trying common flows. For example, if it detects there is a shopping cart, it will see if it can work out how to add something to the cart and buy it. Contextual to the domain, but not to the business and it's that business context that I feel will take a lot longer to achieve, if ever. 

But I see lots of companies adopting the low hanging fruit tools, why wouldn't you? If you could just have it running continuously looking for things it believes to be wrong and pinging them to you to investigate it could provide lots of value. Especially if it truly learnt as you acted upon its data. Again though, this should never be an approach to testing, but a tool to support the team.

### The Exploratory Testing Bot
I've wanted to build this tool for a long time, but I simply don't have the skills or the money to pay someone else to do it! But I believe someone else will build it eventually. But the idea is a bot that supports your testing efforts. It is observing you as you test, observing the system, the logs, previous testing sessions and processing all that to offer you guidance. 'Richard you tested something like this in December and found a bug by exploring A, perhaps try that here?', 'Are you stuck for test ideas Richard, I see a form, perhaps try Too Big Too Small heuristic?'. Again, a tool offering guidance. I'd also code it to make other things easier for me, such as 'record me', 'take a screenshot', 'get me that log' these things are possible now, but I believe frameworks and libraries will be written to get such tooling into more companies. 

## Summary
I could go on, but I've realised my own theme, and it's the theme me and Mark Winteringham talk about within ['Automation in Testing'](https://automationintesting.com){:target="_blank"}, human-centric automation, that truly supports testing. I don't see anything coming along that we can just point to an application and it does all the testing and says yay or nay, but I do expect to see a huge increase in tools that we can point and play and have them offer suggestions for us to explore further. Then a suite of tools that increase testers (someone where a testing hat) ability to test faster and smarter, by making things great testers do now more accessible to others.

I'd love for this to trigger some conversations, what do you think automation in the context of testing will look like in ten years?