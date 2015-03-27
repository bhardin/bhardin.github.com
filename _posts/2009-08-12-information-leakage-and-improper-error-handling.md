---
layout: post
title: Information Leakage and Improper Error Handling
tags: [vulnerabilities, owasp]
series: the Owasp Top 10
image: http://farm4.static.flickr.com/3154/3058009462_f59cb3ed1a_b.jpg
image_credit: bitzcelt
type: post
---
{% include series.html %}

## What is Information Leakage and Improper Error Handling
Information leakage and improper error handling happen when web applications do not limit the amount of information they return to their users. A classic example of improper error handling is when an application doesn't sanitize SQL error messages that are returned to the user. Upon receiving a SQL error message an attacker will immediately identify a place for identifying [injection flaws][injection flaws].

Although preventing error messages from reaching users will not prevent vulnerabilities from occurring, it does make it difficult for an attacker to accomplish his goal and it is also an industry best practice.

## An Example of Information Leakage
Common examples of information leakage include helpful error messages and service banners. Developers and system administrators often forget or disregard how something as simple as a server banner can be used by an attacker.

As an example, if your server is running Apache and you return the server header with your responses, an attacker could leverage this to fingerprint the version of the web server you are running.

Using nmap an attacker could send a few packets at your application server using the command, `nmap -sV -p 80 192.168.1.100` and identify the following:

	Interesting ports on 192.168.38.132:
	PORT    STATE SERVICE  VERSION
	80/tcp  open  http     Apache httpd 1.3.37

The attacker has now identified your Apache version and can now search for vulnerabilities affecting that version of Apache.

## An Example of Improper Error Handling

Attackers attempt to leverage information that applications freely volunteer. If an application displays an error messages to the user (attacker), there is not guarantee that the user will "ignore" this error message.

Developers typically forget to properly handle their error messages. Stack traces and SQL errors are two examples of very commonly forgotten errors that should be handled.

Attackers love seeing error messages such as:

	ERROR:  unterminated quoted string at or near "'''"

## Preventing Information Leakage and Improper Error Handling

When developing applications, developers should assume all of the users are hostile. As a developer having this mentality will greatly aid you in [developing secure applications][secure applications].

All information returned from a web server should be reviewed for potential leakage. This can be automated by a QA team using a fuzzer.

Developers should also use a standard exception handling architecture to prevent information leakage from occurring. This architecture should be used and shared across the entire development team. **All developers should handle their errors the same way**.

Developers or product managers may also decide to create a default error handler which returns sanitized error messages for most users in production for all error paths. Doing this will greatly reduce the attack surface that can be exploited through error message generation.

[secure applications]: {% post_url 2013-01-03-how-to-secure-any-application %}
[injection flaws]: {% post_url 2009-07-08-injection-flaws %}