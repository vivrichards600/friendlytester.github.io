---
layout: post
title: I Call Them ControlObjects
date: '2012-11-27T16:35:00.001Z'
author: Richard Bradshaw
tags:
- Page Objects
- selenium
- ControlObjects
- webdriver
modified_time: '2012-11-27T21:09:56.345Z'
blogger_id: tag:blogger.com,1999:blog-8318661666872903125.post-1533674344765237404
blogger_orig_url: http://www.thefriendlytester.co.uk/2012/11/i-call-them-controlobjects.html
permalink: /2012/11/i-call-them-controlobjects.html
---
Am not 100% sure what other people are going such objects however am I calling them "ControlObjects".  

By a ControlObject I mean a common UI control used throughout your application such as SelectBox, Tables, Lists, plus controls specific to your application, such as we use several of the JQueryUI controls like MultiSelectBoxes and Toggle switch.  

If your familiar with WebDriver you will already know that there is a Selectbox ControlObject already available in the OpenQA.Selenium.Support.UI.SelectElement namespace, but I believe that is the only one.  

I have a separate Project within my solution for ControlObjects, mainly because they are used across a lot of our applications. You might not have noticed already but within your PageObjects you have probably already written code to handle the same control, so ControlObjects could work for you.  

Obviously there is a dependency to some degree that the controls are always used in the same way in each instance, but you can control this by working close to the developers, or if you are the developer always use it the same way, then using ControlObjects should save you a lot of time, and also speed up the creation of PageObjects and in turn Tests. They could also assist you in creating more methods in your PageObjects because you have already written the complex code in the ControlObject.  

Maintainability is also a factor, for example if the company decides to use a new control for MultiSelectBoxes you only need to change your ControlObject and all your tests should still function.  

Here is how I use ControlObjects in my code: 

{% highlight csharp %}
public void PopulateUsernameField(string username)
{
using OpenQA.Selenium;  
using Sandpit.ControlObjects;  
namespace Sandpit.PageObjects.Lynx  
{  
  public class ExamplePageObject : DefaultPage  
  {  
    private Dictionary<string, By> _locators; private MultiSelectBox _UserMultiSelectBox = null;  
    
    public ExamplePageObject(IWebDriver webDriver) : base(webDriver)  
    {  
      _locators = Locators(); //Locators //Wait //Assert }  
      private Dictionary<string, By> Locators() { Dictionary<string, By> locators = new Dictionary<string, By>();  
      locators.Add("mltUsers", By.Id("UserIds"));  
      return locators;  
    }  
    private void GetUserMultiSelectBox()  
    {  
      _UserMultiSelectBox = new MultiSelectBox(WebDriver.FindElement(_locators["mltUsers"]), WebDriver);  
    }  
    public bool SelectAUser(string user)  
    {  
      if (_UserMultiSelectBox == null)  
      { GetUserMultiSelectBox();  
      }  
      return _UserMultiSelectBox.SelectSingleItemByFullName(user);  
    }  
    public bool RemoveAUser(string user)  
    {  
      if (_UserMultiSelectBox == null)  
      {  
        GetUserMultiSelectBox();  
      }  
      return _UserMultiSelectBox.RemoveSingleItemByFullName(user);    
    }
}
{% endhighlight %}
 
The reason for having the ControlObject as a property is that, its likely you are going to use several methods from your page object, so we can use the same ControlObject instead of creating a new one each time. The saving is probably not noticeable, but I feel its good practise.  

I will tidy up some of the ControlObjects I have created and share them at a later date.  

Do you use ControlObjects? What do you call them? Love to hear how other people approach this.