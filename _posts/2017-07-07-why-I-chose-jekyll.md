---
layout: post
title: Why Jekyll
date: '2017-07-07T19:30:39.450+01:00'
author: Richard Bradshaw
categories: 
- Blogging
tags:
- Blogging
modified_time: '2017-07-07T19:30:39.450+01:00'
permalink: /2017/07/why-jekyll/index.html
comments: true
---
Why Jekyll Richard? This was the question [Simon Knight](http://sjpknight.com/) asked me yesterday after I published some [learnings from my blog migration](https://thefriendlytester.co.uk/2017/07/ten-insights-from-my-blog-migration/index.html).

I'd been thinking about a blog migration for a while, I wasn't happy with Blogger. My site was looking rather dated, and so is Blogger for that matter. Also, my _blog_ has turned into site these days. I have a lot more on there than just a blog. So when I looked at [Viv's blog](http://vivrichards.co.uk) I was immediately drawn to the design, but after talking to him and checking out Jekyll I was even more convinced.

### Jekyll's Appeal
#### Open source
As mentioned in the first post, Jekyll is open source and has many clean designs available for it. I feel this is going to give me more options in the future. I'll be able to find packages from others as well as looking at coding something myself if I have specific needs I can find an existing package for.

#### Design
I don't know what it is about this design, but when I saw it, it was clear to me I had to have it. Sure it's nothing fancy, but I just found it really clean looking. Now in terms of Blogger and moving, sure I could have found a similar theme, but again it's in the constraints of blogger, having to use their editor. I get to code this in whichever editor I wish.

#### Dynamic Pages
When looking into Jekyll one of the first things I came across was the fact is offered dynamic pages. That being the ability to dynamically create pages based on some data source. In Jekyll's case, this data can be stored in many formats the most common being YAML or JSON. You can then write code to loop over this data and display exactly what you want in any order you want. It uses some called Liquid to achieve this. You can see an example of this on my [event page]({{site.url}}/events), the [data source](https://github.com/FriendlyTester/friendlytester.github.io/blob/master/_data/conferences.yml) and the [page code](https://github.com/FriendlyTester/friendlytester.github.io/blob/master/events.html). The code is a bit rough at the moment, it was one of the first pages I tackled I intend to refactor this in the near future now I have a better understanding of Liquid and the filters available in Jekyll.

The ability to store some of my content in data sources is something I hope to take advantage of more in the future. For example, now all my events are in a data source I could add something to the home page to show the next event I'm attending or organising for example. The same with my training classes, I could add a location to them and have some logic to show them on the homepage if there is one configured. I'm also contemplating the [blog sponsorship](https://www.troyhunt.com/im-now-offering-sponsorship-of-this-blog/) idea as created by Troy Hunt.

This ability to draw numbers from my data and use data source across multiple sites 

#### GiHub Pages
The idea of hosting the site for free on GitHub was certainly an appeal. Sure hosting costs aren't expensive these days, but it makes life a lot easier. The additional bonus of this is that anyone can now see the code to my blog. They could make their own with the same look and feel, or they can use the code to support something they may be doing.
Then a proper Brucie bonus is that when I make mistakes or someone spots something that can be better than can submit a PR to me and fix it for me :D

#### Alternatives
I didn't explore any if truth be told. As soon as I investigated further into Jekyll, it became apparent to me that it could fulfil all I was looking for in terms of a new blog/site. I've since been told about a similar offering built on top of react.js but I can't recall the name!

#### Coding
I must admit this was an appeal. Actually getting to code my own blog. Now sure, yeah I know, it's already 90% done, but I got to do that extra 10% and hopefully more in the future. It's a very satisfying feeling writing some code, git pushing and seeing it live. 

So in short, coding, dynamic pages and open source were the appeals. 