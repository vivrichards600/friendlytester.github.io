---
layout: page
title: What are Matchers?
permalink: /java/junit/lessons/matchers.html
description: "What are Matchers in JUnit and how do we use them"
comments: true
signoff: true
---
[Course Home](../../course) \| [Code Example(s)]()

Matchers along with assertThat were introduced in JUnit 4.4. assertThat provides a way to write clean highly readable assertions, taking advantage of matchers. These matchers are provided my a library called [Hamcrest](http://hamcrest.org/JavaHamcrest/). Little secret, Hamcrest is an anagram of Matchers.

Lets compare them to analyse the benefits of using assertThat.

```java
int c = 5 * 5;
assertEquals(25, c);
assertThat(c, is(equalTo(25)));
```
So to recap the last lesson, the first example 'assertEquals(25, c)' actually reads 'assert equals <expected> 25 <actual> c'. Understanding assertions we can get by, we know assert equals is checking they are equal, but it's not explicit in the words.  
The second example 'assertThat(c, is(equalTo(25)));' reads 'assert that <actual> c is equal to <expected> 25'. This is much nicer to read in my opinion.

Then there is the error messages by default when an assert fails. With assertEquals you'll get:
```text
java.lang.AssertionError:
Expected :20
Actual   :25
```
With the assertThat, you'll get
```text
java.lang.AssertionError:
Expected: is <20>
but: was <25>
```
A subtle difference, but a very welcomed one when you're trying to debug failures.

I've listed and documented some more examples from Dariusz Andrzej Stefański's post Assertions below over on GitHUb, link is at the top of the page.

Matchers take some getting us to, but over on the [Hamcrest site](https://code.google.com/archive/p/hamcrest/wikis/Tutorial.wiki) is some great documentation on all the matchers available. And to repeat myself from the previous lesson, your assertions are really important, so take some time to learn the library, arming yourself to being able to implement the exact assertions you require.

### [Next Lesson &#10132;](../lessons/runningtests)

#### Resources
[Assertions](https://github.com/junit-team/junit4/wiki/Assertions)
[Matters and assertThat](https://github.com/junit-team/junit4/wiki/Matchers-and-assertthat)
[Benefits of AssertThat](https://objectpartners.com/2013/09/18/the-benefits-of-using-assertthat-over-other-assert-methods-in-unit-tests/)