---
layout: post
title: WebDriver Factory
date: '2014-02-12T22:30:00.001Z'
author: Richard Bradshaw
tags:
- selenium
- c#
- webdriver
- automation
modified_time: '2014-02-12T22:43:52.841Z'
thumbnail: http://1.bp.blogspot.com/-VCBI_bsXrWI/UvvxEgninYI/AAAAAAAAALg/x2tUASczHYQ/s72-c/DriverFactory+(1).jpg
blogger_id: tag:blogger.com,1999:blog-8318661666872903125.post-2369145353709387546
blogger_orig_url: http://www.thefriendlytester.co.uk/2014/02/webdriver-factory.html
permalink: /2014/02/webdriver-factory.html
---

One of the many benefits of WebDriver is that the major browsers are all supported with a version of a driver, some within the browsers and others via a service. This means that you should be able to run your suites of tests against these browsers. This is true, unfortunately though some browsers behave differently so you're likely to face some locators discrepancies, but that's for another post!  

So how can you write a framework allowing you to take advantage of these drivers, they're many approaches, it's code at the end of the day, but I use the approach I call the DriverFactory, as do a few others I have seen, such as an example [here](https://github.com/jimevans/WebDriverProxyExamples/blob/master/WebDriverProxyUtilities/WebDriverFactory.cs) by Jim Evans.  

The concept is very simple, I have attached a diagram below, but here is the jist:  

* **[App.config](https://github.com/FriendlyTester/WebDriverFactoryExample/blob/master/WebDriverDriverFactory/RichardsTestSuite/App.config)** file where we define our browser requirements
*   **[TestConfiguration](https://github.com/FriendlyTester/WebDriverFactoryExample/blob/master/WebDriverDriverFactory/RichardsTestSuite/SetUp/TestConfiguration.cs)** object which is static, therefore reads the App.config at runtime and creates an instance for us to use throughout the tests. In the example project below I only have driver specific values, however in actual projects I also include any test config in there, e.g. username, passwords, DB connections etc.
*   **[DriverSetup](https://github.com/FriendlyTester/WebDriverFactoryExample/blob/master/WebDriverDriverFactory/RichardsTestSuite/SetUp/DriverSetup.cs)** this is specific to NUnit, but I use the SetUpFixture to deal with the requesting of a driver instead of doing this in each test. Because the namespace on this class is the highest, each test will call this code first before its own SetUp.
*   **[TestDriverFactory](https://github.com/FriendlyTester/WebDriverFactoryExample/blob/master/WebDriverDriverFactory/RichardsTestSuite/SetUp/TestDriverFactory.cs)**, this is where we interpret the **[TestConfiguration](https://github.com/FriendlyTester/WebDriverFactoryExample/blob/master/WebDriverDriverFactory/RichardsTestSuite/SetUp/TestConfiguration.cs)** object to determine which **[DriverFactory](https://github.com/FriendlyTester/WebDriverFactoryExample/blob/master/WebDriverDriverFactory/WebDriverDriverFactory/WebDriverFactory.cs)** configuation we require. This is decided based on the "Remote" value, if true we create a **[RemoteWebDriverConfig](https://github.com/FriendlyTester/WebDriverFactoryExample/blob/master/WebDriverDriverFactory/WebDriverDriverFactory/Configurations/RemoteDriverConfiguration.cs)**, if false a **[LocalWebDriverConfig](https://github.com/FriendlyTester/WebDriverFactoryExample/blob/master/WebDriverDriverFactory/WebDriverDriverFactory/Configurations/LocalDriverConfiguration.cs)**.  
The **[TestDriverFactory](https://github.com/FriendlyTester/WebDriverFactoryExample/blob/master/WebDriverDriverFactory/RichardsTestSuite/SetUp/TestDriverFactory.cs)** will then pass those configs to the **[DriverFactory](https://github.com/FriendlyTester/WebDriverFactoryExample/blob/master/WebDriverDriverFactory/WebDriverDriverFactory/WebDriverFactory.cs)** and expect a driver back that meets the requirements.
* **[DriverFactory](https://github.com/FriendlyTester/WebDriverFactoryExample/blob/master/WebDriverDriverFactory/WebDriverDriverFactory/WebDriverFactory.cs)**, this is where the required driver is created. It's a simple switch statement on the browser name.

![Driver Factory Visualisation]({{site.url}}/images/blogpostimages/webdriverfactory.jpg)

An example project can be viewed here on my [GitHub page](https://github.com/FriendlyTester/) and click WebDriverFactoryExample. I have added extensive code comments so hopefully all can follow. Also have an example PageObject and Test so you can see it all together. Changing the browser name to those in the switch statement will work fine, remember if you are going to try it with RemoteWebDriver ensure to have it running and the correct browser versions registered on the nodes.

<span style="color: red;">NOTE</span>: To really take advantage of all the browsers, ensure to use the interface IWebDriver throughout your tests and PageObjects, as all drivers are contracted to this interface you won't have any issues with different browsers. For instance not all drivers (haven't checked recently) have the _driver_.FindElementBy_Something,_ so if you've written your tests with a specific driver and not IWebDriver your tests could fail when using drivers that don't have such a method. So stick to the FindsBy attribute and if you have to use the driver directly ensure to use _driver._FindElement(By._Something_) or FindElements.

So what you have now is the ability to control the driver used to run the test suite via config. This allows you take advantage of CI tools such as Jenkins to run your tests potentially in parallel against multiple browsers. Via a CI you could have a main Job, "Run Test Suite" which could trigger down stream jobs of "Run Test Suite - IE", "Run Test Suite - Chrome" and so forth by having those downstream jobs overwrite the app.config before the test run. Or you could have multiple config files in your solution, such as chrome.config, ie.config etc and have your CI tools delete app.config and rename the required driver.config to app.config (this is required for NUnit) thus allowing you to have the configs in source control and not in build jobs.  

In my example I have the WebDriverFactory as a separate project, but to take this one step further, you could turn the separate project into a NuGet package (you would obviously need an internal NuGet server to do this), this will then allow you to add this package to any project where you require WebDriver, for example if you had multiple products, or multiple test suites for a product.  

In doing this, if you execute your tests locally, you can store the additional driver services in this project and have them pulled into projects via NuGet. These would be InternetExplorerDriver, ChromeDriver and PhantomJS for example. It would then be possible to have your CI download the latest version of this package for you, making it very easy to update all your projects.  

Thanks to Neil Kilbride and James Barker from [Esendex](http://www.esendex.co.uk/) for showing me the NuGet approach and the enhancements for dealing with local and remote config objects.