---
layout: post
title: Interrogating DNS Caches
image: http://farm6.staticflickr.com/5126/5368873119_8e5c80068e.jpg
image_credit: Nick.Fisher 
tags:
- tools
status: publish
type: post
published: true
meta:
  _edit_last: '1'
  _wp_old_slug: interrogating-dns-caches-cache-snoo
  _headspace_page_title: Interrogating DNS Caches
---
In the book, [Hacking: The Next Generation](http://www.amazon.com/gp/product/0596154577/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&tag=breharsblo-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=0596154577), I cover a topic referred to as DNS cache snooping. Cache snooping is not a new attack and has been around for quite a while. However, I couldn't find a good piece of code that would interrogate DNS servers, so I created code to do it.

I put it in Appendix B in the book, but figured it would be nice to have some place to copy & paste it.

## Cache_Snoop.pl
Let me know if you have any questions or comments. Have Fun!

<script src="https://gist.github.com/1997866.js?file=Cache_Snoop.pl"></script>