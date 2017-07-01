---
layout: post
title: An Introduction To The Data Builder Pattern
date: '2015-06-23T23:42:00.004+01:00'
author: Richard Bradshaw
categories:
- Automation in Testing
- Automated Checking
- Automation Design
- Data Builder Pattern
tags:
- Automation
- Checking
modified_time: '2015-06-24T07:35:29.756+01:00'
blogger_id: tag:blogger.com,1999:blog-8318661666872903125.post-1815856826204450894
blogger_orig_url: http://www.thefriendlytester.co.uk/2015/06/an-introduction-to-data-builder-pattern.html
permalink: /2015/06/an-introduction-to-data-builder-pattern.html
---

The data builder pattern was first introduced to me by [Alan Parkinson](https://twitter.com/alan_parkinson), he did a talk about it at the Selenium Conference in Boston back in 2013\. You can watch it [here](https://www.youtube.com/watch?v=yLg36oBL-PE).  

I want to share with you a current implementation of the pattern I am using, which was created by myself and [Lim Sim](https://twitter.com/lsim001). It not 100% aligned to the following links, but its working well enough for us.  

So what is the Data Builder Pattern? Well we start with "Builder Pattern", officially its "_[an object creation software design pattern](https://en.wikipedia.org/?title=Builder_pattern)_". So in the context of data, the pattern is used to create data in the system under test. In my words, its a maintainable pattern for creating and managing the automated creation of data in the system under test.  

It's a fancy name for something that is surprisingly simply.  

In it's simple form, the flow is as follows: Model > Build > Manipulation > Creation. We have a model of a domain object, we create an instance of it with some values, we manipulate some values (not always) and then we create this object in our system.  

### Model 
This is a model of the domain object you are wanting to create. So we have to look at our domain and break this down into models. The application database can be a good place to work these out, in some cases, you could simply copy the schema. The code base is also a great place to look, and again, in some cases the models may already exist, allowing you to use them directly in your code or make a copy of them. If you don't have access to any of those things, just take the time to work it out. The application UI could also be a good place to work these out, but be aware that sometimes important values are never displayed in the UI.  

So lets look at an example, we will use this throughout this post. I am going to go with a user of a system, its a made up system, but you will get the point. Should point out for this example, I haven't made the code fluent, you can read more about that [here](http://martinfowler.com/bliki/FluentInterface.html), it doesn't really alter the pattern, but as I said, this is how we have implemented it.  

<div class="centerplugin">
{% gist FriendlyTester/70e39dab19f1260a20e3 %}
</div>
 
As you can see, keeping it very simple. We simple have a model of a domain object with getters and setters so that we can assign some values once we create an instance of it.  

### Build 
I have called this stage build, this is the stage where we create an instance of our model. So in other words, we create an instance of our class (model), we create an object. We build the model.  

We have called these builders, it's where we create an instance with some values. Those values can be generic or you could use a random string/number generator to create values for you. It all depends on your context. Or they could be scenario/persona based.  

The builder is a class, that consumes a model. In turn it knows the context of the model and importantly what values to assign to its properties. The builder will then return an instance of the model with usable values assigned to its properties.  

You could have a simple generic builder like so:  

<div class="centerplugin">
{% gist FriendlyTester/36162787eb723e422824 %}
</div>

So you can see, all we are doing is assigning values. We have decided that in our context, those values fit what we would consider a generic user.  
But of course we could now expand the builders available to us, to fit other scenarios that may exist within our context. For example an OAP user.  

<div class="centerplugin">
{% gist FriendlyTester/af61c7a78a1fb4c971f5 %}
</div>

Notice that I added it to the same class, you should do the same if going to try this approach. This class is the builder for a specific model, so this is where you would continue to add your builders. So another common approach to data, is to just randomise it, as in some scenarios the data is irrelevant to the test/check you want to do. So you create yourself a builder that creates random values. You can do that in line, or if you are repeating them a lot, create yourself some utilities to create strings of all lengths and so forth.  

So create a builder for all specific personas or scenarios you require. Of course you should consider if your builder needs to adhere to the schema of your database, for example, the firstName field in the database has a character limit of 50, so if the builder produced a 60 characters firstName, that wouldn't really work. So be aware of data limitation for your system.  

### Manipulation 
So at this stage with have our object and it has values assigned to all its properties, it good enough to get created if we so desired. But sometimes we do want specific values, perhaps our check is going to look for a specific surname or search for users of a specific age. We need to be able to create data that is unique, but we don't want to to have to assigned values to all the properties, only the ones we are interested in for our check/test.  

So what we do is make changes post the builder, so we let the builder assign all values, then we change the ones we need to before we create. So it would look something like this, where I need a user with the surname "Richards" and they need to be 35.  

<div class="centerplugin">
{% gist FriendlyTester/8df68df186f60a7acec4 %}
</div>

So as you can see, I only change the values I need and the rest of the values remain as they were from the builder.  

### Creation 
So as with the build stage we needed a builder, with the creation stage we need a creator. The job of the creator is to actually create our object in the system under test. How your creator creates the data is solely dependent on your context and the testability of the system under test.  

Some ways that you could do it. You could go straight to the database and insert your data there. You could use APIs if they are available. You could even use the UI if no other alternatives are available or if the context leans in that direction. There is no right or best way, it's whatever works, but by following the pattern, you allow yourself to change it in the future if a faster or easier method becomes available.  

So what does the builder do, the builder basically takes your object, reads all the properties of the object and uses flows that you create to insert that data into the system under test, resulting in the data being available for your test/check.  

I am not going to show an example of a creator as they are hugely context dependent and am sure you understand the job of the creator.  

### Summary 
So once you have your models, builders and creators, you will end up with something like this, that would result in data being added to your system under test.  

<div class="centerplugin">
{% gist FriendlyTester/9ab37f270738be4c3d50 %}
</div>

As you can see, this is really easy to read, thats because I have used names specific to this domain, sure in this example its just "User" but am sure you can imagine how your domain may look. Then we have used nouns for our objects so there purpose is clear to us, and verbs for their methods, create and build.  

Anyhow, I hope this was a nice introduction to this pattern if you were not familiar with it. I will follow this post with a few more on this topic. We look at more advanced implementations, as well as how following this pattern allows you to leverage the code for multiple uses throughout your testing approach.