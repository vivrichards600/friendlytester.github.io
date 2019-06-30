---
layout: post
title: New Whiteboard Testing Video - S.A.C.R.E.D
date: '2019-06-30'
author: Richard Bradshaw
description: "A new Whiteboard Testing video on SACRED, a mnemonic for automated test|check design."
categories: 
- automation
- automationintesting
tags:
- testing
- automationintesting
- automation
modified_time: '2019-06-30'
permalink: 2019/06/new-whiteboard-testing-video-sacred
comments: true
---
After a long while I've finally recorded a new Whiteboard Testing video!

For those that haven't seen it before, [Whiteboard Testing](https://www.youtube.com/channel/UC0QZWhi0ojqNte3ey7RD0qQ) is a YouTube channel I created to host sub ten minute videos on software testing/quality utilising a whiteboard. We've had over 63,000 views on the videos!

This video is about my mnemonic S.A.C.R.E.D which I created to assist in teaching others about all that's needed to create deterministic and stable automated tests/checks. 

<div class="centerplugin">
{% include youtubePlayer.html id="z9m_yZMswOQ" %}
</div>
<br>
## S - State Management
All about managing the state of the application. This includes deploying the system, configuring it, setting feature flags and of course setting up all that important data!

## A - Actions
The actions you need to take to trigger the specific behaviour of the system. This could be clicking around a UI, filling in fields or waiting for elements. Or, this could be calling APIs with specific data in a specific order.

## C - Codified Oracle
Those familiar with exploratory testing with be familiar with oracles, those that aren't, it's how we detect problems. Triggers to asks ourselves, is there a problem here? We have thousands of them in our heads, however, in an automated check we tend to codify one of two of them, known as assertions. They are really important to get right, to maximise the value we get from our checks.

## R - Reporting
The reporting takes on two forms in SACRED. The first is for reporting the results of your checks. Do you need to hook into a CI, a test management tool or something like Slack? The second side of reporting is getting your automated check to report as much as possible about failures to you. Such as log files, screenshots and decent error messages.

## E - Execution
Where are your checks going to be executed? Have you designed them to work there? We often focus on getting them working on our local machine and overlook where thwy will finally be executed. This triggers us to think about this.

## D - Deterministic
The goal! Automated checks need to be deterministic, they should do exactly the same thing over and over again. Pair that with a fantastic codified oracle and you should have a really valuable automated check. 

I'll be writing about each letter in more depth on the [Automation in Testing](https://automationintesting.com) blog in the near future.

If you enjoy the video, consider subscribing to the channel.