---
layout: post
title: Give Your Automated Checks a Voice
date: '2016-08-20T02:17:00.001+01:00'
author: Richard Bradshaw
categories:
- Automation in Testing
- Automation Design
- Automated Checking
tags:
- Automation
- Checking
modified_time: '2016-08-20T12:00:51.863+01:00'
blogger_id: tag:blogger.com,1999:blog-8318661666872903125.post-5144510964058909413
blogger_orig_url: http://www.thefriendlytester.co.uk/2016/08/give-your-automated-checks-voice.html
permalink: /2016/08/give-your-automated-checks-voice.html
---

We have robots doing a lot for us now, well when I say robots, I mean automation, but robots sounded well cooler. We have them running automated checks for us, we have them deploying builds into production, we have them creating test data, spinning up machines and environments, plus much much more. We love tools, and rightly so, they're awesome, most of them.  

However, the context for this post is automated checks. There offer us much more than pass and fail, but only if you ask it to tell you. I listed four things that I've used in the past, and how they've helped me.  

### Execution time  

A lot of the projects I use to work several years ago were for digital agencies. Short to midterm projects, three to six months or so. I use to write automated checks as frequently as I could, as in such an environment the fast feedback was invaluable. This environment being regular last minute changes, hot fixes here, some over there. Something I'm not against, but you need to be able to deal with it. The downside of all these changes was some focused testing would always slip, in this case it was always performance testing. It wasn't a skill of mine, it still really isn't, but I know enough to get by now.  

So I changed my approach. I started storing the execution time of all my automated checks. Sadly, there was no CI on this project, not that it's an excuse but this was about 6 years ago. So the automation was being ran from my machine whenever a new version was deployed. So after each run, I would add the time to a spreadsheet. I was probably running them twice a day I would say, so I soon collated a decent data set.  

My thinking was that, this metric may inform me of spikes in the execution time, which could potentially be a performance issue, or a performance increase that someone may want to know about.  

Did it work. It did, in that it found two issues. The first issue was actually related to the product. Some of the SQL statements had been refactored, with the aim of improvement, but sadly the opposite was seen. Now sure, on reflection we should have had other ways to have found this issue put we didn't, and reusing an existing artifact allowed me to find it.  

The second issue, was caused by me! :D  

I refactored some of my selenium code, and updated the version, and well it didn't go well, the execution time increased by 50%. Turned out I'd written some sloppy code, but also the release had a bug in it, which I was able to find, due to my spreadsheet informing me.  

So I'm not telling you that you should do all your performance testing using the build execution time, that would be ridiculous, especially in 2016, but keep your eye on your build time, and specifically each component of the build, it may be waving a big sign at you, requesting you take a closer look. Plus, most of the CI will visually show you this data these days.  

### Assertions  

"Expected true, but was false"  
"Expected 6, but was 5"  

I'm sure, just like me, you've all seen some similar failed assertions. Stop writing them. All the test frameworks I've used now allow you to pass in a message, use it!  

So in the above examples, what was expected to be true? What was expected to be 6? A simple contextual message in the assertion can really speed up the debugging.  

"I was expecting the number of users to be 6, but it was 5". A simple String.Format can achieve this.  

Now some would argue that the name of the check should provide you some information on what the assertion relates to, sure I've seen that, but at the same time I don't think it does any harm to add a contextual message to the assertion. I know it's personally saved me a lot of time in debugging failed checks.  

### Tell me all you know  

A common practice I see, is getting your Selenium checks to take a screenshot on failure. A nice pattern, the screenshot can be really useful in understanding the problem. But most applications have a lot more to offer you.  

Take advantage of the code that the Selenium projects offers you. Hook into the event listeners to write things out to the console. Give the robot a voice. "I clicked button <locator>", I typed "name" in to element <locator>. "I waited for X seconds for <element>". These tell the story of the check, again all this speeds up the debugging process when they fail.  

Application specific, does your application have log files? If so, get the failed check to pull those down to a central location, so you can quickly refer to them when debugging, instead of having to go and get them manually. I did such a thing, a nice trick I added was to only get a specific window, I used the time noted at the start of the check to determine this. Saved a lot of time traversing log files.

Also other application specific things may be useful, such as the user you may be logged in as. The version of the application being checked. The environment they were being executed against.  

### Why does nobody love me?  

"I never get an attention, I'm lonely". Alright, I agree that's a weird thing for your automation to tell you, but what I'm getting at is, when was the last time this check was changed or had its value reviewed.  

I've done it, I've had checks that lasted the whole duration of my employment before, I never looked at them, they were green, all gravy. Michael Bolton wrote a nice [piece](http://www.developsense.com/blog/2015/07/on-green/) on green. However, this doesn't mean this check was returning me any value. With not reading it for so long, I probably couldn't have even told you what it was checking.

So get the automation to tell you. You could put a date stamp on each check, which you could then write a simple script to read over and flag any that are > X days/weeks old. You could use your version control tool to see when the last commit was.  

The point being we should only have automated checks that are returning us value, so in my opinion for that to be the case, we should be regularly reviewing them, so we understand their value. This could just be a nice way of letting them help us with this process.  

In the context I used this in, I opted for the source control approach in the end, I never ended up deleting any checks, however I did extend some to check more than they originally were. The best thing I got out of doing this though, was the regular review. When discussing risks on the project, all the checks were fresh in my mind, so I was able to mitigate some risks because I knew that we had some coverage from the checks, allowing me to plan my additional testing accordingly. 
 
### Conclusion  

Think about what else your automated checks could be telling you, think about the data they produce that could be really useful in guiding your testing.  

So there we have it, sorry it was a bit long. I hope it was an interesting read.  

If you've extended your automation to tell you more than just pass and fail, I would be keen to hear about it. I may write some more examples up in the future, but these were the main four that initially came to mind.