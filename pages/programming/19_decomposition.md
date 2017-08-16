---
layout: page
title: Decomposition
permalink: /programming/lessons/decomposition.html
description: "What is Decomposition?"
comments: true
signoff: true
---
[Course Home](../course)

>Decomposition in computer science, also known as factoring, is breaking a complex problem or system into parts that are easier to conceive, understand, program, and maintain

You could view decomposition as an integral part of design. Upfront decomposition could be viewed as modelling the code you intend to build. In advance we can think about the design and classes we may want to have before we go ahead and implement them. Code decomposition could be viewed as when we have written some code but we get the feeling it's a bit clunky. Lets says we have a method that has gone beyond 5-10 lines, this may trigger us to think that this method is too complicated and should be split into many methods, that would be decomposition. Or lets say we have a class with 20 plus methods on it, that could trigger us to think more critically about the class and perhaps exploring breaking it into many smaller classes.

We can continue our PageObject example to think about decomposition. A common approach is to have one PageObject per page of our application. However, if you've got a very complex applications such as a CRM, a single page could have a lot of functionality. If you modelled and implemented all that as a single class, it's going to be a very large complex class. So, instead, we could break the page down into individual page objects, individual classes we are specifically focused on a subsection of the page. That would be decomposition.

### [Next Lesson &#10132;](../lessons/codecomments)

#### Resources
https://en.wikipedia.org/wiki/Decomposition_(computer_science)
http://www.bbc.co.uk/education/guides/zqqfyrd/revision/3