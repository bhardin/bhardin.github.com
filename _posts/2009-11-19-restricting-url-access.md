---
layout: post
title: Failure to Restrict URL Access
tags: [vulnerabilities, owasp]
series: the Owasp Top 10
image: http://farm2.staticflickr.com/1376/4602805654_db8b6569fb.jpg
image_credit: Chris Devers
---
{% include series.html %}

## What is the Problem with Failing to Restrict URL Access?
A common problem in web applications, failing to restrict URL access happens when a page doesn't have the correct access control policy in place. Unauthorized users are able to view content that they shouldn't have the ability to view.

Having these vulnerabilities in your application exposes privileged functionality to unauthorized users. It can also create a problem with your record trails. If users can access records without being authenticated the chain of custody is completely broken, preventing good auditing from taking place.

Failing to restrict URL access can also lead to problems with bypassing [session management](/2009/08/broken-authentication-and-session-management/), another of the OWASP Top 10.

## An Example of Failing to Restrict URL Access
Developers attempting to hide functionality from a user by creating "hidden" pages can create a failure to restrict URL access situation.

Hidden pages are defined as pages that don't have a link pointing to them, preventing web crawlers, such as Google, from indexing them. Some developers believe that these pages will never be found by anyone who doesn't know the exact URL. However, attackers typically find these pages through forceful browsing and the access controls on these pages tend to not be restrictive.

Another example of a page that can have this type of vulnerability is one where all of the privileges are checked client side but not server side. Attackers using personal proxies can bypass these client-side privileges and access functionality not intended for them to access.

## How Do You Restrict URL Access
Most of these problems arise from a change in policy happening on paper, but not being implemented thoroughly across the application.

Restricting URL access correctly takes careful planning by the developer and the supporting organization. Organizations can follow some simple rules that will help them in preventing this vulnerability.

*	Developers should never assume users will be unaware of hidden functionality.
*	Administrators should [block access to all file types](http://www.ducea.com/2006/07/21/apache-tips-tricks-deny-access-to-certain-file-types/) that the application doesn't serve.
*	Architects should [develop an access control matrix](http://en.wikipedia.org/wiki/Access_Control_Matrix), helping them to prevent unauthorized users from accessing authorized content. This should be done for every URL and business function of the application.
