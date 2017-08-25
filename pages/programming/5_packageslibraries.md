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

Bindings are language wrappers for a library. For example, Selenium WebDriver. The bindings wrap calls to the WebDriver API, the WebDriver API being the library in this example.

Packages are usually supported by a package manager. A package is similar to a library but usually, involves some addition logic/automation. For example, it will download the library, put it in a specific place and add an entry to a config file. Or it may download several libraries and its dependencies. A dependency being another library that another library my reference/use.

I've listed some example package managers at the top of the page, a good place to start if you want to explore existing packages. 

### [Next Lesson &#10132;](../lessons/sdksapis)

#### Resources
[NPM](https://www.npmjs.com/){:target="_blank"}  
[Maven](http://search.maven.org/){:target="_blank"}  
[NuGet](https://www.nuget.org/){:target="_blank"}