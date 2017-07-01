---
layout: post
title: A Simple File Locker
date: '2013-05-17T11:32:00.001+01:00'
author: Richard Bradshaw
categories:
- Automation in Testing
tags:
- Automation
- Tools
modified_time: '2013-05-17T12:17:14.919+01:00'
blogger_id: tag:blogger.com,1999:blog-8318661666872903125.post-5026959054289246931
blogger_orig_url: http://www.thefriendlytester.co.uk/2013/05/a-simple-file-locker.html
permalink: /2013/05/a-simple-file-locker.html
---

I was doing a project that I will share will you all soon, and was running into an error whereby SpecRun was complaining to me that a file was locked by another process.  

So I wanted to recreate this scenario and debug it to see what the problem was, so a quick Google on how to lock a file returned some strange results relating to securely locking a file with a password etc, a quick look on stackoverflow only resulted the code to lock a file.  

So thought it would be quicker and simpler to write my own simple app to lock a file, and you can download it [here](https://docs.google.com/file/d/0B11AaEUdgzxgYldxb0dGNEROT28/edit?usp=sharing) (Click File>Download), its uploaded as a text file so you will have to rename to .exe in order to run it.  

A few examples of where this application could be of use to you:-  

*   Does you application write to a log file? If its threaded does each instance write to same file? Have the developer coded it to ignore locks? Use the app and find out.
*   Instance I had, several instances were trying to read and write to the same config file, was clearly a race and some instances lost and throw an error.
*   Upload dialog, see how your application behaves when trying to upload a locked file.

And no doubt lots of other uses.

Enjoy.