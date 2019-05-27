---
layout: post
title: How I Get Technical Workshops Up and Running
date: '2016-10-16T17:49:00.000+01:00'
author: Richard Bradshaw
categories:
- Community
- Conferences
- Training
tags:
- Community
- Conferences
- Workshops
modified_time: '2016-10-16T23:18:30.416+01:00'
blogger_id: tag:blogger.com,1999:blog-8318661666872903125.post-8158439064112224212
blogger_orig_url: http://www.thefriendlytester.co.uk/2016/10/how-i-get-technical-workshops-up-and.html
permalink: /2016/10/how-i-get-technical-workshops-up-and.html
comments: true
---

<blockquote class="twitter-tweet tw-align-center" data-lang="en-gb"><p lang="en" dir="ltr">The first hour in most technical workshops is a slight mess with setups. Does anyone do this really, really fast and what&#39;s their secret?</p>&mdash; Maaret Pyhäjärvi (@maaretp) <a href="https://twitter.com/maaretp/status/783931493190144000">6 October 2016</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>


A few days a go I saw this tweet from Maaret. At the time of reading it, I felt I was at 100% success rate with technical workshops. I had the formula.  
I stated on Twitter that I would write about the *formula*. Then last Tuesday happened.

Last Tuesday, I visited a client to do some internal WebDriver training, and well lets just say, it didn't go to plan. We adapted the plan until lunch, then throw all the plans out after lunch and did something completely different. I'm fortunate to have alternatives at my disposal and be comfortable enough with my knowledge to deal with it, others may not feel the same.

So I'm going to write about some of the approaches I've taken in order to get technical workshops up and running faster, allowing us more time to actually learn.

### Virtual Machines (VM)
I haven't used this approach for a while. In fact, I only ever tried it once. However I know several people who swear by this approach. Simple concept, create a VM with all the dependencies on it. Have the attendees download a specific VM client, distribute the VM image, set-up the image and off we go!

My class didn't go to plan. Peoples machines were not powerful enough to run a VM. They got the VM up and running, but interacting with it was painful. Like using IE on 56k modem painful, or watching AOL connect back in the day painful.

Now, other issues I've seen with such approaches, is distributing the image. These images can be big files, some into the GB's depending on the operating system. So downloading them in advance is an option, but could be a slow, data consuming process for some. If they don't download them in advance, it's time to pray to the conference wifi while someone, or several people, download this image. Or, we distribute the image on USB pens, an option not all would be comfortable with, given the security concerns of flash pens.

My final issues with a VM is that in some context, the actual process of setting up the environment is important, especially if a student intends to take their newly found skills forward and use them at work. They will no doubt have to set up an environment, and by using a VM, they won't know how to do this, or not all of it. Easy for the trainer to mitigate by providing a environment setup guide, but I've only had one person do this.

### Docker
It wouldn't be right to talk about VMs and not include Docker. Now, let's be clear I'm not stating they are the same thing, they are not. However one use of Docker I've tried on a course I teach with Mark Winteringham is to *dockerise* the test application. So we ask attendees to install Docker, then we distribute the container. This is because the application is not our focus of the training, it's just the vehicle. We took this approach, as the application has several dependencies, rather poor instructions to deploy, but more importantly, was quick to get up and running. We'd also taken the approach to *dockerise* the application for our own deployment to AWS, so was a bonus really.

So I would recommend containers for a test application. But they don't really work for tools that the students are going to interact with, because you cannot get in side them as easy as a VM.

Going to move away from tools now and talk about approaches I've taken, prior and during the class.

### Advanced Prerequisites
Send the students a list of prerequisites as far in advance as you can. Not always easy, especially if using certain tools, as new versions could be released during that window. So be aware of that.

These prerequisites should be more than just a list of tools. Where possible include installation guides or at least link to existing ones. Give the student as much support as you can. Consider writing a list of instructions, referencing specific guides for tools if required, giving the student something to follow.

Checklists. Provide a checklist for the user to run through to ensure they have all they needed. For example, at the end of installing all the prerequisites for a Java WebDriver class, you might instruct a student to execute *'javac -version'* in the console, to ensure the JDK was installed successfully.

I've more recently taken to recording a short video that students can follow. Details where to find the prerequisites, downloading them, installing them, and checking everything is as expected. It might seem like overkill, however it's something I was doing before each class to check my own environment was prepared, so recording it wasn't much more work.

