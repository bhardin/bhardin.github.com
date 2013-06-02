---
layout: post
title: "How To Setup an RSS Feed with Feedburner The Right Way"
image: http://farm4.staticflickr.com/3202/2459534903_fb552595e8_b.jpg
image_credit: Martin Fisch
image_credit_url: http://www.flickr.com/photos/marfis75/
tags: [tech, blogging]
meta_description: Are you using feedburner the right way? I wasn't and I've been using it for over 5 years.
---

I love Feedburner and originally setup my RSS feed on to use feedburner. I was researching how to use the feedburner API when I discovered Google has [deprecated the API][1].

[1]: https://developers.google.com/feedburner/

The announcment of the API being deprecated led bloggers into mass hysteria. They concluded Google will be [shutting down the feedburner service][6]. Even Dave Winer commented on [Google and Feedburner][4]. The feedburner service may go away or it may remain but in my research I discovered the way I had been using feedburner isn't [the best way][5].

The way most people use feedburner is to use the URL feedburner provides. This means your feed will look something like this.

	http://feeds.feedburner.com/myawesomesite.

Come to find out, this is a bad idea. By using the raw feedburner link, you lose the ability to migrate away from it. So, if feedburner was shut down you would lose your readership.

Since Larry Page is focusing on core Google properties and [shutting down other services][2] I figured it's better to merge stuff over now, just to be safe.

[2]: http://suckmytrend.com/2012/07/07/what-has-google-shut-down-after-larry-page-took-over-as-ceo/
[4]: http://threads.scripting.com/8312ByDw/theFutureOfFeedburner
[5]: http://www.feedblitz.com/one-thing-to-do-to-get-your-rss-right/
[6]: http://www.adaptistration.com/blog/2012/10/10/did-you-know-google-is-shutting-down-feedburner/

## The Right Way
You want to host the actual feed from your domain, but still use feedburner for distribution. 

First, Log in to [feedburner][3] and click on _My Accounts_ at the top right of the screen. Then click _MyBrand_ on the left side. This page has all the information you need in order to host the link on your own site.

[3]: http://feedburner.google.com/fb/a/mybrandSubmit

Once step you need to take is adding a CNAME record to your domain. This is done through your hosting provider. Mine for example was `1l1dqzb.feedproxy.ghs.google.com`

![Feedburner MyBrand](http://cl.ly/image/3d070Y2X463N/Screen%20shot%202012-11-14%20at%2012.07.44%20PM.png)

_Note:_ When I first did this, I was given null.feedproxy.ghs.google.com. However, after waiting a few minutes it refreshed and gave me the right server to use.

Once you are done with the DNS record you need to replace your old feedburner url with your new _personal rss_ url. Mine for instance is:

	http://feeds.bretthard.in/bretthardin

Don't forget to include the path. In my case `/bretthardin`. If you don't include your path, it won't work.

If you have any questions, feel free to ask.