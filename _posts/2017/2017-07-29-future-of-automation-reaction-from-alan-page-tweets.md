---
layout: post
title: A Look At Test Automation and 'Test Automators' - Inspired From Alan Page's Tweets
date: '2017-07-29T11:23:39.450+01:00'
author: Richard Bradshaw
categories: 
- Automation in Testing
- Automated Checking
- Automation
tags:
- Automation
- Test Automation
- Automation in Testing
- Community
modified_time: 2017-07-30T11:23:39.450+01:00'
permalink: /2017/07/a-look-at-test-automation-and-test-automators
comments: true
redirect_from: "/2017/07/a-look-at-test-autoamtion-and-test-automators/"
---
So this is very fitting, I actually spoke to Alan last week, after he tweeted about a _BS_ article. I said I'd always considered doing blog posts as reactions to other material, be it articles, blogs or tweets. Yet never got around to doing any. Until now. 

Last night Alan shared his thoughts on the future of _test automation_ and in particular the role of the _automation engineer_ in an excellent [twitter thread](https://twitter.com/alanpage/status/891113697313079296). So I'm going to share each tweet in the thread and share my views on it.

<blockquote class="twitter-tweet tw-align-center" data-lang="en"><p lang="en" dir="ltr">I probably should blog this next tweet stream, but fuckit - Twitter is a great place to write an outline....</p>&mdash; Alan Page (@alanpage) <a href="https://twitter.com/alanpage/status/891113697313079296">July 29, 2017</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

100% this. Twitter is a great place for this. This is one of the things I think Twitter is actually good for. Lengthy debates and elaborating on ideas, not the best place. Blogs, forums like [The Club](club.ministryoftesting.com), and voice to voice, be it online or face to face are much better suited.

<blockquote class="twitter-tweet tw-align-center" data-conversation="none" data-lang="en"><p lang="en" dir="ltr">I read a few people say recently (I&#39;d cite it, but I can&#39;t remember where) that test automation is the use of *any* tools to aid in testing</p>&mdash; Alan Page (@alanpage) <a href="https://twitter.com/alanpage/status/891113885008146434">July 29, 2017</a></blockquote>

<blockquote class="twitter-tweet tw-align-center" data-conversation="none" data-lang="en"><p lang="en" dir="ltr">Which I don&#39;t agree with, so for the purpose of this stream, define test automation as code that executes the system under test...</p>&mdash; Alan Page (@alanpage) <a href="https://twitter.com/alanpage/status/891114046883115008">July 29, 2017</a></blockquote>

Now, I'm not looking for a debate about words here, I made my [stance](/2017/04/you-say-test-i-say-check-on-we-go.html) on such discussions clear. I call this Automation in Testing (AIT), the use of automation in the context of testing. I'm not trying to be smart or clever by creating my own term for this, I'm using the term to aid my own thoughts on the topic of automation in software testing. As widely agreed, at least I believe it is, automation > automated checks/tests. It's also going to be getting a lot bigger with more CI, CD, virtualisation, ML and AI in the future. For both automated checks and tools to facilitate testing. I'm working with [Mark Winteringham](https://twitter.com/2bittester) to create an AIT namespace. Not to tell people how it should be done, or send them links to say _'you're wrong'_ but to build up a body of material and courses on how Mark and I see it. I hope you'll hear and read more of those in 2018. I'm excited about it.

I digress, apologies.

I would love for _test automation_ to mean the use of any tools to aid testing, but it doesn't. The term has been bastardised and tarnished over the years, in my opinion. Test automation in the wider software development space means automated checks/tests. I've had great conversations with early authorities in this space like Dot Graham and they've indicated they share the same view. But this is OK, it's OK for it to have that meaning. It just means we need to explore alternative words, alternative thoughts to discuss other usages for automation. Hence my direction with AIT. Many will disagree with AIT, and I hope they do, because that's going to aid us in having conversations about the use of automation, and hopefully move it forward.

<blockquote class="twitter-tweet tw-align-center" data-conversation="none" data-lang="en"><p lang="en" dir="ltr">I have friends, both personal and virtual who are in a &quot;tester&quot; role and write test automation. It&#39;s also what a lot of testers aspire to do</p>&mdash; Alan Page (@alanpage) <a href="https://twitter.com/alanpage/status/891114377381675008">July 29, 2017</a></blockquote>

I've been occupying such a role for the last 10 years. I consider the ability to code, and my understanding of automation to be some of the many tools I have on my belt. It certainly is what a lot of testers aspire to do, but I also wonder how many just want to be a _'test automator'_?

<blockquote class="twitter-tweet tw-align-center" data-conversation="none" data-lang="en"><p lang="en" dir="ltr">I feel strongly that the role of &quot;test automator&quot; will disappear in the near future. It&#39;s a job better suited for the product developers.</p>&mdash; Alan Page (@alanpage) <a href="https://twitter.com/alanpage/status/891114914055454720">July 29, 2017</a></blockquote>

Now, in a recent talk I also said the role of a _'test automator_' will disappear, and also feel strongly about this. However, in my talk, I didn't say it was better suited to product developers, although in the majority of cases they would do a much better job. My thoughts are centred around _'toolsmiths'_, a role specifically designed to build tools to assist with software development. Those would be tools to support all the roles involved in software development. I intend to write more about this soon.

<blockquote class="twitter-tweet tw-align-center" data-conversation="none" data-lang="en"><p lang="en" dir="ltr">I feel really strongly about this. 95% of the test automation needed on a product can, and should be done by the programmers of that project</p>&mdash; Alan Page (@alanpage) <a href="https://twitter.com/alanpage/status/891115118167154688">July 29, 2017</a></blockquote>

Definitely. One of the best places I worked, we would explore the existing code and checks in the pre-planning meeting, once the room agreed on the understanding of the new feature we would make notes on the ticket about which checks may need re-work, deleting and which new ones would need adding. Now sure, it takes some testing knowledge to design such checks and make decisions on risk, but if you're in the room, you can just lead such discussions, ensure all agree, then it doesn't really matter who implements them does it? The other angle of this is that if the developers are writing these checks, these checks that have been agreed and discussed with the team, then you will get software that **can** work because there will be an agreed check already on CI _passing_. Allowing you do some further testing if required. 

<blockquote class="twitter-tweet tw-align-center" data-conversation="none" data-lang="en"><p lang="en" dir="ltr">There is, of course, a massive amount of testing work that can done via coding or tools. Stress, analysis, diagnostics, etc.</p>&mdash; Alan Page (@alanpage) <a href="https://twitter.com/alanpage/status/891115595764072449">July 29, 2017</a></blockquote>

There is indeed, a huge amount. Again, I'm not writing enough, but I've spoken a lot about the distinction between reading and writing code. Reading code is a great source of test ideas and bug discovery. Even better if you read or create it with the dev. But yeah tools. There a lot of fantastic tools out there, I personally try to find time each week to try a new one. Performance tools, proxies, tools within IDEs, tools within SDKs, the plethora of tools in the virtualisation / DevOps space. It's truly awesome. I'm always looking to add new tools to my belt. I don't claim to be a master of them all, but I know they exist. Sadly though, I hear and meet a lot of testers who just stick to a single language and framework. Go explore others, fill that belt up. You'll be surprised how much you can transfer from one tool to the other when you take the time to reflect on the skills you have.

<blockquote class="twitter-tweet tw-align-center" data-conversation="none" data-lang="en"><p lang="en" dir="ltr">Any testing not done by the implementer(s) of the code requires people that can use, implement, and write these tools.</p>&mdash; Alan Page (@alanpage) <a href="https://twitter.com/alanpage/status/891116022194774016">July 29, 2017</a></blockquote>

Definitely this. Again though, a huge difference between spotting opportunities for tools and implementing them. In recent talks, I've been sharing heuristics for spotting testability opportunities. I'll write something in more depth on this soon. Another skill related here is what I call the education section of [LegoAutomation](https://thefriendlytester.co.uk/training/legoautomation/). Educating the team on the tools we've built, how they work, how to install them, who to talk to about improvements. The same for checks. Hopefully, all were in the room, so we know which were added and removed, but sometimes if you're not in the room it's important to share with the team what has been implemented, so there is a wider understanding of what a green build radiator actual means. 

<blockquote class="twitter-tweet tw-align-center" data-conversation="none" data-lang="en"><p lang="en" dir="ltr">Sprinkle in some data analysis, customer empathy, and systems thinking, and that&#39;s the future of test.</p>&mdash; Alan Page (@alanpage) <a href="https://twitter.com/alanpage/status/891116210321899521">July 29, 2017</a></blockquote>

Ooooh, I do love me a bit of these things. Data analysis is big right now, and only going to be getting bigger. Testers have a huge role to play in designing and implementing such data capture, using our systems thinking skills. Then when we have a mass of data we need to be able to find interesting information from it. Looking for patterns, anomalies and traits to assist us with our testing decisions. Such data can support risk assessments, test design and test prioritisation. Also, not just data from the live system, data from our own development process. Looking for opportunities to improve quality earlier on. 

Customer empathy is really important. I was really close to my customers in my first few testing gigs, my automation heavy period in the middle of my career I probably couldn't have been further away, these days I always find the time. To clarify, customers to me here are PO/Business but also users. Social media is huge, there is probably a customer somewhere talking about your product, what are they saying? Could it be useful? I remember when [Pradeep Soundararajan](https://twitter.com/testertested) introduced me to Twitter driven testing, which I later changed to social media driven testing. He was working on a public app and decided to see if there were any tweets about the product, there were hundreds of them! He'd just discovered a huge resource of test ideas. In my recent role at O2Priority, I did exactly the same. 

<blockquote class="twitter-tweet tw-align-center" data-conversation="none" data-lang="en"><p lang="en" dir="ltr">I&#39;ve alienated a lot of testers by now, but I&#39;ve spotted trends before, so you&#39;ll have to trust me with this next, important tweet.</p>&mdash; Alan Page (@alanpage) <a href="https://twitter.com/alanpage/status/891116760056815616">July 29, 2017</a></blockquote>

<blockquote class="twitter-tweet tw-align-center" data-conversation="none" data-lang="en"><p lang="en" dir="ltr">If you want to be a better tester and be an expert in testing, do not even bother learning to write test automation.</p>&mdash; Alan Page (@alanpage) <a href="https://twitter.com/alanpage/status/891116948909457408">July 29, 2017</a></blockquote>

Now having read this tweet, I immediately tweeted to clarify to others that Alan was saying don't learn to write test automation, based on his earlier definition. He didn't say don't learn code, he actually said to learn code in an earlier tweet. Another important thing here is that he says write. As already mentioned, there is a big difference between identifying and designing tools and checks, than actually implementing them. Plus there is most definitely someone in your team better at writing code. It doesn't mean you shouldn't, if you want to, please do. Also if you do, work with those developers, learn from them, pair with them. I'm just making the argument that the other work involved in automation is harder to master, and more important, than the code itself. In my opinion.

I've given this a lot of thought, hence why this post wasn't finished 6 hours ago! I agree with Alan. 

As I've been trying to teach with [LegoAutomation](https://thefriendlytester.co.uk/training/legoautomation/) for the last few years, there is so much more to automated checks than writing the code. I'd argue the writing of the code itself is probably the easiest part of the whole thing. So why not utilise the people in the team with the strongest skills to implement them?

So many other aspects of testing to spend time on, to deepen our knowledge on, to learn, and to share. Exploring, story telling, talking testing, test design, check design, coaching, mentoring, pairing, CI, CD, AI, ML, bug reporting, information sharing, agile, empathy, problem-solving, risk assessment, biases, big data, analytics, it's late and I'm tired, perhaps you can all add to this list.

In summary, I'm onboard with Alan's views, important for me though is to distinguish between the design, creation, and information usage from automated checks. I'm going to be writing a lot more in the coming months, I care deeply about this topic. Also I'm not saying don't write automated checks, if you are currently or want to, please continue, I encourage you to go learn. I'm just agreeing with Alan that's not the only way to go, and the way the future is shaping a deeper understanding of automation as a whole (not the writing checks part) and other areas of testing will be more valuable.

I want to thank Alan for putting his thoughts out there, encourage him to continue to do so and I eagerly wait to read them. I hope to do more posts like this.