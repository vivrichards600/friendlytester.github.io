---
layout: page
title: Using Libraries
permalink: /java/basics/lessons/usinglibraries.html
description: "A look at how to add libraries to a project using maven"
comments: true
signoff: true
---
[Course Home](../../course) \| [What are packages?](/programming/lessons/packagesandlibraries){:target="_blank"} \| POM Example](https://github.com/FriendlyTester/Free-Java-Basics-Course/blob/master/pom.xml){:target="_blank"}

As mentioned in the [Using IntelliJ](/java/intellij/lessons/usingintellij.html) lesson I tend to stick to Maven as my project management. So let's look at how we add libraries into our solution using Maven.

When working with Maven we have to create a Project Object Model, commonly referred to as an POM file. This POM file instructs Maven on all it needs to know about our project and it's configuration information. Including the libraries we've added to our project.

To add a new library to our project we first have to find the library we need. I find all the libraries I need on the [Maven Central Repository](https://search.maven.org/). This is a remote repository where people can upload their Java libraries to, so others can benefit from them.

So for example if we visit the site and search for 'Selenium Java', you should see the first result has follows

![Maven search Selenium Java](/images/course/mavensearchseleniumjava.png)

We can see at the time of writing this that the latest version is *3.5.1*, so if click on that, we get presented with a lot of information about this library. However, the bit we are interested in is

![Selenium 3.5.1 dependency](/images/course/selenium351dependency.png)

This block of XML is what we need to be able to add Selenium-Java version 3.5.1 to our project. We can copy that XML and paste it into our POM file. If this is our first dependency we'll also need to add the dependencies tag. So we should end up adding something like this in the end

```xml
<dependencies>
 <dependency>
   <groupId>org.seleniumhq.selenium</groupId>
   <artifactId>selenium-java</artifactId>
   <version>3.5.1</version>
 </dependency>
</dependencies>
```

When you add this, you'll see a few things happen. You may see this popup

![Maven Enable Auto-Import](/images/course/mavenautoimport.png)

I always enable this. All this means is that everytime you add a new dependency to your POM file, or change a version number, Maven will go ahead and automatically download it for you and add it to the project.

You will also see the version number go red, and a progress bar at the bottom right of IntelliJ. The version number going red is to inform you that the dependency with that version isn't in your project. The progress bar at the bottom is to let you know that IntelliJ is currently downloading that version, hence why it's not in your project yet. If that number stays red, it could mean that IntelliJ couldn't find that version of the library in Maven, so double check the version number. Or, it could mean that IntelliJ failed to download it so check your connection.

### [Next Lesson &#10132;](../lessons/classesandobjectsinjava)