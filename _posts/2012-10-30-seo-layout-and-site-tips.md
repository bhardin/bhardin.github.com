---
layout: post
title: "SEO: Layout and Site Tips"
image: http://farm5.staticflickr.com/4028/4711121074_c820ccca58_b.jpg
image_credit: Double--M
category: 
tags: [SEO, good enough, design]
meta_description: Quick things that I have found about how to layout your site in order to be SEO efficient. 
---

Every time I create a site layout, I'm always concerned about how to make the site SEO compatible. I'm not talking about hacking the site so that it handles all the [new algorithms][1] that Google comes out with. I'm talking about just the basics. 

The information I can find is always scattered all over the place so I figured for my own reference I would write down all the things I currently know. As I find new things I will add them to this page, so feel free to bookmark this page as a reference.

Please note. If your on Wordpress or an out-of-the-box theme most of this stuff is handled for you. But I like diving into the nitty gritty.

## Understand Keywords
Keywords are the fundamental thing to understand about SEO. Keywords are the terms people search for in order to find your site. This is what people are constantly battling for with SEO.

You should use keywords _a few_ times in your post. DO NOT over do keywords. There is nothing worse than finding a page that is specifically trying to game the engine. Your content will look nasty and unreadable to humans. If you don't follow this advice I guarantee you at some point you will be penalized by Google.

In order to get the [long tail][] use a keyword phrase. A keyword phrase is going to be 3 to 4 words grouped together that people would search for in order to find your content. Use this phrase at most 2 - 4 times throughout the content of your page. That's it. 

This should happen naturally as your write. Don't over do it, the content looks lame and unnatural if you do. I don't even think about keywords when I write anymore. I just write. I did at one point think this was important and even wrote a [Jekyll SEO keyword tool][5]. 

## Title Tag 
The title of your post is the [most important][3] factor. You want whatever content you are writing about to be in the title of the page. A title is the first thing humans look at to determine whether what they are about to read is interesting to them. Like humans, search engines use the title for indexing relevant content to keywords. Whatever your post is about should be prominent in the title of the post.

Also, don't put your brand name before what the content is about. The closer the word is to the left of the title the more relevant the content must be.

__Good:__ SEO: A Quick Blog Primer - Constantly Learning

__Bad:__ Constantly Learning - SEO: A Quick Blog Primer

## Permalink Structure
The title of your post should be in the url. Wordpress and most modern blog frameworks, including [Jekyll][6] by default put the title of the post in the url.

__Good:__ http://www.mysite.com/maximizing-seo/

__Bad:__ http://www.mysite.com/11345/p207.html

## Subfolder or Subdomain
This is one of the more interesting arguments in the SEO world. To answer this question it [depends on your use case][9].

> Subfolders are best for most cases. If your site has a fairly narrow topical focus (movie reviews, an SEO blog, a strictly news site) then subfolders allows you to transfer a lot of the authority that your root domain has to these pages to help them rank quickly.
> If, on the other hand, your site covers a wide variety of topics (product reviews, in-depth book reviews) or has a lot of user generated content (like HubPages, WordPress or Blogger), then separating your content into subdomains will net greater results, assuming you have the SEO resources to do so. In the former case, a tighter topical focus shows Google that your site is focused and relevant, allowing it to rank higher for associated keywords. In the latter, separating user generated content into its own subdomain allows Panda to penalize low-quality content and leaves the quality content producers untouched.

If you do want a folder, you can use a [reverse proxies][8] to accomplish it.

## Alt Tags on Images
Tag all of your images with an alt tag. Search engines use alt tags for credit towards the keywords.

#### Example

     <img src="http://mysite.com/coolpic.jpg" alt="cool pic" title="cool pic">

Alt tags for images can be done fairly simple in Jekyll as follows:

     <img src="http://mysite.com/coolpic.jpg" alt="{{ "{{ page.title " }}}}" title="{{ "{{ page.title " }}}}">

## Get Rid of Broken Links
Web crawlers judge you by the overall impression of your page. Broken links piss off humans just as much as bots. You will often link to content external to your site which you don't control. This is where using [Google Webmaster Tools][3] is sweet. Webmaster tools will help you find broken links from and to your site.

Once Webmaster tools are setup. Click Health -> Crawl Errors -> Not Found

![webmaster tools pic](http://cl.ly/image/3E0w1p280Z20/Screen%20shot%202012-10-30%20at%201.57.42%20PM.png)

## Duplication caused by pagination
Only do the following if you have a sitemap.xml or else some of your content won't be found. Upon [doing research][10], I found out that google penalizes sites that have duplicate content. This means pagination can screw your site.

With pagination you have multiple pages that have the same content. Google sees a bunch of the same content as bad. A simple [fix][11] is to use the `rel=next` and `rel=prev` directive on your tags.

#### Example
	<a href="/page/1" title="Next Page" class="next" rel="next">Older Posts</a>

## Frequent Updates & Great Content
Although only technical things have been mentioned the single most important thing you can do is [write great content and post frequently][12].

When people are using search engines they are trying to find a solution to a problem. People tweet things they find interesting. People [like][4] things they want to tell their friends about.

Fundamentally people share and find content they are looking for. In order to be the content they find you need to teach them something. Write content that people want to learn and they will share with others. Always keep this in mind when writing content.

## Link to Your Own Content
Don't over do this. It looks like crap if you do. If you have more than 1 link per 250 words than you are over doing it.

Links help people and search engines navigate your site. Internal links with good anchor text has an impact on your page position in Google results.

## One H1?
Dave Doolin, the author of hRecipe, says:

> Matt Cutts states in this video that multiple h1 elements is something Google watches for, and may penalize if the useage [sic] doesn't make sense.

> Since Google gets to decide what makes sense, I'm keeping hRecipe titles marked up as h2 elements.
Also, and this is important, hRecipe is open source under the GPL. Everyone is free to modify, or have someone else modify the plugin any way they see fit.

So Google decides what makes sense for layout. Don't over do it.

[1]: http://www.seomoz.org/google-algorithm-change "Changes to Google index algorithm"
[3]: http://www.searchenginejournal.com/on-page-seo-factors-which-ones-have-the-most-impact-on-rankings/40926/
[4]: /2012/10/the-facebook-like-button-is-a-web-bug/
[5]: /2012/06/jekyll-and-seo-optimization/
[6]: https://github.com/mojombo/jekyll/wiki/Permalinks
[7]: /2012/10/find-long-tail-keywords-using-google-analytics/
[8]: http://www.seomoz.org/blog/what-is-a-reverse-proxy-and-how-can-it-help-my-seo
[9]: http://www.whitefireseo.com/site-architecture/subdomain-or-subfolder-post-panda/360/
[10]: http://searchengineland.com/five-step-strategy-for-solving-seo-pagination-problems-95494
[11]: http://googlewebmastercentral.blogspot.com/2011/09/pagination-with-relnext-and-relprev.html
[12]: http://www.codinghorror.com/blog/2007/10/how-to-achieve-ultimate-blog-success-in-one-easy-step.html
[13]: http://website-in-a-weekend.net/building-traffic/on-page-seo-multiple-h1-elements/