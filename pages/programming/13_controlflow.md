---
layout: page
title: Control Flow
permalink: /programming/lessons/controlflow.html
description: "What is Control Flow?"
comments: true
signoff: true
---
[Course Home](../course)

Control flow, or flow of control is blocks of code we create to control the direction we take through the code. It's common is programs to take a different direction based on some data. Think about a login screen. If the username and password are valid we log them in, if not valid, we don't. So there we need conditional logic in our program. 

### Sequence
In very simple terms it's the order we specify things to happen. The large majority of programming languages will run top down. Meaning they'll start with line one of your code and then on to line 2 and so forth. Line one may take them to a whole new file, but the same principal applies, it will work it's way down that file, until eventually ending back at line one of the first file before progressing to line 2.

It's important for us to get the sequence right, otherwise our program may not give us the result we intended.

### If, Else, ElseIf
The simplest way to add conditional flows into our code is to use *if statements*. All the major programming languages supports ways to implement *if* statements.  
A basic *if statement* will consist of two flows. The first flow being what the code should do if the condition is met and the second flow being what to do if the condition isn't met. A simple example would be the login screen, **if** username and password are correct log the user in, **else** show them the invalid password screen.

The if statement functionality also gives us another option, elseif. Elseif allows use to go beyond true and false. So if were to introduce a third scenario into our logic example we could take advantage of the elseif behaviour. 

**IF** the username and password are correct and the account is verified, log the user in.
**ElseIf** the username and password and correct but the account isn't verified, remind the user to verify their account.
**Else** the username and password are incorrect, show the invalid password screen

We could add as many *elseif* statements as needed.

A simple [flow diagram](https://www.lucidchart.com/pages/data-flow-diagram/b?dfd=1) is a great way to help us model our if/else/elseif statements.

### Iteration
Iteration is where we iterate over the same block of code, sometimes also referred to as looping. So a single instance of such logic would be called a loop.  

The majority of time we'll be looping over a set of data, or for a given time. So if we had a list of user accounts in our system, and wanted to apply a new value to all of them, we'd do so with a loop. For every users in the system run this block of code. That's exactly what a loop would do based on a count. The code would keep executing until it has done all the user accounts. **For** is commonly the keyword used for this functionality in programming languages and such loops are sometimes referred to as a *count-controlled loop*.

Another loop you will commonly see is a loop based on a condition. Keep looping through this block of code until the condition is met. If we take the above example for updating users, let imagine we had a UI telling us the progress of our requests, that UI could have a condition loop in place. While updating users is still in progress show the spinner on the screen. Then the moment the updating users process is complete our condition would be true and therefore we'd exit the loop, and the UI would move onto a new screen. **WHILE** is commonly the keyword used for this functionality.

Another loop you will see, and hopefully create, it's kind of like a badge of honour to be a programmer, is an infinite loop. Ha, yes, they read as they sound, a loop that will never ever end. You don't want to write one of these, but if you continue on your programming journey you eventually will.

### [Next Lesson &#10132;](../lessons/algorithms-big-o-notation)

#### Resources
[https://howtoprogramwithjava.com/the-5-basic-concepts-of-any-programming-language-concept-2/](https://howtoprogramwithjava.com/the-5-basic-concepts-of-any-programming-language-concept-2/){:target="_blank"}  
[https://www.computerhope.com/jargon/c/contflow.htm](https://www.computerhope.com/jargon/c/contflow.htm){:target="_blank"}  
[http://www.bbc.co.uk/education/guides/zrxncdm/revision/1](http://www.bbc.co.uk/education/guides/zrxncdm/revision/1){:target="_blank"}