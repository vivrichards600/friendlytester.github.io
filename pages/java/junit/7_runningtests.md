---
layout: page
title: Running Your Tests?
permalink: /java/junit/lessons/runningtests.html
description: "How to run your JUnit tests"
comments: true
signoff: true
---
[Course Home](../../course) \| [Code Example(s)](https://github.com/FriendlyTester/Free-Java-Basics-Course/blob/master/pom.xml){:target="_blank"}

So we've written many tests, but how do we run them? Good question. We actually have many ways we can run our tests, so let's explore them.

### IntelliJ
We can run tests directly from IntelliJ. Not a great solution for CI, but very good when creating the tests, and testing them. IntelliJ has a JUnit plugin, I believe it ships as part of IntelliJ, but you can check your have it by going to Preferences > Plugins and you should have one called JUnit. If it's not there, you can google it and add it. Then all you need to do it right click on a test and click 'Run <methodname>'. It will then execute the test. It will also bring the 'Run' window into focus. So you can see the console and progress of your test. Or if the test is in focus you can press Fn + Shift + F10 (Mac).

### Maven
We can use Maven to run our tests by typing 'mvn test' in a console window while in the project folder. Now Maven is old school by default, it will only look for tests in class that are named Test*, *Test, *Tests or *TestCase. So if you try this and no tests run, that will be why. If it doesn't pick up tests you'll see this in the console

![Maven Test Console](/images/course/maventestconsole.png)

So if you follow the above naming convention then 'mvn test' has your covered. Otherwise, we have another way.

### Maven Surefire Plugin
Maven has created the Surefire plugin. Now if using Maven and Java, I'd encourage you to use Surefire to run your tests. It provides a lot more control than just using default 'mvn test'.  
To install Surefire, you just need to add some XML to your POM file.
```xml
<build>
        <pluginManagement>
            <plugins>
                <plugin>
                    <groupId>org.apache.maven.plugins</groupId>
                    <artifactId>maven-surefire-plugin</artifactId>
                    <version>2.20</version>
                </plugin>
            </plugins>
        </pluginManagement>
    </build>
```
The first advantage of this is that we can inform Surefire of classes that contains tests, that don't fit the naming convention, by adding this within the <plugin> tag.
```xml
<configuration>
  <includes>
    <include>Class1.java</include>
    <include>Class2.java</include>
    <include>Class3.java</include>
  </includes>
</configuration>
```
Another thing people always want to do in run tests in Parallel. We can do by using the <configuration> tags, by adding:
```xml
<parallel>methods</parallel> 
<threadCount>10</threadCount> <!-- Number of tests to run in parallel. -->
```

I may add some more advanced posts on Surefire, but for now, I feel this is enough. I encourage you to check out the [official documentation](https://maven.apache.org/surefire/maven-surefire-plugin/). Especially if you are looking to add your tests to a CI tools like Jenkins. You're going to want to take advantage of the additional features. 


### [Next Lesson &#10132;](/java/course/roadmap)

#### Resources
[https://stackoverflow.com/questions/6178583/maven-does-not-find-junit-tests-to-run](https://stackoverflow.com/questions/6178583/maven-does-not-find-junit-tests-to-run){:target="_blank"}  
[Maven Surefire Plugin Docs](https://maven.apache.org/surefire/maven-surefire-plugin/){:target="_blank"}