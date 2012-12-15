---
layout: post
title: Understanding Cookies
tags: [security basics]
status: publish
image: http://farm4.staticflickr.com/3325/4555506269_5515869189.jpg
image_credit: nettsu
type: post
published: true
meta:
  _edit_last: '1'
  _headspace_page_title: Understanding Cookies
---
When testing web applications, penetration testers should look at how the session is handled. Session management is commonly overlooked by developers and system administrators. It is so often overlooked that it is one of the OWASP Top 10, refereed to as [Broken Authentication and Session Management](/2009/08/broken-authentication-and-session-management/).

This article will cover certain attributes that cookies typically have. In the future we will address how to use attribute tags to help aid developers in securing their applications. This article assumes the reader has a basic understanding of what a cookie is.

Here is a sample HTTP response. This is what the server responds with after a client request is made. The response has been edited for brevity.

	HTTP/1.1 200 OK
	Content-Type: text/html
	Set-Cookie: session=YnJldHQ6bXlwYXNzd29yZA==;expires=Thu, 30 Dec 2037 00:00:00 GMT;path=/;domain=.misc-security.com
	Content-Length: 8400

For those unfamiliar with cookies, a cookie consists of a name/value pair. In this case the cookie name is _session_ and the cookie value is _YnJldHQ6bXlwYXNzd29yZA==_

Following the cookie name/value pair are the attribute/value pairs that apply to that cookie and are delimited with a semicolon. In this example their are three attribute/value pairs: expires, path, and domain.

## Expires Attribute

	expires=Thu, 30 Dec 2037 00:00:00 GMT
	
The expires attribute is used to tell the browser when the cookie should no longer be used. Browsers will cache this cookie locally until the expires date is reached. When the expires date is reached the browser will stop sending the cookie after the browser is closed. In our example the cookie will remain valid until December 30th, 2037.

## Path Attribute
	
	path=/

The Path attribute specifies the subset of URLs to which this cookie applies. In this case, the cookie will be sent for any request to this server. If a user requests /bobsapp/ or /tomsapp/ this cookie will be sent.

## Domain Attribute
	
	domain=.misc-security.com
	
The Domain attribute specifies the domain for which the cookie is valid.  An explicitly specified domain must always start with a dot. In our example, this cookie will be sent to misc-security.com and any sub-domains of misc-security.com (e.g. asparagus.misc-security.com).

In a future article we will continue looking at the attribute/value pairs that cookies can have and will even revisit these attributes explaining how each needs to be understood to securely handle a user's session.

## Further Reading

* [RFC 2109 - HTTP State Management Mechanism](http://www.ietf.org/rfc/rfc2109.txt)
* [RFC 2965 - HTTP State Management Mechanism - New VERSION!!!](http://www.ietf.org/rfc/rfc2965)
