---
layout: page
title: Operators
permalink: /programming/lessons/operators.html
description: "What are Operators?"
comments: true
signoff: true
---
[Course Home](../course)

Operators are symbols that tell the [compiler](../lessons/compilers) or an interpreter to provide specific logic operations or mathematical calculations.

It's important to understand all these operators, and the nice thing about them is the majority of them are the same in all languages. If you are using them on the same/equivalent [types](../lessons/typesandobjects).

#### Arithmetic
Mostly used for math, but I see people use + a lot with strings.

| Sample usage &nbsp;&nbsp;&nbsp;&nbsp; | In English      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | Result                     |
|------------------------|------------------|------------------------------------|
| a + b         | a plus b         | If the types were numbers, 1 + 2 would give you 3. <br>If they were strings, "richard" + "tester" would give you "richardtester" |
| a - b | a minus b | If the types were numbers 5 -1 would give you 4 |
| a * b | a times b | If the types were numbers 2 * 2 would give you 4 |
| a / b | a divide b | If the types were numbers 8 / 2 would give you 4 |
| a % b | a mod b | It returns the remainder of the division. So 8 % 5 would give you 3 |

#### Logical
Mostly used in [control flow](../lessons/controlflow) to help us control the flow of our code.

| Sample usage &nbsp;&nbsp;&nbsp;&nbsp; | In English      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | Result                     |
|------------------------|------------------|------------------------------------|
| a & b | Evaluate all values and returns [logical conjunction \(AND\)](https://en.wikipedia.org/wiki/Logical_conjunction) | Lets assume these are boolean. true & false would return false. <br>|
| a && b | Evaluates all values, but stops if first is false | So false && true would return false, but not evaluate or run b.
| a \|\| b | Evaluates all values and returns the [logical disjunction \(OR\)](https://en.wikipedia.org/wiki/en:Logical_disjunction) | Used in [Control Flow](../lessons/controlflow) to see if a or b is true, carry on|
| !a | Basically means NOT | This tends to only work on boolean types. !true if the expression is not true, carry on|

#### Relational
Used for type comparisons. A lot of this logic is what a test framework like JUnit is doing under the hood.

| Sample usage &nbsp;&nbsp;&nbsp;&nbsp; | In English      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | Result                     |
|------------------------|------------------|------------------------------------|
| a == b | a is equal to b | If a was "richard" and b was "richard" it would return true|
| a != b | a is not equal to b | If a was "richard" and b was "sarah" it would return true|
| a < b | a is less than b | 6 < 15 would be true|
| a > b | a is greater than b | 15 > 6 would be true|
| a <= b | a is less than or equal to b | 15 <= 15 would be true. 6 <=15 would be true|
| a >= b | a is greater than or equal to b | 15 >= 15 would be true. 25 >= 15 would be true|

#### Assigment

| Sample usage &nbsp;&nbsp;&nbsp;&nbsp; | In English      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | Result                     |
|------------------------|------------------|------------------------------------|
| a = b | make a the value of b | if a was 7, and b was 10, after this code, a would 10 |
| new _object_ | make a new instance of an object | If we had a class called Person. Person richard = new Person() would make a new instance of Person called richard|

<br>
### [Next Lesson &#10132;](../lessons/controlflow)

<br>
##### References
[Wikibooks - Operators](https://en.wikibooks.org/wiki/C_Sharp_Programming/Operators){:target="_blank"}
