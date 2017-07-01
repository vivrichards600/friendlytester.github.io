---
layout: post
title: TDD - That Doodle Defined
date: '2014-09-02T20:56:00.001+01:00'
author: Richard Bradshaw
categories:
- Automation in Testing
- Test Driven Development
tags:
- TDD
- Automation
modified_time: '2014-09-04T17:53:15.772+01:00'
blogger_id: tag:blogger.com,1999:blog-8318661666872903125.post-7771538339050672032
blogger_orig_url: http://www.thefriendlytester.co.uk/2014/09/tdd-that-doodle-defined.html
permalink: /2014/09/tdd-that-doodle-defined.html
---

So a few weeks ago [Duncan Nisbet](https://twitter.com/DuncNisbet) published an article via the [Ministry of Testing](http://www.ministryoftesting.com/) titled [TDD for Testers](http://www.ministryoftesting.com/2014/08/tdd-testers/). It's a great article, read it if you haven't already. After this, there was a tweet from [Chris Simms](https://twitter.com/kinofrost), which twitter won't return to me when I search, but it contained the words, TDD isn't Testing.  

I don't know why, but it initially didn't sit well with me, so I started doodling while on the train, below is the result I tweeted.  

<div class="centerplugin">
<blockquote class="twitter-tweet" data-lang="en-gb"><p lang="en" dir="ltr">Outcome: TDD isn&#39;t testing, but provides some great artefacts to support Testing. I also draw a picture. <a href="http://t.co/knxsdjRdh0">pic.twitter.com/knxsdjRdh0</a></p>&mdash; Richard Bradshaw (@FriendlyTester) <a href="https://twitter.com/FriendlyTester/status/501665754069368833">19 August 2014</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
</div>
<br>
There was then several exchanges with Andy McDonagh, which results in some tweaks and additions to the original doodle, the final doodle looked like this:  

<div class="centerplugin">
<blockquote class="twitter-tweet" data-lang="en-gb"><p lang="en" dir="ltr">@andmcdonagh how about now? <a href="http://t.co/2sbs03EzlS">pic.twitter.com/2sbs03EzlS</a></p>&mdash; Richard Bradshaw (@FriendlyTester) <a href="https://twitter.com/FriendlyTester/status/501706686550134784">19 August 2014</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
</div>
<br>
There was then a tweet from [George Dinwiddle](https://twitter.com/gdinwiddie).  

<div class="centerplugin">
<blockquote class="twitter-tweet" data-lang="en-gb"><p lang="en" dir="ltr"><a href="https://twitter.com/FriendlyTester">@FriendlyTester</a> Very interesting diagram. Do you have a descriptive walk-through of it? /cc <a href="https://twitter.com/mheusser">@mheusser</a> @andmcdonagh</p>&mdash; George Dinwiddie (@gdinwiddie) <a href="https://twitter.com/gdinwiddie/status/501707285337763840">19 August 2014</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
</div>

<br>
So here goes.  

In my experience of working in teams where TDD is practised it's very rare a developer just jumps in and writes a failing test. There will have been discussions before hand with other developers, looked at previous tests and just generally given it some thought. Some great information to be had for a tester here.  

1) Lots of discussion. Is a specific characteristic of the design causing them trouble?  
2) "Yes, but changing that, will effect this and make all these fail" great for thinking about coverage. Areas outside of the story focus.  

The failing test, the coded oracle. This can help us understand how the developer has interpreted the story/requirement. Of course there is likely to be a trail you will have to follow to get a picture of their understanding but its achievable. This can be done once the work is complete and questions can be asked like, why did you write this test and not this test? But can also be done during, pairing is a wider topic, but you could ask, why did you decide on that test? Again lots of information to gain here to help with test idea creation.  

I am not going to into too much detail at the Code - Refactor steps. But again lots of information to be gained. Why did that test need refactoring? What does this refactor do?  

I was pairing once, during a coding dojo, and we decided to test drive the challenge. We wrote a test, it failed. We implemented some code, it went green. Awesome I thought, what's functionality is next. He replied by saying we haven't finished yet, that library/method is slow I know of a new one. So we proceeded to make the change knowing that the test was indeed checking our intended purpose for it. So what did I learn from that brief exchange. I learnt a specific library/method was slow, do we use this anywhere else? Also that this developer really cared about what he was delivering.  

So we arrive at the Done box, which is carrying two bags. Lets look at the Info one.  

As mentioned throughout the post, there is lots of valuable information to be gained from a developer practising TDD. This information can really assist when creating test ideas, should I focus on this aspect of the story as the developer struggled creating the tests for this area? Implementing new feature X caused the tests D,E and F to fail. How do these areas relate? What common domain object are they sharing? You can also look at the pattern of failure during the development period, if there was a lot of tests failing and passing, perhaps the developer has a good story to tell you about what caused this.  

So the checks, I refer to them as checks not tests, you can read more about that [here](http://www.satisfice.com/blog/archives/856). I labelled them as a bonus. They're a bonus, because what they continue to do is validate the information that you have collated. information you will continue to use throughout the project. They also continue to validate the design, our concern from the off.  

So talking about design, the final thing to mention is Testability, making something easier to test. Following TDD on my experience can lead to difficulties, I have heard many a time, "how are we going to write a test for that. If you ever hear that, ensure to listen in on the following discussion. But they always solve these problems. The outcome of this is that the developers would have already solved most problems, for example creating objects to use in new tests, mocking data, making values configurable, amongst others.  

So when we come to what I refer to as Automation in Testing, perhaps we want to create some UI checks, API checks or data creation. The likelihood in a team practising TDD is that someone will have solved the problems you come across, and will be able to get your going a lot faster. This also means that you could share some of this code, so when refactoring takes place, your automation tools are updated too. For example mocking is great for automated UI checking, if your focus in UI values and behaviour then control the data with mocks, also tends to be faster, but that can also be a disadvantage, as always it depends, but it's another tool in the box.  

### Summary 
Read Duncan's article if you haven't already.  
A team practising TDD yields a lot of information to support testing. So if you are in a team practising TDD, get amongst them, ask some questions see what you can learn about the code and therefore the application. See what exists that could help you with automation, perhaps some tools could quickly be created using code initially created for the tests, that could really speed up your testing.  

> "TDD isn't testing, but provides some great artefacts to support Testing"

### Update
Michael Bolton tweeted questioning the "checks continue to validate this info" from the diagram. "Instead of validating, I would say that the checks detect changes. Only a human can really validate." He has a valid point. The checks will alert us to a change, which we can then validate taking the context into consideration.

#### References
*http://www.ministryoftesting.com/2014/08/tdd-testers/*  
*http://www.developsense.com/blog/2009/07/testability/*  
*http://www.satisfice.com/blog/archives/856*