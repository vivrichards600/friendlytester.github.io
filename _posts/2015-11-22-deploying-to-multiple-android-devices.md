---
layout: post
title: Tackling Android Deployment Using ADB and Appium
date: '2015-11-22T20:46:00.001Z'
author: Richard Bradshaw
tags:
- appium
- android
- automation
modified_time: '2015-11-24T10:47:26.218Z'
blogger_id: tag:blogger.com,1999:blog-8318661666872903125.post-2525357763671950928
blogger_orig_url: http://www.thefriendlytester.co.uk/2015/11/deploying-to-multiple-android-devices.html
permalink: /2015/11/deploying-to-multiple-android-devices.html
---

### Problem

It's taking me a bout 10 minutes to update all my Android devices each build. Sometimes, I have 3-4 a day, so that's 30 minutes I am not testing. Also, installing the app is really boring. Then I have to log into to the app on all the devices.  

This was the problem I set my self, I solved the problem multiple ways in the end, a journey I felt worthy of a write up.  

### State of play

We are currently putting new .apk files in dropbox/google drive. Then I either install that apk via Android Debugger Bridge (ADB), or I use dropbox/google drive on the device and install it straight form there. Then I proceed to log into the app on all the devices. As mentioned above, it takes me about 10-15 minutes to do all the devices, it's rather boring.  

So I thought, there must be an easier way to do this. So I explored, and created multiple ways, so here goes.  

### Bash Command

My thinking went a little like this, if I can use ADB to install the apk via the Terminal, surely I could connect multiple devices, create a loop, and install many at once? Seems sensible. Turns out you can. So I brought myself a 4 port USB hub and turned to my best friend, Google.  

After a few minutes googling, I stumbled [across this](http://stackoverflow.com/questions/8610733/how-can-i-adb-install-an-apk-to-multiple-connected-devices) command:

{% highlight bash %}
adb devices | tail -n +2 | cut -sf 1 | xargs -I {} adb -s {} install <Path to apk>
{% endhighlight%}

In short, and I am no bash expert, this command takes the response from "adb devices", trims the response to just get the device names, then runs "adb -s install <Path to apk> on all the results.  

Fantastic, I could now install the app on as many devices as I could connect to the laptop. 

But what about opening the app and logging me in? Well I knew I could start the app using ADB, I had seen such a command appear in Appium logs when I was using that in the past, so again, a quick google and I had the appropriate command:

{% highlight bash %}
adb shell am start -n com.package.name/com.package.name.ActivityName
{% endhighlight%}

Of course replace the package name and activity with ones for your app. If you don't know them, ask your Android developer, they will know for sure. 

So we are on a roll now, 15 minutes in, and I can now install and start the app on as many devices as I can connect. Excellent. 

So what about logging in? Well unfortunately, that isn't possible via ADB, unless I was able to write some code to interact with the UI, compile it, and send it to UIAutomator, hmmmm, sounds very much like what Appium does.  

### Appium

So I've used Appium a lot in the past, not so much these days as I don't believe UI checks are worth the investment on mobile, the tools, including Appium, just aren't mature enough yet. That isn't the tools fault, the platforms themselves are only around 5 years old, think how long it took for browser to be stable enough for automation? Some would argue they still aren't.

But I knew in theory what I wanted to do, was perfectly feasible in Appium. So I set about making it happen. 

Here is an insight into my approach for this. I knew what I wanted to do, so I wrote that out as code comments, like so:

*   Find out how many Android devices connected.
*   Get there IDs
*   Start Appium
*   Run a script that installs the app, starts it on all devices
*   Get the Appium to log me in

So I knew that ADB would tell me how many devices were connect, so I needed a way of executing a bash command from Java, again, hello Google. Discovered multiple ways of doing it. I could then read the output of this command. Then as per the ADB command from earlier I needed to trim the responses so that I was just left with the devices IDs. 10 minutes in, first two steps done.
  
So, as Appium is based on the same API design as WebDriver I knew how to create a AndroidDriver and pass in the device ID and path to my .apk, I also knew that Appium would attempt to launch the app for me.  

Then I also knew, that I needed to tell Appium which activity to wait for, again if you are not familiar with activities in Android, I suggest reading about them. Then I just needed to automate the login screens and job done.  

So I had been going, about 30 minutes now on my Appium implementation, all was going really well, then things took a turn. It turns out each Appium server can only have one active session, meaning that it can only interact with one Android device, I am not sure why this is, potentially something to do with ADB connections, I am not sure. This was based on me actually trying it, it failing, googling a bit, and seeing others complain of the same problem.  

### Appium Workaround

So I needed to find a workaround, some of the responses on Appium's Discuss site, suggested a quick solution, this was to start multiple Appium servers, essentially one per device. Well as above, I knew I could send commands via Java, so surely I could just do the same for starting Appium? Turns out, you can. However, they appeared not to have access to all the alias set on my machine, specifically, ANDROID_HOME which was causing issues for Appium. Sigh.

We are about 45 minutes in at this point, and I came across this excellent code example by Prithivi on this [discuss page](https://discuss.appium.io/t/launching-and-stopping-appium-server-programmtically/700/17), this appeared to do something different, I am not 100% sure what the difference is, one observation, is that I can now see the Appium console within IntelliJ so I am guessing it runs the command line arguments within the context of my application, not sure, and right now, it's not that important to me. 

But it worked! I could now systematically start Appium servers. I was now able to start an Appium server per device. Now, in order to do this, you need to set a different port for each server. So looking back over what I had so far, I now had two parameters per device, device name, and a port. So I decided to create a device object, incorporating those two values, so I can pass these objects around.  

Update: Copy and paste error from an old project of mine, I since updated the solution to Appium Java-Client 3.2 which comes with ApiumServiceBuilder support, so the above solution is not superseded and far easier using this, I will update GitHub repo. 

### Improvements

Right now this tool, is a huge leap for me, and already a week in, it's saving me a substantial amount of time. However I can see some improvements in the pipeline already.

*   Can I thread/parallelize the Appium call, to make it do all the devices in one, currently is sequential.
*   The apk file is currently hardcoded, seeing as we have a naming convention for them, could I pull the latest .apk from Google Drive to make it dynamic. 

### Conclusion

So all in all, this was about two hours of work (additional time comes form creating the login code), but I do now have a tool where I can deploy and login on multiple devices. 

I uploaded the basic code I "[stole](http://csstwp.com/)" and wrote to a [GitHub repo](https://github.com/FriendlyTester/AppiumAndroidDeployment). I don't proclaim to be an excellent programmer, so if you like this and can improve it, please do, I would love to see it. 

### Insights

I posted this blog for a few reasons. The first being that, I think this is an awesome tool. A fantastic example of what I (and others) try to tell people about automation, it's not about trying to automate checks all the time, identify a problem and attempt to solve it.  

Secondly, it's OK to [steal](http://csstwp.com/) other people's code. Just don't try to pass it of as yours on a public repo/blog, thank the other people. But off the back of that, take advantage of the knowledge that is out there. Google all the things. Look to the issue and discussion pages for the tool you are using, especially with open source tools. 

Finally, I wanted to reflect and share how I approach such problems, hopefully some of that came across.  

Thanks for reading, be very keen to hear from others who use this, or have other solutions. 