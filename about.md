---
layout: page
permalink: /about/index.html
title: Richard Bradshaw
tags: []
chart: true
---
<figure>
  <img src="{{ site.url }}/images/richard.jpg" alt="Richard Bradshaw">
  <figcaption>Richard Bradshaw</figcaption>
</figure>

{% assign total_words = 0 %}
{% assign total_readtime = 0 %}
{% assign featuredcount = 0 %}
{% assign statuscount = 0 %}

{% for post in site.posts %}
    {% assign post_words = post.content | strip_html | number_of_words %}
    {% assign readtime = post_words | append: '.0' | divided_by:200 %}
    {% assign total_words = total_words | plus: post_words %}
    {% assign total_readtime = total_readtime | plus: readtime %}
    {% if post.featured %}
    {% assign featuredcount = featuredcount | plus: 1 %}
    {% endif %}
{% endfor %}


My name is **Richard Bradshaw**, and this is my personal blog. It currently has {{ site.posts | size }} posts in {{ site.categories | size }} categories which combinedly have {{ total_words }} words, which will take an average reader ({{ site.wpm }} WPM) approximately <span class="time">{{ total_readtime }}</span> minutes to read. {% if featuredcount != 0 %}There are <a href="{{ site.url }}/featured">{{ featuredcount }} featured posts</a>, you should definitely check those out.{% endif %} The most recent post is {% for post in site.posts limit:1 %}{% if post.description %}<a href="{{ site.url }}{{ post.url }}" title="{{ post.description }}">"{{ post.title }}"</a>{% else %}<a href="{{ site.url }}{{ post.url }}" title="{{ post.description }}" title="Read more about {{ post.title }}">"{{ post.title }}"</a>{% endif %}{% endfor %} which was published on {% for post in site.posts limit:1 %}{% assign modifiedtime = post.modified | date: "%Y%m%d" %}{% assign posttime = post.date | date: "%Y%m%d" %}<time datetime="{{ post.date | date_to_xmlschema }}" class="post-time">{{ post.date | date: "%d %b %Y" }}</time>{% if post.modified %}{% if modifiedtime != posttime %} and last modified on <time datetime="{{ post.modified | date: "%Y-%m-%d" }}" itemprop="dateModified">{{ post.modified | date: "%d %b %Y" }}</time>{% endif %}{% endif %}{% endfor %}. The last commit was on {{ site.time | date: "%A, %d %b %Y" }} at {{ site.time | date: "%I:%M %p" }} [UTC](http://en.wikipedia.org/wiki/Coordinated_Universal_Time "Temps Universel Coordonné").

I'm a director and tester at FriendlyTesting, a company I started in back in 2014. FriendlyTesting offers independent Testing Services, Consulting, Coaching and Training within Software Testing. I'm also a well travelled public speaker, I've spoken at many events all over the world, and thus far done two keynotes. You can see where I've presented at [here](http://www.thefriendlytester.co.uk/p/talks-workshops.html).

I'm also the FriendlyBoss over at the [Ministry of Testing](https://www.ministryoftesting.com/). The Ministry of Testing is a professional learning network. We've created a safe, exciting community about all things testing. You can get a feel about what we do by subscribing to our [newsletter](https://www.ministryoftesting.com/subscribe/), or join our Slack [channel](https://www.ministryoftesting.com/slack). My main focus there is to be an evangelist for Ministry of Testing, trying to make more and more people aware of this fantastic community. I'm also trying to growth our e-learning platform dedicated to testing called [The Dojo](http://dojo.ministryoftesting.com/). The Dojo is packed full or paid and free material on testing, I encourage you to check it out. We also have a vast network of [meetups](http://ministryoftesting.com/meetups) around the world and host numerous conferences on both sides of the pond, all our events are here.

In terms of Richard the tester, I'm a strong believer in automation in testing, this being the use of automation to support testing, not test automation. I don't believe testing can be automated. I do believe automation can play a big part within testing though, when viewed as a tool. We can build tools to do automated checking, as well as building custom tools to assist testing, such as data creation, log parsers and evidence collecting.

I'm very active in the testing community, I tweet regularly as [@FriendlyTester](https://twitter.com/friendlytester) and I'm a regular attendee at meetups throughout the U.K.

I'm also a founding member of the Midlands Exploratory Workshop on Testing ([#MEWT](https://twitter.com/search?q=%23MEWT&src=typd)). MEWT is a peer conference, you can read more about it on the [MEWT blog](https://mewtblog.wordpress.com/). We haven't had one for a while but have been inspiration for others to start their own workshops, which is great. We'll have another at some point.

I'm also the creator of Whiteboard Testing, a YouTube channel dedicated to short informative videos on Software Testing. You can view the talks [here](https://www.youtube.com/channel/UC0QZWhi0ojqNte3ey7RD0qQ) and I encourage you to subscribe.
