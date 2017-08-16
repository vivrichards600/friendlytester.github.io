---
layout: page
title: Abstraction
permalink: /programming/lessons/Abstraction.html
description: "What is Abstraction?"
comments: true
signoff: true
---
[Course Home](../course)

>Abstraction is the gathering of the general characteristics we need and the filtering out of the details and characteristics that we do not need.

Sounds fancy, but it's actually a simple concept. Lets think about a recipe website. I have some chicken in my fridge and some peppers that I want to use up, the search doesn't care how much I have of each, it just wants to know what ingredients I have. The specific quantities have been abstracted away from the search because it's not important, it's too specific. Instead they are displayed on the page for the recipe. So the search knows it contains chicken and peppers, but not the exact amounts, which is all it needs to know to be functional.

If you are familiar with designing automated checks, the same applies there. The focus of the check is to populate a login form. The check doesn't care how this is done, it just wants it done, so instead of including all the logic to populate the form in the check, we abstract it away into a seperate class. So the check knows it can do it, but not the specifics of how it works.

### [Next Lesson &#10132;](../lessons/encapsulation)

[http://www.bbc.co.uk/education/guides/zttrcdm/revision](http://www.bbc.co.uk/education/guides/zttrcdm/revision)
[https://stackoverflow.com/questions/8960918/encapsulation-vs-abstraction](https://stackoverflow.com/questions/8960918/encapsulation-vs-abstraction)