Now, some of you will would have been reading that, with a little voice in the back of your head saying *'but no one ever does them Richard!!!'*. True, there will always be a few people who don't. My only advice here is to ensure they get your message. So ask students to respond to tell you they have received your email, allowing you to chase those that don't respond in the run up to the event. Another additional you can take is to give students a way of informing you they have indeed done it. This could be a simple email, or a Google spreadsheet/form where they can tick their name of.

Also, stress the importance of these to the students. They allow the class to get up and running faster, meaning we can all maximise the time we have together.

Finally, make yourself available to help debug students before the class. I've only had to do this a few times, but it really did make the class go smoother on the day. Helped my focus, and importantly started all students on the same page, keeping the flow going.

### Pretest with your contact
This advice is more related to internal client visits, and one I received recently from Alan Richardson. Arrange a call/hangout with your contact at the company, and do a pretest on their machines. So instruct them to run the prerequisites, but they have a call to distribute the specific code for the class and ensure they can compile and run it.

This would have saved me recently, as installing prerequisites was all good, however when it came to actually import the project, it turned out the clients internal network blocked all maven calls, meaning none of the dependencies could be downloaded, something I wasn't prepared for.

### Start immediately
Both internally and public events, I tend to get to my room 30-45 minutes before I need to. I like to get my machine set up, the desk how I like it, and just get a general feel for the room. This is also the case for some students. In my experience students tend to arrive 15 minutes or so before the official start time of classes. I like to take advantage of this time.

I will ask those who arrive earlier if they have downloaded all the prerequisites and have everything set. If someone says no, I can now try and get them setup in the *free* time. By free, I mean it isn't going to eat into the class time. This isn't always an option, but it's one I like to take advantage of if it arises.

### Class support
When running a class, especially at a conference, I like to gauge the level of the students. As there is usually someone who has experience with the environment, tool or programming language. If I do believe I've found someone, I will approach them to see if they are willing to help me with getting people setup. Then can be incredible valuable to me, the class, and them as it will speed us up in getting to the fun bits!

### Backup plan
Have a back up plan. I could end it there, but let me elaborate with some experiences. Wifi Internet... as we all know, it can be very hit and miss. So if your class requires access to a specific site, and the Internet goes down, you're a bit stuck. So if you have control of the application consider ensuring you can run this site locally. This could then allow you to turn your machine in a hot spot and have people connect and use an instance running on your machine, instead of using the www.

Another option is to have some theory activities ready, which you can get students to work through, while you try and resolve issues. Visualisation tasks work great for this. Or a retrospectives on what's been covered this far.

Have installations, remember to include all operating systems, on a USB pen ready to distribute if the Internet has gone. Of course this comes with the risks mentioned above.

### Pairing
If someone is really struggling with their environment/laptop, see if someone in the class is willing to pair with them. This can be a great way to keep the class flowing. Then at a break or lunch, you can then work with the student on the machine to see if you can get it up and running for them.

Pairing also comes with multiple other benefits which lots of people have written about.

### Your machine
If pairing isn't an option, I've actually given my machine to a student before. This works well in a show and tell then practise format. In the instance I did this it was a class where we were exploring how to use proxies with your mobile device

Not always a valid option but one to consider.

If you have multiple laptops, this could also be a possibility. Give the student a spare machine. I personally don't have a spare, but some of you might!

### Stay after the class
I still like to work to the principle that every attendee of my classes will leave with working/running code on their machine. So with that in mind I always try and ensure that I'm free immediately after my class. I do this anyhow for questions etc, but even more time to debug a machine if needed.

### Post the class, conference
I like to say that my classes come with life time support. So I do. And I mean it. Funny how very few people take me up on this. Anyhow, what I mean is, if we were still unable to get a machine or something up and running, I will give them access to me post the event. This could be my email, Skype or hangout etc.

So the student can work on the issue in the own time with my support. Or, when they have got their environment working they may want to re-run through specifics from the class, I'm always happy to do this.

### Videos / Handouts
Another back up plan is to have a video(s) or handout(s) of the activities available for attendees post the class. This is especially useful when talking over code, or explaining how to use a specific tool. Allowing the student to work though the material again in their own time, pausing where they need to.

### Summary
Technically workshops are hard. They are more complex by the very fact we have to use laptops. However we can do a lot to make this easier, however a lot of it requires work prior to the event. However as a teacher of technical classes I feel we have to go this extra mile.

If I design a class on a specific tool I want to ensure I can teach about that tool, not spend the first 0.5-2 hours battling admin permissions or other common issues. I want to teach the class.

If you have any advice on the above, or other ways you try to ensure the smooth running on a technical workshop, I would love to hear it.

Thanks for reading.