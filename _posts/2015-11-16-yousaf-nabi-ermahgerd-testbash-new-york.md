---
layout: post
title: Yousaf Nabi - Ermahgerd TestBash New York City Y'all
date: '2015-11-16T21:47:00.003Z'
author: Richard Bradshaw
categories:
- Conferences
- Community
tags: 
 - Community
 - Competition
modified_time: '2015-11-16T21:49:07.232Z'
blogger_id: tag:blogger.com,1999:blog-8318661666872903125.post-7038730230116677357
blogger_orig_url: http://www.thefriendlytester.co.uk/2015/11/yousaf-nabi-ermahgerd-testbash-new-york.html
permalink: /2015/11/yousaf-nabi-ermahgerd-testbash-new-york.html
---

So about a month ago, a ran a competition to win one of five tickets to TestBashNY. Part of the deal of entering the competition was that, if you won, you would agree to write a short post/article about your day at TestBashNY.  

Here is Yousaf Nabi talking about his TestBashNY experience. You can follow Yousaf's future journey on twitter [here](https://twitter.com/YOU54F)  

---

5am Wednesday morning and my alarm rouses me from my blissful slumber. I fumble around for the snooze button and nuzzle my head back into my pillow. 10 minutes later and my eyes open again to an Englishman’s morning vice, a steaming cup of tea graces my bedside cabinet. (Thank you Helga!)  

For those who know me, will know that 5am has been my bedtime more often than its been my wake up call, so to arise at this ungodly hour, it must be something awesome. Nope, its not a car show (for once!), its TestBash. For those who aren’t aware, TestBash is a unsurprisingly awesome testing conference usually held in Brighton, but for the first time it crossed over the atlantic to be held in New York City.  

An uber and train ride later, I find myself on board AA2201 bound for NYC. Now we all know about the time differences when going across the pond, and the key advice from all those I spoke to was, sleep during the flight so your refreshed when you arrive. Sleep, baaaah humbug. I’ve got a test suite for build for a new node based API that is currently under development. A true tester never switches off, after all its a mindset not a job! (More on my fumblings through the world of greenfield projects in an upcoming blog post).  

So with my first day free, I spent it wandering the streets of New York in 21 degree heat (there goes the winter clothing!) and made some observations of which I feel it pertinent to share, if only to get a little insight into my brain.  

1.  People don't queue, or get annoyed when people push to the front. How??? 
2.  No one cares about the police. People just cross the road in front of cop cars with sirens on, totally nonchalant about it too.  
3.  Pedestrians think they have two wheels since they all walk in the cycle lane. Cyclists don't mind - why so polite? I'd be raging.  
4.  There don't seem to understand steak sauce - what the feck is A1 sauce?  
5.  There are no kettles in hotel rooms. How is an Englishman meant to have his tea?!  
6.  I am jealous of every house in the suburbs as they all have mahoosive garages.  
7.  Taco Bell didn't live up to my expectations. (I forgot that I ate Taco Bell at the Arndale in Manc and felt the exact same way) 
8.  Generally everywhere is pretty grotty and dirty. NY certainly scrubs up well in the cinema.

### Day 2 – Workshop Day.

After a brief walk to Baruch College, I transcended the elevator to the 14th floor to be greeted with some happy faces wearing Ministry of Testing. WOOHOO, I’m in the right place, and OMFG they have tea. Morning sorted, now for some “Test Automation & Continuous Integration at scale with Dr. Jess ingrassellino & Noah Sussman.  

The day kicked off with a backstory of how Jess & Noah came to be where they are, and a disclaimer to state that they are not professional speakers, but the well attended room was very receptive. Everything is better when it’s a bit rough around the edges :)  

After a brief dialogue of the pain-points of automation testing, it became clear (as we were running out of whiteboard space), that there are a lot of issues out there, which affects software testers of all walks from all industries. The pain is universal, which can only mean that where people have succeeded building successful automation, that we can learn from their achievements to help each of us in our respective jobs.  

The future talk by Tanya Kravstov from ROKITT at the main conference would lay testament to that. I subsequently fed-back to Jess that some of Tanya’s high level points would have been a good structuring and discussion points for the test automation portion of the talks.  

Noah broke up the discussion with his sand-pile game, which was analogous with system building & change management. It was very interesting, throwing up lots of varied conversations about the various ways of implementation and the risks of each, much like the real world. One of the take home lessons from that was, if you plan ahead and plan well, and accept that there is allowable level of loss, you can provide far greater coverage (near full coverage) and have a relatively non-complex system. I do have to admit that I found a defect in the game instruction slides and could not stop myself telling someone. I’ve never been very good at keeping secrets either =/  

Noah then went on to discuss his devOps experience, and although some of us attending have devops departments who already implement graphite/grafana, I had never considered how it could be used as a testing aid in CI for providing monitoring and quick feedback loops. Coupled with a raspberry pi and a monitor, I now have the initial knowledge to allow me to output metrics directly from the code within my test suites, which even for the purposes of debugging will be so useful in my day-to-day job.  

