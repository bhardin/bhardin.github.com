---
layout: post
title: "Create a Site for Your Github Project"
image: http://farm3.staticflickr.com/2758/4171756453_1ac4111ddd_b.jpg
image_credit: Stefan
image_credit_url: http://www.flickr.com/photos/st3f4n/
tags: [github, open source, jekyll]
meta_description: Github will host a static site for you for free. Here is a simple way to keep your site and project together in the same repo.
---

One of the best things Github offers is free hosting for static content. For instance, this blog is [completely hosted on github][2].

[Derek P. Collins][3] recently built a pretty sweet [jQuery plugin][1] and he wanted to have a project page for it. He noticed open source projects like [bootstrap](http://twitter.github.com/bootstrap/) had project pages hosted by github and wanted to know how to do something similar for his jQuery plugin.

These are the steps I outlined for him, which you can also use to host a website for your Github project.

## Setup

Github needs to know you want to host static pages with them. There are a few ways they do this, but for project specific pages you need to create a branch in the project you want hosted called `gh-pages`. 

However, you want this branch to be clean and have its own history. You will need to create an orphaned branch and remove the files being tracked by git.

    git checkout --orphan gh-pages   
    git rm -rf .

Once this is done, make sure you cleaned all of the files from the directory with a `git status`. You may have files in the current directory which aren't being tracked by git.

Once your repository is clean you will want to create your static webpages, and commit them.

    touch index.html
    git add .
    git commit -m "Initial gh-pages commit"

You will now have one commit instead of the previous history in the master branch. Verify this by using `git log`

    $ git log
    commit 967c534707c6fe83d5363bbf82f64dfc51fe271b
    Author: Brett Hardin <me@someaddress.com>
    Date:   Tue Mar 19 07:15:05 2013 -0700

        Initial gh-pages commit

## Pushing to Github

You now need to push the `gh-pages` branch to github.

    git push origin gh-pages

Once this branch is pushed to github, they will start hosting your project's site. The site can be accessed by going to the following URL:

    http://YOURUSERNAME.github.com/REPO_NAME

Did you have any problems with this tutorial? Let me know.

_Note: If you already have a [custom domain setup on Github][4], this will create a project folder at the root of your custom domain. For instance, if your domain is http://bretthard.in your project will be at http://bretthard.in/REPO_NAME_

[1]: http://derekpcollins.com/jquery-custom-select-menu/
[2]: /2012/07/jekyll-vs-wordpress-blog-platform-comparison/
[3]: http://derekpcollins.com
[4]: https://help.github.com/articles/setting-up-a-custom-domain-with-pages