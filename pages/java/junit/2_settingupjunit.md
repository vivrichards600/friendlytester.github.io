---
layout: page
title: Setting up JUnit
permalink: /java/junit/lessons/settingupjunit.html
description: "How to set up JUnit with IntelliJ and Maven?"
comments: true
signoff: true
redirect_to:
  - https://automationintesting.com/java/junit/lessons/settingupjunit.html
---
[Course Home](../../course) \| [Download and Install JUnit](https://github.com/junit-team/junit4/wiki/Download-and-Install){:target="_blank"}

As mentioned throughout the [Basic Java](../../course) course I use Maven when I develop in Java. We spoke about that in [lesson 2](/java/basics/lessons/usinglibraries). So getting JUnit into our project is a simple case of telling Maven we want to. From the link above you can find all the ways to install JUnit. However, in Maven, we had to add the dependency to our POM file.

```xml
<dependency>
  <groupId>junit</groupId>
  <artifactId>junit</artifactId>
  <version>4.12</version>
  <scope>test</scope>
</dependency>
```
This was directly copied from the link above on 24th August 2017. So be sure to check this is the latest version if following this material. There is a new value that we haven't spoken about through all this material, that is [<scope>](https://maven.apache.org/guides/introduction/introduction-to-dependency-mechanism.html#Dependency_Scope). You can see here it's set to *test* which means Maven won't include that dependency for normal use builds, only for test compilation and execution builds. More on those to come.

JUnit will now be added to our project and we'll be able to add it to the classes we need.

### [Next Lesson &#10132;](../lessons/creatingtestsinjunit)