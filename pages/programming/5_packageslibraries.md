---
layout: page
title: Packages, Libraries and Bindings
permalink: /programming/lessons/packagesandlibraries.html
description: "What are packages, libraries and bindings?"
comments: true
signoff: true
---
[Course Home](../course)

A library is usually a collection of code that someone has designed to do a specific purpose.  It will be a single file in a specific format for that language, such as a .jar or .dll file.

Bindings *bind* a programming language to a library or service. A common example in the world of testing is Selenium WebDriver. The WebDriver API exists in the Selenium server, and expects to receieve HTTP requests are per the WebDriver specification. We can use the click command as an example, the HTTP request for a click is *'/session/{session id}/element/{element id}/click'* however in our code we just write *MyElement.Click()*. That's because the bindings are doing all the hard work for us. The bindings know the API specification, they know the sessionId, they lookup the elementID and then formulate the HTTP request for us. Without the bindings we'd have to create this code on our own! Bindings hide all the magic and complexity allowing us to take full advatnage of libaries and services without having to implement that service is multiple programming languages.

Packages are usually supported by a package manager. A package is similar to a library but usually, involves some addition logic/automation. For example, it will download the library, put it in a specific place and add an entry to a config file. Or it may download several libraries and its dependencies. A dependency being another library that another library my reference/use.

I've listed some example package managers in the resources below, a good place to start if you want to explore existing packages. 

### [Next Lesson &#10132;](../lessons/sdksapis)

#### Resources
[NPM](https://www.npmjs.com/){:target="_blank"}  
[Maven](http://search.maven.org/){:target="_blank"}  
[NuGet](https://www.nuget.org/){:target="_blank"}
