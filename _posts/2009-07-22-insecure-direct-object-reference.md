---
layout: post
title: Insecure Direct Object Reference
tags: [vulnerabilities, owasp]
series: the Owasp Top 10
status: publish
image: http://farm4.static.flickr.com/3167/2538415572_b61ff16742.jpg
image_credit: tim_norris
---
{% include series.html %}

### What is Insecure Direct Object Reference
Insecure Direct Object Reference is when a web application exposes an internal implementation object to the user. Some examples of internal implementation objects are database records, URLs, or files.

An attacker can modify the internal implementation object in an attempt to abuse the access controls on this object. When the attacker does this they may have the ability to access functionality that the developer didn't intend to expose access to.

### Examples of Insecure Direct Object Reference
Insecure direct object reference is a very broad category of vulnerabilities. There are many examples of these types of vulnerabilities found in the wild by other names. Open Redirects and Directory Traversal are two classic examples of an insecure direct object reference vulnerability.

### Open Redirect
This is where the web application has a parameter that allows the website to redirect the user somewhere else. If this parameter is not implemented properly using a white list, attackers can use this in a phishing attack to lure potential victims to a site of their choosing. More information about Open Redirects can be found <a href="http://cwe.mitre.org/data/definitions/601.html">here</a>.

### Directory Traversal
Assume a web application allows for a file to be rendered to a user that is stored on the local machine. If the application isn't verifying what files should be accessed, an attacker can request other files on the file system and those will also be displayed.

For instance, if the attacker notices the URL:

	http://misc-security.com/file.jsp?file=report.txt

The attacker could modify the file parameter using a directory traversal attack. He modifies the URL to:

	http://misc-security.com/file.jsp?file=**../../../etc/shadow**

Upon doing this the /etc/shadow file is returned and rendered by file.jsp demonstrating the page is susceptible to a directory traversal attack.

### How Do You Prevent Insecure Direct Object Reference From Occurring in Your Application
As always, web application developers can prevent these attacks through good planning.

Developers **should** use indirect reference maps. Direct mapping can easily be guessed by attackers. Developers should avoid exposing private objects to users. File names, external/internal URL's, and database keys are all examples of things that should not be displayed to the user.

If direct objects must be used, then the developers should ensure through validation that the user is authorized to view what they are attempting to access. In the directory traversal example, determine what files the user should access and only grant them privileges to those files. This is known as an "accept known good" approach and is always a good idea when it comes to developing secure applications.