---
layout: post
title: "The Facebook Like Button is a Web Bug"
image: http://farm5.staticflickr.com/4110/4982662859_5b5726c9ca.jpg
image_credit: Bethan
category: 
tags: [facebook, infosec, bugs]
meta_description: 
---
The Facebook like button is the most interesting product Facebook publishes. After asking numerous people what they think the Facebook button is for and hearing their responses, I realize not many people know what Facebook actually gets from having their like button distributed all over the Internet.

Most people think the like button is a way for advertisers to have a continual channel for pushing content to their users. This is true and what Facebook sells to the general population. But, the like button is really a cleverly disguised web bug.

## Web Bugs

In the early days of websites, there were [web bugs](http://en.wikipedia.org/wiki/Web_bug). Although not in common use, some services like Mailchimp still use web bugs to track how many people "open" emails they send.

Privacy concerns around web bugs hit epic proportions at one point but never got the same mass hysteria in conspiracy theory circles as cookies and knowledge and privacy concerns about web bugs died.

A web bug is a 1x1 image which is included in a piece of HTML code. When your browser accesses any web site all of the images on the page can either be loaded from the page you are visiting or from external sources. When your browser makes an external source request, the site receiving the request knows where the request originated.

For example, when you visited this page your browser made a request to Flickr to access the image at the top of this page. When your browser made this request a header is attached which says where the request originated. This is called a referrer header. The request to Flickr looks like this.

{% highlight http %}
GET /2192/2058198168_fac0e21ee1.jpg HTTP/1.1
Host: farm3.staticflickr.com
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:15.0) Gecko/20100101 Firefox/15.0.1
Accept: image/png,image/*;q=0.8,*/*;q=0.5
Accept-Language: en-us,en;q=0.5
Accept-Encoding: gzip, deflate
Proxy-Connection: keep-alive
Referer: http://bretthard.in/2012/10/the-security-and-developer-passion-dilema/
Pragma: no-cache
Cache-Control: no-cache
{% endhighlight %}

From the host header you'll notice your browser is making a request to farm3.staticflickr.com. When farm3 receives this request they will know the following just from the referrer header.

1. Someone has visited http://bretthard.in
2. What page they visited.
3. Which of their resources was used on the page. In this case /2192/2058198168_fac0e21ee1.jpg

## The Facebook Like Button

The like button works exactly like the Flickr image. The difference is additional header is sent. A cookie is sent along with the request. This cookie states who you are and is required for any site which requires authentication.

What makes the like button so interesting is even if you don't "click" the like button Facebook knows what site and page you visited. When your browser visits the page, it makes a request to Facebook asking for the resource.

This of course relies on the like button being on the page accessed and if you are logged into Facebook. Oh wait! You don't have to be logged in for Facebook to track you. Nik Cubrilovic noticed [logging out of facebook doesn't destroy all the cookies](http://www.nikcub.com/posts/logging-out-of-facebook-is-not-enough), only the authentication cookies. So Facebook can still track you across the Internet.

This means Facebook has a nice history of sites you visit and articles you read whether you are or are not logged out of Facebook. The only solution seems to be using an incognito window. Even then, Facebook still knows the IP you are coming from so logging out may not be enough.

## Value the Data

So what? So Facebook knows where I have been and what I have been reading. If you aren't a privacy advocate, not a problem. In fact, I argue the concept of privacy is changing and people don't care about it anymore.

What is interesting is Facebook cares more about the [tracking than they do liking](http://www.jwz.org/blog/2011/09/surprise-facebook-doesnt-like-privacy-countermeasures/). The data, as facebook knows, is incredibly valuable. Most companies, [including Google](https://developers.google.com/+/plugins/+1button/), would love to have the data.

Reading history can determine how to better target ads to you. You are more inclined to [purchase products](http://www.comscore.com/Press_Events/Presentations_Whitepapers/2012/The_Power_of_Like_2-How_Social_Marketing_Works) and [click ads](http://doubleclickpublishers.blogspot.com/2011/09/1-now-making-display-ads-more-relevant.html) which are more relevant to you. Which means they make more profit.
