---
layout: post
title: Ten Insights From My Blog Migration
date: '2017-07-04T20:58:39.450+01:00'
author: Richard Bradshaw
categories: 
- Community
- Blogging
tags:
- Community
- Blogging
modified_time: '2017-07-04T20:58:39.450+01:00'
permalink: /2017/07/ten-insights-from-my-blog-migration
redirect_from: "/2017/07/ten-insights-from-my-blog-migration/"
comments: true
---
So unless this is your first time visiting my blog, if it is, welcome, you'll have noticed it looks a bit different. I've recently migrated my blog from Blogger to Jekyll hosted on GitHub pages. I asked on Twitter if anyone would be interested in the journey, the response was positive, so I started writing. 60 minutes in and 3000 words later, I wasn't happy. It had turned into a guide, it sucked. Well, that's harsh, it didn't suck, it was an awesome guide, the start of one anyhow, but not really useful to the people who read my blog and it wasn't really challenging me either. So I've decided to change tac and write the top ten takeaways from migrating my blog.

### Open Source is Incredible
Is that really a new insight for you Richard? No, it's not. However, what this process did do is give me a reminder of how incredible the open source community/movement is. In my little bubble of testing and software development, it's all too common to expect there to be an open source version of a tool you've seen or to expect someone to have created the tool you think of. The movement is far beyond that now. I remember in the past looking for a theme for Blogger, and they were all awful. The nice ones cost. It was the same when I checked out WordPress a few years ago. Now don't get me wrong, it's fine to charge for your work, but it's great to see a large number of Jekyll themes available online and open, and I'm sure if I looked again I'd see more for Blogger and WordPress.

It's kind of satisfying now to know that my blog code is on GitHub, sat there ready to be forked if anyone was inclined to. I also ensured to list the to main repos I took the majority of the code from. I've tried to make a conscious effort to share code over the years, however, it's something I should do more of, and will be aiming to do over the coming years. 

### Arghhhh CSS
CSS is magic! It's a dark art. But, with the right tools and some good googling skills, it can be tamed. Aside from being a master of CSS Selectors, my CSS skills were weak.  
I was naive. My initial plan of attack was to use Chrome Developer Tools, inspect the element I wanted to change, find it's class, find that class in the code base, change the values, job done! Actually, that was my second plan of attack. My first attack was to do a mass replace all :D, it didn't work. Mostly because of the colours used in the original design. The designer has used _black_ in places and hex codes in other places. So when I did a replace all of black to blue, lots of things changed I didn't want to, one of those being the text colour of the blog contents. So a second plan was required. 

My first true finding related to CSS was the fact Chrome told you what line in the CSS file the styles were coming from, this proved an invaluable observation. It made making my changes a lot easier and was a lot quicker to find than searching for the class name in the various CSS files. My second finding was to expand/Beautify foundation.min.css file. It had been minified, so the whole file was two lines long. So when I looked in Dev tools it was always on line two, not useful, and doing a find was hard work also, with just this mass of text. So I downloaded a plugin for Atom called 'Atom Beautify' which takes many file formats and makes them beautiful! In the context of CSS is put each class onto its own line along with each style on their own line, so inspecting styles in Dev tools from foundation.min.css became a whole lot easier.

