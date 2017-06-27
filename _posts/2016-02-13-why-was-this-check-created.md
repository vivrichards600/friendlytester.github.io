---
layout: post
title: Why Was This Check Created?
date: '2016-02-13T12:45:00.000Z'
author: Richard Bradshaw
tags:
- checking
- automated checking
- test automation
- automation
- Testing
modified_time: '2016-02-15T09:24:59.164Z'
blogger_id: tag:blogger.com,1999:blog-8318661666872903125.post-3527153159476093410
blogger_orig_url: http://www.thefriendlytester.co.uk/2016/02/why-was-this-check-created.html
permalink: /2016/02/why-was-this-check-created.html
---

As I've been thinking more about Checking and Testing, and how to get them working harmoniously, I'm wondering if we are missing something from our checks. This post will focus on automated checks, but it I believe the same applies to non automated checks.  

Some teams have become really adapt at writing automated checks. They are following good practices. Classes, methods and objects are all well named, and it's obvious what they do. Assertions are clear, and have a well structured message for when they fail. There are good layers of abstraction and code re-use. They are performant, execute fast and designed to reduce flakiness. It all sounds rather good.  

But <span class="bluenumber">**why**</span> is that well designed, well written, easy to read check there? Why does it exist. Why was this check written, over all the other possible checks. I can read the check, it's well written as mentioned, I can clearly see what it is checking, but that is all I have. How do I know, that the steps and the assertion(s) there match the initial intention for it. What was it about this check, this system behaviour, that was worthy of having an automated check created for it. I don't know that.  

Why should we care about the why? I believe the results of automated checks are impacting the way we test. I believe this is especially true in an environment that has adopted continuous integration. As before you test, by test here I mean testing once the developer believes she is "code complete", all the automated checks are ran, and the build is either red or green. A generalisation for now, as I am still giving this more thought, but when the build is red, we tend to immediately focus on that, by chasing green. We will then usually read over the other checks in that area to see what else is covered, and then design and execute some tests to see what else we can learn. Then return to the new piece of work. When the build is green, we tend to focus our testing efforts on and around the new piece of work. As I said, it's a generalisation for now, I know I/we don't always do this, but hopefully most can relate.  

I believe we aren't always aware of how much trust we put in our automated checks, and all that trust without always knowing why the check exists or it's importance. We all have a lot of knowledge about our systems, a lot of that knowledge is interwoven, this is why we create automated checks, because we can't remember everything. We need to make some of this tacit knowledge, explicit. It's also why we create mindmaps and checklists, to prompt us to remember things. To consider things.  

If the why was also included, I feel it would aid us with test design. It would also aid us when reviewing our automated checks, when deciding do amend some, or delete some. Regularly viewing your checks and questioning their value is something I encourage teams to do regularly. Just because a check is green, doesn't mean it helped you in anyway, doesn't mean it added any value to your testing efforts. Going back to test design, lets say a check failed that had the following why message somewhere: "This check was created as we had a major issues in live where the system did X and lead to Y downtime". If I saw such a failed check, I believe I would probably do more testing in that area than if that message wasn't there. If I was reviewing my checks, and saw such a message, I would be able to assess it's value a lot easier/faster.  

Here are multiple ways we could add the why in.  

1.  <span class="bluenumber">**Code Comment**</span> - No doubt a lot of you have turned your nose up reading that. But I'm not talking about using them to be able to read what the code does, as stated, we can do that. I'm talking about a few lines above a check, explaining why it's been created.
2.  <span class="bluenumber">**BDD Tool Lovers**</span> - While I discourage people using BDD tools to write automated checks, especially those places that aren't practising BDD, I know many of you are using such tools. So you could add the why to the scenario section of the feature file. 
3.  <span class="bluenumber">**Commit message**</span> - Perhaps we ensure to add excellent commit messages when new checks are created, clearly indicating the why there. We could then look at the commit history of the file. Has flaws if checks are moved around a lot during refactoring. 
4.  <span class="bluenumber">**External document**</span> - Or perhaps we could store the why in a document somewhere. Perhaps a mindmap with IDs for the checks

Even though my thoughts are early days, I don't believe adding the why is a huge deal, the fact you are creating it means you already know why, it's just not there later in the checks life. Or available for new team members to read. Or anyone. But I do believe it could play a significant part is assisting our testing efforts, especially in check reviews and test design.

These are some early thoughts, just had an urge to write something after several conversations at Euro Testing Conference on this subject. Would love to hear some of your thoughts if you have the time to engage.

Thanks.