---
layout: post
title: Malicious File Execution
series: the Owasp Top 10
tags: [vulnerabilities, owasp]
image_url: http://farm9.staticflickr.com/8309/8034655438_63765a6872_b.jpg
image_credit: drakegoodman
image_credit_url: http://www.flickr.com/photos/drakegoodman/
category: post
---
{% include series.html %}

## What is Malicious File Execution
Some web applications allow the user to specify input that is used directly into file streams or allows the user to upload files to the server. At a later time the [web application accesses the user supplied input in the web applications context][2]. By doing this, the web application is allowing the potential for malicious file execution.

When an application allows user to modify file streams, the application is trusting the user to operate within certain _rules_ and assumes the [user won't break these rules][1].

Without preventions in place an attacker can exploit the rules by attempting to include files stored on remote or local file systems. Web applications vulnerable to malicious file execution __break the simple security rule of trusting user input__. Allowing malicious file execution to exist in a web application can lead to the complete compromise of the server.

## Examples of Malicious File Execution

Typical examples of malicious file execution are remote file includes and local file includes. __Most people think of these as PHP functions, however, that does not mean an ASP or JSP server isn't susceptible to malicious file execution vulnerabilities.__

Here is a common example, Imagine the PHP function:

	include $_REQUEST['filename'];

An attacker can use this include to specify their own file name. They could use a remote URL which they control, say `http://evilhacker.com/attack.php`

## How Do You Prevent Malicious File Execution

Malicious file execution needs to be prevented from the design stage. If the design stage of the web application has already been completed, then extra precaution needs to be taken.

Developers need to pay particular attention to code access security mechanisms to ensure that file names supplied by or influenced by the user do not allow security controls to be obviated.

Web applications should not allow users to insert input into a server-based resource. However, if the ability is needed, then developers need to be extra cautious about what input they accept. Developers should insure that file names supplied by the user do not allow security controls to be bypassed.

General preventions that can be taken include:

* Strongly Validating user input using an only _accept known good_ input.
* Adding firewall rules that prevent web servers from making new connections to external websites will aid in preventing remote file include vulnerabilities.
* Implementing a sandbox to isolate applications from one another.

Depending on your environment, specific preventions can also be taken. For instance, with J2EE developers should ensure that the security manager is enabled and properly configured. More information about specific environment preventions can be found at [OWASP's full article](http://www.owasp.org/index.php/Top_10_2007-A3) on malicious file execution.

[1]: /2012/12/dont-give-developers-access-to-the-operating-system/
[2]: /2013/01/how-to-secure-any-application/
