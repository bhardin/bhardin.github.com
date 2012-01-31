---
layout: post
title: "Jekyll is Awesome!"
category: 
tags: []
---

I recently discovered [Jekyll](https://github.com/mojombo/jekyll) a static site generator. Essentially, you write your content dynamically and then it _compiles_ the static code to be served. I needed something to simply generate content for [silisec](http://silisec.org), a local security drink-up, and found that Jekyll served my purposes well.

There is also a Jekyll-bootstrap that is specifically for creating blogs. I started to create this site with that, but quickly realized I wanted to learn more about how Jekyll worked. So scrapped v1 and begun working on what you see now. However, along the way I did find some helpful Jekyll-bootstrap commands (Jekyll-bootstrap comes with a rake file) and wanted to document them for later use.

### Create a new post

    rake post title="POST-TITLE"

### Changing Themes

    rake switch_theme name="the-minimum"


