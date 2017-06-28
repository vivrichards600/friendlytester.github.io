---
layout: post
title: Using BDD Tools To Write Automated Checks != BDD
date: '2015-08-04T21:59:00.000+01:00'
author: Richard Bradshaw
tags:
- checking
- BDD
- automation
- Testing
modified_time: '2015-08-05T21:28:44.826+01:00'
blogger_id: tag:blogger.com,1999:blog-8318661666872903125.post-5969387546782232306
blogger_orig_url: http://www.thefriendlytester.co.uk/2015/08/using-bdd-tools-to-write-automated.html
permalink: /2015/08/using-bdd-tools-to-write-automated.html
---

Using Cucumber, SpecFlow or similar tools to write your automated checks, **is not doing BDD**. Cucumber, SpecFlow or similar tools **are not testing tools ¹**. I believe they were designed to facilitate the process of BDD. Sure they could be accompanied by other tools and code to form a testing tool, but as this post will elaborate on, its important to understand what doing that means.  

I am seeing a surge, well it was a surge at first, it's considered the norm now, I gauge this by using blog posts I see, message forums and job adverts. I probably first noticed it in 2013. This surge is people using tools that have come out of the BDD community for their automated checks, with the most popular being Cucumber and SpecFlow.  

Is there a problem? Maybe, as always it depends on the context. But what I do have a problem with is people claiming that by doing this, they are indeed doing BDD. Now I should make it clear from the off, I am no BDD expert, I have a shallow understanding of it, read a few books, a few blog posts, never worked anywhere claiming to do BDD, however I have worked in companies were collaboration is strongly encouraged, if not mandatory, and my understanding of BDD is that it's routed in increasing collaboration. Does writing your automated checks in SpecFlow/Cucumber increase collaboration? Minimally if at all.  

My next gripe is people using Cucumber/SpecFlow in their automated checks, well, just because! "Why wouldn't we", I hear them cry, shortly followed by "it makes everything readable". It could make it more readable, however sadly the way most implement (generalisation here), but also based on what I read about and have experienced, they don't write them in a readable way. Ok I should make this more clear, the "steps" may be very readable, but what the scenario is checking, not so much. But thats the point of writing scenarios in gherkin, right?  

There is a great example of that in, [Fifty Quick Ideas To Improve Your Tests](http://www.amazon.co.uk/Fifty-Quick-Ideas-Improve-Tests/dp/0993088112/ref=sr_1_1?ie=UTF8&qid=1438712266&sr=8-1&keywords=50+test+ideas) by Gojko, David and Tom in the chapter titled "Use Given-When-Then in a strict sequence". It reads like this.  

> Given the admin page is open  
> When the user types John into the 'employee name'  
> and the user types 30000 into the 'salary'  
> and the user clicks "Add'  
> Then the page reloads  
> And the user types Mike into the 'employee name'  
> And the user types 40000 into the 'salary'  
> And the user clicks 'Add'  
> When the user selects 'Payslips'  
> And the user selects employee number 1  
> Then the user clicks on 'View'  
> When the user selects 'Info'  
> Then the 'salary' shows 29000  
> Then the user clicks 'Edit'  
> and the user types 40000 into the 'salary'  
> When the user clicks on 'View'  
> and the 'salary' shows 31000

Have you seen a scenario like this before? What is this scenario actually checking? It's not immediately obvious to me, you? I am not going to dive into detail of what it could be, based on the above, as the author of the chapter has already done a great job of that, so I recommend reading it. But a possible scenario could read as  

> Given an employee has a salary 'X'  
> When the tax deduction is 'Y'  
> Then the employee gets a payslip  
> and the payslip shows 'Z'

Which works better for you? The latter I would hope. It's clear what the scenario is doing. Its clean. Also in most cases where BDD may be being practiced, or the acceptance criteria is being written in gherkin, it's directly related to the story, and could subsequently serve as an education resource for someone wanting an insight into some features/behaviours. The same couldn't be said for the first example.  

So why are so many people automating like the first example, where we don't have these advantages?  

I have started calling the first example **TestCase 2.0** - By this I mean, if the steps are written like such, someone without any technical skills, can come along and make some new scenarios, just by plugging some steps together. They never have to look at the plumbing underneath, it remains hidden. It's like feature files have replaced spreadsheets... step driven automation instead of keyword driven automation. Takes little thought, and subsequently returns little value.  

It's understandable why someone would use it this way if such a framework existed, "what! I can just search for steps and create 100s of new scenarios, awesome!" Sadly it's not. Not going to dive into that in this post, but we need automation that supports us, creating scenarios for the sake of it, especially ones where the scenario isn't clear, in the long run, isn't going to help anyone. Also, the more you add, the longer you wait for your feedback, you know the fast feedback that automation could provide.  

I am not saying don't use tools such as Cucumber/SpecFlow in your automated checks, but think about why you would.  

1.  What's the advantage?
2.  Where's the value coming from? 
3.  Who is your target audience for reading your scenarios?

But be clear to yourself and your team with what it is you are doing. In most cases you are using BDD tools as part of your automation framework, not doing BDD, so don't fool yourself or others into thinking you are.  

So do use Cucumber/SpecFlow, but use it for the right reasons, use it to make it clear to you and other what the scenario is checking. Not because it's the **_"cool"_** tool at the moment.  

If you still think what you are doing is BDD, then I have listed some references at the bottom.

#### References

¹ https://cucumber.pro/blog/2014/03/03/the-worlds-most-misunderstood-collaboration-tool.html_  
_https://cucumber.io/blog/2015/06/18/hamish-tedeschi-what-is-bdd_  
_https://cucumber.io/blog/2015/07/13/anne-marie-cukeup-question-and-answer  
http://prezi.com/hhmqznflya0l/?utm_campaign=share&utm_medium=copy&rc=ex0share_  
_Look up [Dan North](http://dannorth.net/) & [Liz Keogh's](http://lizkeogh.com/) work on BDD._