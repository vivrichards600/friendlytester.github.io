---
layout: page
title: Using IntelliJ
permalink: /java/lessons/usingintellij.html
description: "A look at the minimum we need to know to get started using IntelliJ"
---
There are many Integrated Development Environments (IDEs) to choose from when it comes to developing in Java, but my preference is IntelliJ.  
I say it's my favourite, however, I've never tried the other main ones, which are Eclipse and NetBeans. I've never had any issues with IntelliJ.

### Download and Install IntelliJ
You can download IntelliJ from JetBrains [site](https://www.jetbrains.com/idea/download). Just following their instructions to get it installed.

### Download and Install Java
To be able to compile the Java applications you create, and I consider a suite of automated checks to be an application, you need to have the [Java JDK](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) installed. The current version, and what the code I share has been designed to work with is Java 8.  
Just follow the instructions, and you can test it's installed after by running 'javac -version' in a cmd/terminal window and you should get something like 'javac 1.8.0_65' back.

### Downloading code from GitHub
Majority of people who share code online and at workshops tend to store their code in GitHub. So it's certainly a site worth getting familiar with. As is [git](https://git-scm.com/) itself for that matter. Here is a great [online tutorial](https://try.github.io/levels/1/challenges/1) for learning git, claims to take 15 mins. 

With regard to my lessons, you just need to go the url provided with the lesson and click 'Download Zip' from the green button. Then unzip somewhere.  

![Download Zip](/images/course/gitdownloadzip.png)

### Importing a Project
The projects that I share all currently use Maven. Maven is project management tool. It allows us to manage and control our project. For beginners though, just think of it as the way we manage dependencies and run our tests from a command line. You can usually tell a Java project is using maven by the fact it will have a 'pom.xml' file. You can read move about Maven on their [site](https://maven.apache.org).

However, to import a maven project, we just open IntelliJ, click 'import project', navigate to our 'pom.xml' file, check 'Import maven projects automatically', you don't have to do this but I find it easier, ensure to select your JDK, give you project a name, choose and location and click finish.

![Import Maven Project with IntelliJ](/images/course/openproject.gif)