The biggest troubles I had with CSS were around padding and width. I was hacking my way through, change a value here a value there, see what it looks like and repeat. I was learning each time, but without structure or knowledge or why it was working. So I took the time to learn them, mostly from [W3C Schools](https://www.w3schools.com/), and spent 30-60 mins making noddy little web pages moving and arranging different elements.  
Sometimes it's enough to try, then hack and eventually get there. Other times it's quicker and more beneficial in the long term to dive into an area a bit and then return to the task.

I'll conclude with, CSS is magic! It appears to have logic and reasonings to it, it doesn't, it's magic!

### The Power of the Local Environment
For the first few days of hacking away on this blog, I kept pushing to GitHub and then going to my GitHub page to see the results. GitHub pages are very quick to deploy but I started to feel this wasn't the best approach, especially pushing code into my repo I hadn't tested. So I did a bit of googling and was able to get Jekyll up and running locally. It's actually really easy, I should have done this initially.

This really sped up my work. I was able to get Jekyll to watch my files, so as soon as I made some changes it would regenerate without any input from me. It also allowed me to test my work, and made making little CSS changes a lot easier. It also allowed me to work on the train!

Another thing running Jekyll locally gave me was the ability to see all the build warnings that GitHub does show me. GitHub will tell you if the deployment fails, but not about warnings. Turns out a lot of the warning were deprecations and easy to fix, but I much prefer a build with no warning at all, which is what I have now.

Obviously, we all know the benefit to developers of having a local environment, but I encourage all testers to get the products they test running locally on their machines, it'll open you up to a whole host of new information and testing opportunities. 

### Universal Language
To migrate my blog posts, I had to export them from Blogger. Blogger provides a way to do this which is great. However, it exports them as HTML, not a problem you're thinking, most blogging platforms let you add posts in HTML. The problem I faced was that some of them were full of crazy HTML, some of you will have seen this, the crazy HTML comes from copying and pasting directly from Google Docs or Word straight into Blogger. All those classes that were in the HTML were affecting my styling on my posts. So it actually took a fair amount of time to get them all migrated to Markdown.

Going forward I intend to write all my future posts in Markdown. Not because I have too, Jekyll would still let me do HTML, but because with Markdown, I could migrate my posts to any platform in the future with ease I feel. There are plenty of Markdown to HTML and Markdown to rich text converters out there. Plus the way tech is going I'm sure they'll be some shiny new platform we'll be wanting to move to in the future.

### Tools Tools and More Tools
I've lost track of the number of tools I used during the creation of the new blog and migration of the old posts. As regular readers will know I'm a huge advocate of using tools to support our work, and encouraging teams to build tools to support their testing and development, and not just focusing on automated checks.

I listen to my inner self. In this case, I kept thinking to myself there has to be an easier way to do this. A lot of you will have had that feeling before, listen to it and more importantly act on it. Even if it's just a quick Google and look at the top five results if no joy carry on. Chances are though that you'll find something to help you. If you really do have no joy, and this feel repeats itself again, talk to the team, see if someone can build something to help you.

In my case with the migration, it was converting the blog posts from HTML to Markdown. Brace yourself for laughter... yep, I did the first 10 post manually. Then my brain decided to go 'I wonder if there is a tool to convert HTML to Markdown' of course [there is!!!](https://domchristie.github.io/to-markdown/) That really helped me and saved me a lot of time. 

### Transferable Programming Skills 
I'm not a developer, but I can develop. I've spent most of my career thus far using C#, Java and JavaScript. This project was mostly HTML, CSS and Ruby. I'm rather comfortable with HTML, we've covered the magic world of CSS, but Ruby was all new. But, it's not just the language that is new, it's the tools that support it, such as _gem_ and YAML. A quick google of _gem_ though and you're immediately good. Gem is a package manager for managing Ruby gems. Sure I've not used it before, but I've used NuGet, Maven, NPM, Yarn so I could use that knowledge to help me. For example, I needed to install a specific version of a gem, I know it will be possible, so I just needed to find the right command. 

Jekyll uses a syntax called Liquid to help you manage dynamic content on your pages and posts. I'd never heard of Liquid, but it just abstracts some Ruby for you. So with knowing basic programming concepts, you expect the basics to exist such as loops and if statements and indeed they do, and they work exactly how you'd expect them to, you can get straight into writing your queries but you know how these concepts work. It's just a case of getting the right Liquid syntax, you already have the skills to model your query.

### Mastering Google
I believe Googling is a skill. I also happen to believe I'm good at it. There is information about pretty much everything on the internet, but especially around programming. I love solving problems, I really do, it's a fantastic feeling when you do, but don't become obsessed with it, it's perfectly acceptable and encouraged to ask for help. In such a project where the team is just me, I turn to Google. Practice and get used to using Google to help you with your programming, I could probably write a very lengthy post about this but for now, it's a tool, use it, your problem is unlikely to be original especially when using tech that is a few years old.

### Have a Plan
Migrating a blog doesn't sound like a big job, but it was. I reckon all in all it took me about 40 hours. I spent the first 2-3 hours just hacking away until it became apparent to me that there was a lot to do and a plan would be useful. I started with a simple handwritten bullet point list, but it soon became illegible. In the end, I moved to Trello, I already use this for my personal kanban board, so it made logical sense. 

This proved a smart move in many ways. The first was that I was able to add more useful things to the cards, such as helpful links I stumbled across, or to leave myself some insight I may have had while doing another task. The second being the satisfaction you get when you complete a task. Sure you've still got another fifty tasks to go, but you've completed one! Without the plan and the cards, it could feel like you're not making progress when you really are. 

### Dive Deeper
There were several occasions throughout this process where I was able to get something working by copying and pasting the code from examples in the original repos or from a website. Some would consider that a success and move on, sometimes I did exactly that, but the majority of the time I wanted to learn more about the answers and why they worked. For example, if a site told me to use this exact Liquid syntax, I would try it, see that it worked but then search the official documentation to learn more about it. This would help me understand why it worked, but it also took me to places within documentation where I could learn about other commands, and in some situations, I was actually able to find a better solution.

So what I'm trying to say, and remind myself of, is to be inquisitive. We've mentioned it already, Google is all knowing, but go deeper, dive into the depths it could help you in the long run, but it will most certainly reveal more doors for you to explore. 

### Side Projects Are Fun
Even though this project is related to my work, having this side project over the last few weeks has been very rewarding. It's helped me realise that I need projects like this. Projects that result in something awesome being built, but the real gold is in the journey. I've had many over the years, but I need to remind myself to have more of them, as it's all to easier to get bogged down in work or using the same old tech all the time.

A bit lengthy, but it's been an epic journey.  
I've decided against writing a full experience of the whole process, too much simply happened. But if you're interested in knowing specifics just reach out to me and I'd be happy to talk to you more about Jekyll.