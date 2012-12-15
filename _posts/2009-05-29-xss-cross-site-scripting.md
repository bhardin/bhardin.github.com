---
layout: post
title: Understanding Cross-Site Scripting (XSS)
tags: [vulnerabilities, owasp]
series: owasp-series
image: http://farm3.static.flickr.com/2557/3671317489_b797daaf22.jpg
image_credit: Urban Woodswalker
---

{% include series.html %}

If it hasn't already, Cross-Site Scripting (XSS) will soon be replacing SQL injection as the new buzzword in the security sector. XSS will continually be a topic on this blog as well as others [1](http://holisticinfosec.blogspot.com), [2](http://blog.skeptikal.org/), [3](http://jeremiahgrossman.blogspot.com/), [4](http://ha.ckers.org/blog/).
	
Due to this fact, I think a primer would be a good idea for those who don't know or understand this problem.

Many articles have been written about Cross-Site Scripting and if you want to have a better understanding of the problem, I suggest you read those documents (Links at the bottom of the post).

Basically, There are 3 types of Cross-Site Scripting:

*	Stored/Non-Reflective/Persistent Cross Site Scripting (User visits the XSS'ed page)
*	Non-Stored/Reflective/Reflected Cross Sited Scripting (User clicks a link that embeds the script into the loaded page)
*	[DOM Based Cross Site Scripting](http://www.webappsec.org/projects/articles/071105.shtml)

All of these names make it confusing for a first timer to understand XSS. There really should be a better web application security standards organization. Here is a breakdown of Persistent XSS and Reflective XSS. These are the big two that most people talk about when they are referring to Cross Site Scripting. If you understand these well, you will be able to participate in 90% of XSS conversations.

### Persistent Cross-Site Scripting

Persistent XSS is arguably more dangerous than reflective XSS. This attack embeds the malicious script permanently into the web application. The script will then wait until people access the page it is located on.

Here is an attack using Persistent Cross-Site Scripting:

1. The victim visits a website they trust, amazon.com.
2. A script has been inserted by an attacker on a page they happen to visit while on amazon.com.
3. The script executes in the context of amazon.com.
4. The victim is then compromised.

Note: Obviously, someone can increase the chances of the victim visiting this page (step 2) through social engineering, phishing, etc.

### Reflective Cross-Site Scripting

These are the ones the media usually reports on. [1](http://www.spamfighter.com/News-12410-XSS-Vulnerability-Found-in-Recording-Industry-Association-of-America-Website.htm),[2](http://www.darkreading.com/security/application-security/217500479/index.html),[3](http://www.mxlogic.com/securitynews/viruses-worms/six-av-vendor-websites-open-to-xss-attacks095.cfm). In this attack, some type of social engineering is involved for the attack to be successful.

Here is an attack, using Reflective Cross-Site Scripting:

1. The victim gets an email/Instant Message that contains a link.
2. The victim clicks the link. (Requires User Intervention)
3. A script has been inserted by an attacker on the page they then visit.
4. The script executes in the context of that site.
5. The victim is then compromised.

Note: I want to reiterate that this attack requires some type of user intervention (step 2).

### Why is Cross-Site Scripting Bad?

Cross-Site Scripting can lead to all sorts of different exploits, including system compromise. For an attacker to do this, they need to break out of the browser's context. We have seen examples that [breaking out of the browser](http://dvlabs.tippingpoint.com/blog/2009/03/21/pwn2own-wrap-up) is not that hard to do.

In addition, an attacker can also establish a bi-directional channel using iframes. This creates a man-in-the-middle attack. The attacker can then intercept key strokes, use the victim as an intranet port scanner, and even stealing credentials. The attacker is only limited by their knowledge of scripting.

![Example of a bi-directional channel](http://misc-security.com/blog/wp-content/uploads/2011/02/xsstunnel.gif)

Hopefully, this gives you a better understanding of Cross-Site Scripting. Feel free to leave comments if you don't understand something and I will address it in the article.

### Additional Resources

[Cross-Site Scripting (XSS) FAQ](http://www.cgisecurity.com/xss-faq.html)

[OWASP Guide to XSS](http://www.owasp.org/index.php/Cross_site_scripting)

[XSS Video Tutorial (via youtube)](http://www.youtube.com/watch?v=_OhuqDCs2LA)

[XSS Attack API](http://www.gnucitizen.org/blog/attackapi/)




