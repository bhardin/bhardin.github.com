---
category: post
layout: post
title: Cross-Site Scripting in 37Signals Writeboard Application
tags:
- vulnerabilities
status: publish
category: post
image_url: http://farm3.static.flickr.com/2162/2542450115_6576d19185_b.jpg
image_credit: jurvetson
published: true
meta:
  _edit_last: '1'
  _wp_old_slug: ''
  _headspace_page_title: Cross-Site Scripting in 37Signals Writeboard Application
---
While recently using Basecamp, a [37Signals](http://37signals.com/) product, I was writing a collaborative document using [Writeboard](http://writeboard.com/) and noticed that I could insert greater than (>) and less than (<) tags in the document.

Writeboard uses a simpler form of editing, similar to wiki's. If you want to make the line bold, you can use `*bold*` instead of standard HTML, `<b>bold</b>`. However, Writeboard allows the user to markup the text either way. **Well, this was a product that I needed to QA**. I quickly inserted a script source tag, saved the Writeboard, and to my surprise, the script src tag fired.

Upon identifying this I then attempted [Cross-Site Scripting](/2009/05/xss-cross-site-scripting/) 101:
    
      <script>alert (123)</script>;

That was also successful! I was rather blown away that a product used by, Adidas, National Geographic, Kellogg, and USA Today, has never been tested. I am also surprised that no one at any of these companies has ever accidental found this functionality.

I reached out to the security team at 37Signals, and the issue has been fixed and I have been given a nice shout out on the [security page](http://37signals.com/security-response).

I initially thought, "This is what happens when start-ups attempt to rush products to market without doing sanity checking on what they are doing."

However, upon further research, I read the excellent "book" [Get Real](http://gettingreal.37signals.com/toc.php) by Jason Fried the Founder of 37Signals.  These essays explained why this type of vulnerability lived in this system. 37Signals follows a process of quick deployment, development, with fast subsequent revisions. Their concept is get a product out that people can immediately begin using.

![img](http://farm6.static.flickr.com/5214/5454791546_5ec3b4d25f.jpg)

While I agree, this is a great way to develop SaaS products, it is difficult to see how security can come into play with this type of software delivery model. In one essay, Fried, explains the necessity of getting well rounded individuals (generalists) and avoid hiring specialists. Does this mean more software developers should be interested in security?

This is yet to be seen, and I think it is dependent upon your product. There is something however that other companies can learn from 37Signals.

37 Signals did the following when it came to me finding this bug:
*	I initially reached out to Jason Fried on Twitter, and he got back to me in less than an hour.
*	They had a simple way for me to contact them.
*	After reaching out to them, they immediately acknowledged the receiving of my message.
*	They fixed the issue in 4 days.

I commend 37Signals for fixing the issue as fast as they did. Typically, when these issues are reported to companies, they are typically forwarded to the trash.