I’ve jotted down some of my notes below, mainly because it’ll help me when I come back to implement it in the new API suite I’m testing. If anyone wants to explain any of the points further, please ask me, or indeed Noah S. as I’m sure he would be very happy to talk about his experiences.  

Some command line techniques for log trawling  

*   Download your log
*   http://ita.ee.lbl.gov/html/contrib/NASA-HTTP.html
*   Unzip your file
*   gunzip NASA_access_log_Jul95.gz
*   Word count on the log
*   cat NASA_access_log_Jul95 \| wc –l
*   wc -l NASA_access_log_Jul95
*   Echo to the command line, all the log lines with 200 in them.
*   grep ' 200 ' NASA_access_log_Jul95
*   Echo to the command line, a count of the log lines with 200 in them.
*   grep ' 200 ' NASA_access_log_Jul95\| wc –l
*   grep -c ' 200 ' NASA_access_log_Jul95  

Example code to publish data to graphite  
*   Example pseudo-code that will execute your log trawl on the command line
*   echo $(wc /-l NASA_access_log_Jul95)
*   echo $(cat NASA_access_log_Jul95 \| wc -l)
*   Extend the above by adding a timestamp
*   echo $(cat NASA_access_log_Jul95 \| wc -l $(date +%s)
*   Extend the above by sending it to graphite as my.nasa.metric
*   echo my.nasa.metric $(cat NASA_access_log_Jul95 \| wc -l $(date +%s) \| nc graphite 

Some take-home points from the Noah’s talks:-  
*   Piping to \| nc graphite we can publish metrics to graphite for consumption.
*   You can do any amount of pre-processing to the data before publishing it to graphite.
*   You can put this all over your test code, you can limit the extra traffic it will generate later.
*   You can put statsd in between your code & graphite in order to choose only certain amount of requests to sent to graphite and additionally aggregate stats from several sources (ideal for load-balanced systems).
*   You might not need every message, or want every message (think DDOS).
*   Use UDP for messages as it is not stateful unlike TCP.
*   You don’t want your code waiting because it’s waiting on an ACK.
*   You can use XARGS to build up a list of commands which can be run concurrently
*   The following example that will execute the following command as 24 concurrent processes (but it could be your PHPUnit tests etc)
*   cat NASA_access_log_Jul95 \| xargs -P 24

Regex – If you aren’t using it somewhere in testing, then you probably should be. Once you get the hang of it, the possibilities are endless. From testing fields in an API response (dates for example) to grepping your logs to pull out all sorts of information to suit your particular needs. It’s a skill not many people have really mastered yet. There are some great tools out there that I use to aiding me in my regex.  
*   [http://txt2re.com/](http://txt2re.com/) - Build regex from an input string
*   [https://regex101.com/](https://regex101.com/) - Test your regex

I love them both and use them a lot. Glad to see Noah was also a fan of regex.  

Overall, the scope was huge and there was so much to cover, which was probably unfeasible for a single day workshop, but it was thoroughly enjoyable, informative and useful. Massive thanks to Jess & Noah for taking the time to run the workshop. You guys did great :)  

### Day 3\. TestBash

First off, how freaking cool was it to see TestBashNY text up on the on the gramercy theatre billboard. I bet Anna & Rosie were properly made up.  

Secondly, never seen so many testers in one place before!  

It was amazing to see such a diverse range of people from all over the world and that they had all taken time to either attend, participate or present.  

I could talk for days about the thought-provoking, engaging and funny talks that everyone put on, but I hear they will be available on the Ministry of Testing Dojo as eye-candy for your pleasure. You lucky people, as they were all brilliant, I would definitely recommend checking them out on your lunch break, while you work, while you poop, wherever!  

The whole event showed me that the testing community is in great shape, with many proponents from which I have been inspired to do the same. It came at the right time in my career, where after 10 years of breaking stuff daily, I was feeling a little lost. Knowing that this bubbling cauldron of knowledge is there at my fingertips is a great help and I know that I can help add value from all the pain I have endured over my time in testing.  

Sometimes it feel’s like you’re the glue that holds it all together, if only to be the gatekeeper. I remember the days I used to be reluctant to take holidays for fear of renegade developers with specification allergies running amok. It makes me laugh whilst reminiscing but it was hectic at the time and my mouth was rather colourful to put it nicely.  

So with that new found enthusiasm, I am going to get more involved with my local testing community bringing testing into the focus of the wider technological talks we hold at Sky Betting & Gaming. I’d love to open an invite for any speakers in the testing community to present, and anyone to attend.  

It’s been one of the visions of our company to be one of the best digital companies in the UK and we believe that becoming a technological hub is part of that. Testing hasn’t really had much focus in our past meetings so I am definitely seeking to redress the balance but I can’t do it without your help. Who knows, we may be able to hold a TestBash up int’ Yorkshire. Pie’s n Pea’s at the ready.