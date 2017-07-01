---
layout: post
title: Who Tests The Checks
date: '2014-03-25T22:52:00.001Z'
author: Richard Bradshaw
categories:
- Automation Design
- Automated Checking
- Automation in Testing
tags:
- Automation
modified_time: '2016-02-16T12:16:57.892Z'
blogger_id: tag:blogger.com,1999:blog-8318661666872903125.post-4413289205845828004
blogger_orig_url: http://www.thefriendlytester.co.uk/2014/03/who-tests-checks.html
permalink: /2014/03/who-tests-checks.html
---

A common phrase to hear in the testing community, be it on Twitter or on forums, is "Who tests the tests?" Or in my case that would be "Who tests the checks?" or even "Who checks the checks?".  

I am referring to automated checks, if you have written a check for the system, what's checking the check? What's checking that check that's checking the original check, we could continue but I hope you get the theme.  

Well the answer is simple, you do and your team does. Thanks for reading...... OK I shall elaborate.  

A common approach to creating checks is to create it locally against a local or deployed instance, work on it until it passes, then check it in, job done. Well it went green, so it's clearly working, but then later on that day/week it starts failing, you have made the build red then the pressure is on to fix it.  

The way I view this is that automation is a tool, it's a piece of software that you are creating to assist with testing the system. So if you are testing the system that the developers are creating, which is a tool for your customers, why not test a system you are creating as a tool for your team?  

If your check is passing, explore how you can make it fail, then make it fail, and importantly is the check giving you sufficient information about why it failed (Going to write more about this soon).  

So here are a few examples of how I test my checks.  

### Data
If you check produces some prerequisite data, what happens if the exact same data is already there? Should it handle this scenario? Does it give you good feedback, What happens if the method for creating this data fails, perhaps is direct to the DB and you alter the connection string or its via an API and you alter your credentials, does the error direct you here or just tell you the check failed?  

What if tearing down the database after a test run fails, what happens to your check then? Should it make a new record with the same data or perhaps it should error.  

### Alter Assertions

You have written a check because you want to check something about the system, so your check will have 1-N assertions in it. Alter them, ensuring that the check should now fail.

For example if you are checking some text on the screen is displayed, perhaps it's an error message, change the message you are expecting by 1-N characters and check that it now fails. Reverse that scenario, if you have access to the source code, change the text on the screen which should yield the same result.  

### Run the tests at least three times
I have seen and written checks that have this unique ability to pass for a while, then fail once then pass again. Some people refer to them as "flaky" or I remember the guys from Salesforce at the Selenium Conference called them "flappers". Either way you write them, but majority of the time you won't discover them until they are on the CI. I have seen several reasons why a test can be flaky, majority of them and down to timing issues. So I have found running them at least three times locally increase my confidence I have written a stable check.  
  
### Alter the environment

Always creating your checks locally? If so you may come across situations where your check is only passing because a locally deployed site on an awesome machine is fast! But as soon as you run it on CI it starts to fail. So to mitigate this risk, I sometimes use Fiddler to slow down my connection to see how the check then performs. I have in the past also logged on the CI machine or a VM and ran my check in isolation to ensure it passes.  

### Concurrency
To get the most out of automated checks you want to be running them on CI. This comes with a potential concurrency issue, because depending on your set up, the same slave could be running several tests in parallel, therefore could your test be impacted by another test? Such as deleting shared data, or a test could clear the DB while another test is still running. I sometimes call this test bleed.  

### More Automation
So what about more automation to test the automation? I try to avoid this however I do feel there is certain scenarios where this could be an acceptable approach.  
If you are using a third party API/library and you decide to write some extension methods for it, then it could add some value to write some checks for it.  

However if you have gone to the effort of creating a suite of automated checks you should be running them all the time, so you should find out very quickly when something in your architecture has broken, so you could take the view that there is little value in spending time creating automated checks for the checks.  

### Code/Peer review
As mentioned earlier in this post, automation is software, where the customer is your team. So if you have a practice of doing peer/code reviews for your application code do the same for your automation code. You will also then take advantage of the "alter the environment" approach as the reviewer will execute the test on their machine.

### In summary
I take the view that your automation is software, software you or your team is producing for the team, so test it. It will save you time in the long run in my experience, as many hours have been spent investing failing checks to find its something obvious.  

Update February 2016 - Bas Djikstra just [wrote](ttp://www.ontestautomation.com/do-you-check-your-automated-checks/) something similar, also worth reading.