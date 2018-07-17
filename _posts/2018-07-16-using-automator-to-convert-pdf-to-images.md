---
layout: post
title: Using Automator on a Mac to Convert PDF to Images
date: '2018-07-16T14:23:39.450+01:00'
author: Richard Bradshaw
description: "How to convert a multiple page PDF to separate images"
categories: 
- Automation
- Automation in Testing
tags:
- Automation
modified_time: '2018-07-16T14:23:39.450+01:00'
permalink: /2018/06/using-automator-on-a-mac-to-convert-pdf-to-images
comments: true
---
So, I'm currently editing some videos for a conference that Ministry of Testing sponsored, this is a great new initiative which I'll write about on MoT soon. Now, I've never edited conference videos, but I've recorded and edited lots of training material for YouTube and The Dojo, so, I wanted to give it a go, to see if I can learn more about Camtasia and the process as a whole. I didn't expect to find myself creating some awesome automation to help me, but I did!

Today I discovered, [Automator](https://support.apple.com/en-gb/guide/automator/welcome/mac) on MacOS. I'd never heard of this before today, but it's provided by Apple and it allows you to create your own little apps/batch jobs/workflows on MacOS by combining existing functions available in MacOS applications. If you have a Mac and never explored this tool, I encourage you to open it and take a look, you could create some really interesting workflows.

### PDF to Images
I discovered this tool while googling a specific issue I was facing, which was converting speakers slides in PDF format to Images, so I can edit them in to the video. I knew I could export a page of a PDF to an image using Preview, however, it does one images at a time, not great when someone has 40+ slides! Lot's of commercial tools came up in my results, but as this is currently a one of for me, I didn't want to pay for something. Then I found [this post](https://www.alananna.co.uk/blog/2015/pdf-to-png-automator-script/) explaining how it could be done using Automator.

I copied the instructions as per the post, it is as simple as dragging and dropping the functions you require, changing a few of the options and saving it as an application. I now have an app in my Apps folder called PDFToImages.app, which I can drag a PDF on to, it then opens a file dialog where I can choose where to save them, and boom, it does them all, and takes less time than it took for me to export a single page! Whooop! This is the kind of automation I love!

### Final App
![The final script in Automator](/images/blogpostimages/pdftoimages/thefinalscript.png)

### Future
I have another three talks to edit where the slides are in PDF, so this will provide me with a lot of value today. Not sure when I'll need such a tool in the future, but that isn't important. It's saved me nearly 45-60 minutes today, plus I'm aware of a new tool that will be in my toolbox for future problems I may face.