---
layout: post
title: "Use Other People's Code"
image_url: http://farm2.staticflickr.com/1263/5165260037_d29521f9e4_b.jpg
image_credit: Ben K. Adams
image_credit_url: http://www.flickr.com/photos/schtumple/
tags: [programming, open source]
category: post
meta_description: 
---

Some developers use other people's code while others write programs which do the same thing themselves. I've been fortunate enough to work for two startups who've had founding developers who were able to write code incredibly fast. However, faster isn't always right.

A common attribute of developers who code fast is they roll their own code instead of using known software which does the same thing. Their reasoning is that they can build it faster than reading the documentation and implementing someone else's code. Although this could be accurate it can either hurt the development team later on or [it shouldn't be done in the first place](http://bretthard.in/2009/09/insecure-cryptographic-storage/). Speed and iteration in a startup is the second most important thing for a startup behind customer development.

[Swizec Teller](http://swizec.com/blog/always-look-for-the-gem/swizec/6287):

> After hours of debugging I finally traced the issue down to spaces in item names. Turns out id="a word" doesn't work. Who'd've thought? (hint: everyone)

> But that's an easy fix right? The point is, all you have to do is replace spaces with dashes. Simple.

> But you're wrong. You are creating a slug. __It looks easy, but is actually very complicated. Luckily others have solved the problem already. Better than you.__

That is the major problem. Developers that are able to code amazing software are often the ones who don't really grasp the concept that someone else is better than them. They understand the idea, but they don't grasp the concept. 

He continues:

> __Why spend an hour looking for and learning how to use a gem instead of solving the problem in two minutes of coding?__

That is the exact thinking of these types of developers. Don't be this type of developer.

Developers who open source the code you are going to rewrite will continue supporting the code. Once you develop the code, you won't maintain it or look for areas to optimize. The developer that has open sourced their code to do the same thing you are solving will. Other developers will contribute to the solution also. It's like having a bunch of developers on your team that you don't have to pay.

In addition, when new developers join your team they won't have to learn your custom code base. They may already have experience with the open source solution which gives you a huge leg up in terms of speed of development.

I'm sure other industries have this same problem. It's hard to find a good analogy, but the first that comes to mind is bakers. If a baker decides he wants to create a cookie, he just grabs the ingredients needed and starts baking. However, the [Neiman Marcus cookie](http://www.neimanmarcuscareers.com/story/recipe.shtml) is pretty good and will get the job done. Why doesn't he just use that recipe instead?
