---
layout: post
title: Muddled Thoughts on Bug Prevention
date: '2019-05-26T15:00:39.450+01:0'
author: Richard Bradshaw
description: "Some muddled thoughts on bug prevention, after some interesting threads on Twitter"
categories: 
- Bug Prevention
- Testing
tags:
- Testing
modified_time: '2019-05-26T15:00:39.450+01:00'
permalink: 2019/05/muddled-thoughts-on-bug-prevention
comments: true
---
Some muddled thoughts on bug prevention. I agree we can prevent them, but I still feel muddled whenever I think about the idea of prevention. An attempt to try and order my thoughts.

## Can we Prevent Bugs?
Yes. Folk in software development are doing this all the time. In some cases the prevention is clear, however, in the vast majority of cases, I feel you'd never know. But it happens, you've prevented bugs and you'll prevent many more. However, being able to say with confidence that we prevented a bug is where my brain starts to get muddled.

## What is Prevention?
When I hear the word my brain says 'stopping something happening', so in the context of testing and bug prevention, I think 'stopping bugs from being coded'. We could, and probably should, also include preventing users from discovering bugs. Muddle, now I'm left thinking in order to do that I must first find a bug. In the case of stopping it from being coded perhaps I discover a bug in someones thinking, a spec or a story. With regard to the customer, perhaps I find a bug while testing before shipping, or I find the bug in production before the customer is aware and we can address. In all those situations I start with a bug, in order to prevent a bug. Muddles.

## Prevention From Detection
I guess thinking about what a bug is to me will help with my muddles. I align with Jerry Weinberg's definition, 'a bug is something that bugs someone who matters'. Who matters? My stakeholders. Who are they? They vary on the context, but for this post lets go with the team and the customers.

So my muddles tell me that prevention comes from detection. We detect something that bugs someone who matters and therefore we change our approach. That something is information/knowledge. In [this post](https://mysoftwarequality.wordpress.com/2016/05/05/testers-prevent-problems-every-day/) by Gus Evangelisti, he gives an example of ECB stopping the printing of the €500 bill due to its use in money laundering and terror financing. Gus encourages us to imagine Larry the tester being in the room;

>"Larry the tester – Let’s imagine that Larry, a tester, happened to be in the room where people where deciding the denominations of the euro notes. Let’s imagine he said “Hang on lads, this could be a problem as it would be easy to conceal large sums of money and smuggle them. Banknotes this valuable might help illicit traffic, should we stop at 200 or maybe even at 100?  
>Let’s assume there were smart people in the room that decided to take the objection into consideration, made research to prove its validity and as a consequence decided not to print the 500 euro notes."
> -- <cite>Gus Evangelisti</cite>

If we do as Gus suggests and we assume the people listen, we can say that Larry's actions found a bug. Larry's actions caused the people to find a bug in their current thinking. It was that bug, that led to the people gathering more information and deciding not to print the €500 note. Detection of a bug led to the prevention of another, the latter with significantly more impact in this case.  

However, I do feel that we can't 100% say that the potential bug of it being used for laundering would ever happen, however, based on information and research we can claim the probability is high. For example, let's assume the note being used for laundering before the €500 was the €200, and they were laundering money in the millions, the chances of them moving to the €500 note and having to carry 60% fewer notes would be rather appealing.

Knowing you definitely prevented something is what I struggle with. Does it matter though? Do we need to know? Probability could be more than enough.

Historical information could also be a good place to look to confirm prevention. Example, before we started doing TDD we saw lots of bugs like A, since we started doing TDD we've seen very few A bugs, therefore you could suggest TDD has prevented many more A bugs. Or comparison to similar companies; Company A were considering doing ABC, however, Sarah the tester revealed some information that led to them stopping ABC. Company B recently did ABC and have since lost $100m, did Sarah prevent company A from the same outcome?

In all the examples I can think of though, there is still some form of detection that leads to questions and information gathering, which changes the approach taken.

## Prevention Without Detection, Good Practices?
I thought of some other examples, good practices.  
You're on a greenfield project and exploring ways to work. There is no historical data specific for this project, but there are community and personal experiences for specific techniques. We haven't detected anything that has led to us taking action to prevent a bug, instead, we are calling on our experiences and good practices to form an approach we believe will prevent bugs. Such teams also wouldn't just take said good practices, they would take them and mould them to their context, increasing the chances of them having a positive impact on the team and the goal of prevention.

## Dangers of Prevention
Nothing lasts for ever though. While your current approach to prevention might be yielding results, it eventually may not. Therefore we should always be looking for new ways to increase our detection of valuable information. You could ask, 'why didn't we prevent this bug?'. Such a question should lead to reflection, the asking of questions, the gathering of information and subsequently a change in approach, which will hopefully lead to better prevention. With prevention being rather difficult to measure, such root cause analysis could be vital. On top of that, we should also be looking at other companies, what are they doing that is working for them, could it help us?

## Focus on Information Over Bugs
I feel focusing on information leads to a higher chance of prevention. Teams need to be sharing information more, especially the information gathered from skilled testing. Be it the testing of software or people's ideas. I've experienced this information being regurgitated as bug reports and stored in some tracker to die more times than I care to accept. Share the information, ask questions, lets those answers lead to others asking questions, others gathering information; information changes the way we work. Do I care I prevented some bugs, maybe, but not as much as seeing my actions (information highlighting/gathering) impact our ways of working or the direction of a feature for the better.  
I've had some great results from adopting Session Based Test Management (SBTM), because after each session I share my information with my team, increasing the teams tacit knowledge, that usually as mentioned above leads to others asking questions/seeking information. However, when I use to go straight to logging bugs, so much of that information was lost or was revealed way too late to have an impact on prevention.

## Measuring Prevention
Can you even do this? Why would we bother? If we could, would it be helpful?  
Decided to leave this in, as it may trigger some thoughts from others. My current thinking is all around how things were to how things are now, but I feel it would be difficult to map how things are now directly to the preventive actions we took, so many variables.

## Celebrating Detection Instead of Prevention
I've never quite found the words to explain this very well, but let me give it another shot. I've heard and read people celebrating the prevention of a bug. Preventing a bug is great and worthy of celebration, but I feel the detection of the information that led to the change in approach is more worthy of celebration. The fact someone asked a question, spoke up, introduced a new process, a new technique, created that automated check and so forth, celebrate those things. Celebrate you are continuously learning, continuously adapting and working as a great team.

I want to see people celebrating the detection, the skills used there and then, instead of celebrating what may or may not have been prevented.

## Conclusion
I've certainly ordered some thoughts, not all of them. But I enjoyed pondering bug prevention. I clearly care more about the journey than the outcome, I care about information sharing and seeing that information being used. Those usages lead to a whole host of great things, of which one is bug prevention. I want to continue to work on new ways to unveil information, confirm information and share information. I feel rapid discovery and digestion of this information leads to better software.