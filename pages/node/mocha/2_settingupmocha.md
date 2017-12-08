---
layout: page
title: Setting up mocha
permalink: /node/mocha/lessons/settingupmocha.html
description: "How to set up Mocha with NPM"
comments: true
signoff: true
---
[Course Home](../../course) \| [Download and Install Mocha](https://mochajs.org/#installation){:target="_blank"}

Installation of Mocha is straight forward and done via Node package manager (NPM). To install execute the following command in your terminal or command line:

```shell
npm install --global mocha
```

The global parameter means that rather than installing Mocha to a local folder within your project root folder, Mocha is installed in your home directory and can then be used in your terminal or command line at any time against any project.

You can test this out by opening a new terminal/command line window and calling Mocha to see if it's installed correctly:

```shell
> mocha --version
4.0.1
```

### [Next Lesson &#10132;](../lessons/creatingtestsinmocha.html)
