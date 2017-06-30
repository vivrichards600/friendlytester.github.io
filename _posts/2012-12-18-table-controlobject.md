---
layout: post
title: Table ControlObject
date: '2012-12-18T17:18:00.000Z'
author: Richard Bradshaw
tags:
- Tables
- ControlObjects
- webdriver
modified_time: '2016-07-26T13:28:19.182+01:00'
blogger_id: tag:blogger.com,1999:blog-8318661666872903125.post-8033606497200374251
blogger_orig_url: http://www.thefriendlytester.co.uk/2012/12/table-controlobject.html
permalink: /2012/12/table-controlobject.html
---

So in a previous [post](http://www.thefriendlytester.co.uk/2012/11/i-call-them-controlobjects.html) I mentioned that I create objects which I call ControlObjects and a few of you told me that you do too and some of you call them Elements.  

Would like to thank Adam Goucher for including it on a "Smattering of Selenium".  

So I mentioned I would share a some of them, so here is the first, its a Table ControlObject. My companies application has a financial section, with extended use of dynamic tables, so those lead to this object.  

Before I created this object I found myself using a lot of XPath to read data from the table, and as we all know its not the most robust method for retrieving elements, however when you have a table, its hard to interact with a specific row/column unless it has a unique identifier which is rare.  

So, I thought what if I can add some logic to my XPath calls, so that I was confident I was getting the cell I wanted.  
A well structured HTML table consists of <span style="color: #F5986D;"><table>/<thead></th></span> for the table headers and <span style="color: #F5986D;"><table><tbody><tr><td></span> for the row and cells structure, so a standard XPath call would read: "<span style="color: #F5986D;">table/tbody/tr[4]/td[3]</span>" with the numbers being the required row / cell.  

So what if I could determine those numbers using information I knew, then I could be assured I was always getting the cell I wanted, so here is how I achieved it.  

I created a new object which took a table element as its parameter, then I create two lists, one for the headers (th) and one for the rows (tr), using By.Tagname, this then allows to me to inspect these lists for information I know, which in turn I can use to create an XPath request to retrieve the required cell / row.  

So the standard structure of our tables is column headers across the top and the first column being a unique value such as a cost code / Id.  

So I know the name of the unique column is "Cost Code", I can then iterate through my column headers list to find the IWebElement text that equals "Cost Code", I can then get the index of that element in the list, +1 (this is important as Lists are 0 indexed, Xpath isn't) which gives me the correct td[x] value.  

Then I can loop through the row list, using XPath to find the row that matches my unique value. So lets say that returned as 1.

<div class="centerplugin">
{% gist FriendlyTester/6982078 %}
</div>

Then from that match, I can do the same again to get the index of the column I want to read from, so lets say thats 5, then use XPath again to return the cell I was looking for.

<div class="centerplugin">
{% gist FriendlyTester/6982113 %}
</div>

So XPath can be useful especially if used Dynamically.  

To note this will work if the table doesn't have a thead area, however the first row which would contain all the th tags would be counted and looped through when looking for rows.  

I have added the project to my [GitHub account](https://github.com/FriendlyTester) so please do download and have a look, and hopefully will be useful to some of you.  

The project contains the ControlObject along with a set of tests to show it working. The tests are NUnit tests and use FirefoxDriver, and use the table below.  

<table id="customers">

<thead>

<tr>

<th>Company</th>

<th>Contact</th>

<th>Country</th>

</tr>

</thead>

<tbody>

<tr>

<td>Alfreds Futterkiste</td>

<td>Maria Anders</td>

<td>Germany</td>

</tr>

<tr class="alt">

<td>Berglunds snabbköp</td>

<td>Christina Berglund</td>

<td>Sweden</td>

</tr>

<tr>

<td>Centro comercial Moctezuma</td>

<td>Francisco Chang</td>

<td>Mexico</td>

</tr>

<tr class="alt">

<td>Ernst Handel</td>

<td>Roland Mendel</td>

<td>Austria</td>

</tr>

<tr>

<td>Island Trading</td>

<td>Helen Bennett</td>

<td>UK</td>

</tr>

<tr class="alt">

<td>Königlich Essen</td>

<td>Philip Cramer</td>

<td>Germany</td>

</tr>

<tr>

<td>Laughing Bacchus Winecellars</td>

<td>Yoshi Tannamuri</td>

<td>Canada</td>

</tr>

<tr class="alt">

<td>Magazzini Alimentari Riuniti</td>

<td>Giovanni Rovelli</td>

<td>Italy</td>

</tr>

<tr>

<td>North/South</td>

<td>Simon Crowther</td>

<td>UK</td>

</tr>

<tr class="alt">

<td>Paris spécialités</td>

<td>Marie Bertrand</td>

<td>France</td>

</tr>

<tr>

<td>The Big Cheese</td>

<td>Liz Nixon</td>

<td>USA</td>

</tr>

<tr class="alt">

<td>Vaffeljernet</td>

<td>Palle Ibsen</td>

<td>Denmark</td>

</tr>

</tbody>

</table>