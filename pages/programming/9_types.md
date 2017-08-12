---
layout: page
title: Types and Objects
permalink: /programming/lessons/typesandobjects.html
description: "What are types?"
comments: true
signoff: true
---
[Course Home](../course)

In programming a type is classification of data. This classification tells the compiler how to store such data, and also informs the programmer what operations can be done on the type.

Now if you start googling programming types, you'll realise the above is a very simple explanation, each layer you dig down the more complicated it gets. But for starting out in programming it should be enough.

Lets take a look at some common types, plus other common objects. I could break them out, but I want to try and keep this simple. 

#### Integer
Commonly shortened to int in programming languages, this is used to store whole numbers, e.g. 2, 1450, -6.

#### Double
A double allows us to store a number with a floating point, aka as decimal, e.g 1.5 -5.6.

#### Short, Long, and float
Adding these for completion, but I rarely use them.  
Short is using to store small numbers, it's range is -32,768 to 32, 767.  
Long is used to store really big numbers.
A float is used to store decimal points like a double, but has less precision.  
Important to know about them, but unless you are writing a very memory conscious application, int and double will always be fine.

#### Boolean
Very simple, it stores true of false. Commonly used in [Control Structures](/programming/lessons/controlstructures).

#### Char
Is a type to store a single characters, e.g 'a', 't'. Its max length is 16-bit.

#### String
A string is technically not a type, it's an object. But I want to keep this simple.  
A string is essentially a collection of chars.  
An example of a string would be "Richard".

#### Arrays
An array is used to store a collection of the same type. So we can have an array of Strings or Ints, but not an array of Ints and Strings.
You can think of a food shopping list as an array, it's collection of food types. 

### [Next Lesson &#10132;](../lessons/Variables)