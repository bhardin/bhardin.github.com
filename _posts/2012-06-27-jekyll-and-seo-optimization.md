---
layout: post
title: "Jekyll and SEO Optimization"
image: http://farm2.staticflickr.com/1318/1431384410_db38f8a58f.jpg
image_credit: woodleywonderworks
category: 
tags: [blogging, tech, SEO]
---

After moving my blog from Wordpress to Jekyll, I missed one plugin greatly: The Wordpress SEO plugin by Yoast.

I thought about writing a plugin for Jekyll, but I wouldn't be able to run it since [github hosted sites can't run plugins](https://github.com/mojombo/jekyll/issues/325). I decided to [write a script](https://github.com/bhardin/jekyll-seo-script/blob/master/jekyll-seo.rb) to help me with SEO for my blog posts. Since Yoast had already given me a nice template to work from, I started with 4 of the most basic features of the plugin.

I wrote the initial version quickly. It only took me a few hours. I will be expanding on it to make it a little more thorough but wanted to push it out to others, so they could benefit immediately. If you have feature requests, please ask, I can easily write them in.

One of the best parts of this script is it will work on any page that is generated locally. So, you can even run this script on pages that are create from things besides Jekyll, such as nanoc.

## Benefits
The current script determines if the output of a Jekyll post is optimized for search engines. This plugin can even help you with the layout of your site. Making sure that the layout has the key things needed for SEO.

It currently checks for 4 things.

* Is the keyword in the article heading?
* Is the keyword in the page title?
* Is the keyword mentioned in the content of the page?
* Is the keyword in the meta description of the page?

It will identify these 4 things and in addition will give you counts of how many times the occurrence happens. The script is totally open source and I would love any contributions, issues, etc.

## Usage
Download the jekyll-seo.rb file and run it against the output of jekyll. Running it agains the output is the most critical part. You cannot run this on the markdown file, because it does not contain the HTML that is required for SEO analysis.

     jekyll-seo -k "optimize jekyll for seo" _site/2012/06/open-source-attribution/index.html

## Output

	Analyzing Post: _site/2012/06/open-source-attribution/index.html...

	Article Heading: true (2)
	Page title: true (1)
	Content: true (12)
	Meta description: true (1)

I would love to [hear](http://twitter.com/miscsecurity) if this helps you. The best part about writing things like this is hearing how people benefit from it.

* [Github Repo](https://github.com/bhardin/jekyll-seo-script)
* [jekyll-seo.rb](https://raw.github.com/bhardin/jekyll-seo-script/master/jekyll-seo.rb)
