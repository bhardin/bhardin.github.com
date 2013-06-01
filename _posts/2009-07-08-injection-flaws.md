---
layout: post
title: Injection Flaws
series: the Owasp Top 10
image: http://farm1.staticflickr.com/91/223731385_1787aa082c_b.jpg
image_credit: Dave Campbell
image_credit_url: http://www.flickr.com/photos/limowreck666/
tags: [owasp, vulnerabilities]
---
{% include series.html %}

## What are Injection Flaws

Injection flaws are a class of security vulnerability that allows a user to "break out" of the web application context. If your web application takes user input and inserts that user input into a back-end database, shell command, or operating system call, your application may be susceptible to an injection flaw.

A user exploits this by breaking out of the intended "context" and appends additional and often unintended functionality. **By allowing injection flaws in your application you are allowing an attacker to create, read, update, or delete any arbitrary data available to the application**.

## Examples of Injection Flaws

There are many types of injection flaws. The most common being SQL injection. In addition there is [LDAP injection](http://www.owasp.org/index.php/LDAP_injection), [XML Injection](http://projects.webappsec.org/w/page/13247004/XML-Injection), [XPath Injection](http://www.owasp.org/index.php/XPATH_Injection), [OS command injection](http://www.owasp.org/index.php/OS_Command_Injection), and [HTML injection](http://misc-security.com/blog/2009/05/xss-cross-site-scripting/). Injection flaws however are not limited to just these. If your web application inserts user input into any interpreter or process, your web application can contain these vulnerabilities. You can see an example of how an injection flaw works here.

## How Do You Prevent Injection Flaws

Before calling an external function, verify that the data is what you expect. This is referred to as validation. For instance, if you expect your function to be passed a string that contains a user's first name, should it contain any special characters? `John` is a valid name. But, `J<o>hn` isn't. Both user names need to be ran through a validation function and in order for the web application to determine whether the data is what the developer expects.

There are certain exceptions however that can get you in trouble. Single Quotes (') are valid characters in people's last names. However, if you allow a single quote in a last name field, you can be introducing SQL injection into your application.

**In cases where you need to allow a single quote ('), in addition to validation, you should also sanitize (encode) the input**. Sanitizing the input is determining a way that the input can be transformed into "non-threatening" data. This needs to be done on a case by case basis.

For example, If you understand that the sanitized data will always be returned in a browser, you could simple HTML encode or URL encode the string. A quote becomes, `&quote;` (HTML encoding) or `%27` (URL encoding).

When sanitizing input, it is important to make sure you decode the string before it is displayed to the user. It can be embarrassing if `Tim O'Brien` is printed as: `Tim O%27Brien`