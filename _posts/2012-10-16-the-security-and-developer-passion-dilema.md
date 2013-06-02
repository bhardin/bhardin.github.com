---
layout: post
title: "The Security and Developer Passion Dilema"
image: http://farm3.staticflickr.com/2192/2058198168_fac0e21ee1_b.jpg
image_credit: Orangeya
category: 
tags: [infosec, developers]
meta_description: Developing and security seem to be opposing forces. Developers will never develop securly. But, if that's true, why do we continue to try?
---
I get nauseous when thinking about developing a security process at a large company again. It has nothing to do with creating an awesome process which is easy to follow and will benefit the company, developers, security researchers, and the shareholders.

What makes my stomach churn is the thought of working with developers who don't care about making things better. Talking to people who lack passion and energy. People who come to work for a paycheck. If you come to work for a paycheck, I don't ever want to work with you.

It disturbs me at a visceral level working with people who don't want to be at work. I know, not everyone is built the way I am. Not everyone is passionate about what they do. In an annual review I once was told I was _too passionate_. Seriously. My wife likes to tell people I'll become passionate about taking out the trash if I talk about it long enough.

## The Fixer
I talked at [BsidesSF](/2011/02/builders-breakers-and-fixers/) about a new type of security person. The fixer. The fixer lives between the builder and breaker world. They know enough about breaking to test things and know enough about building to fix the issue.

I arrived at this conclusion because of what I had seen and discussed with others about in the enterprise security world. There was a lack of enthusiasm from developers to support old code bases. It seemed builders (developers) only wanted to work on new shiny things and not support legacy code they, usually, didn't introduce.

In this model, the breaker has to convince the builder to write better code and fix the code which already exists. I was so fed up with convincing developers to fix their code that I started fixing it. It was the path of least resistance. __Fixing the code was easier and faster than explaining to the developer why they needed to fix it.__ I understood this didn't scale. My problem wasn't explaining to the developer about how to fix it. They argued why it needed to be fixed.

## Explaining the Problem
Describing to a developer why something is a security problem is like arguing with a second-semester philosophy major. They aren't concerned about understanding the issue. They are attempting to undermine you to explain why it isn't an issue.

Security consultants face this all the time. They will often take phone calls with development teams which argue the legitimacy of the consultant's findings. __In the developers mind, the security person is giving them more work.__

When security people point out flaws in the developers work, it puts the developer into an uncomfortable situation. The developer feels the way you felt when your parents told you to do something you didn't want to do. Where you would walk down the hallway where you weren't seen and flip them the bird!

Developers feel the same way when the security team is trying to shove fixes down their throat.

## Not All Developers are the Same
I am purposely being generic in the way I am describing developers. The developer I describe is very stereotypical of developers security folks deal with.

Being in startup land has changed the way I view developers. There are still [developers passionate about having a strong code base](https://twitter.com/mkonda). These developers don't only want to create, but love supporting their code.

I have noticed a strong corollary between these _good_ developers and developers who support TDD and/or BDD methodologies.

A quick question. Do the developers you work with love writing unit tests? If they have excuses as to why they don't you aren't dealing with _good_ developers.

It is such a relief to work with developers who want to implement your suggestions without a fight. As soon as you explain a line of code has an XSS flaw, the first words out of their mouth aren't:

* This isn't an issue in our environment.
* No one but internal people use this app.
* Cross-Site Scripting doesn't affect our servers so it's a low priority.

The first words out of their mouth are "How do I fix it?"

## Why You May Never Experience This

Here is the worst part. As a security person, you may never get to work with a great developer. Due to the nature of a company security is often an afterthought. This means, by the time a passionate security team gets there the company starts treating developers as cost centers.

[Rob Walling has a great quote describing the issue](http://www.softwarebyrob.com/2007/10/15/q-a-on-leaving-management-for-development/):

> A close friend of mine works for a company that has experienced a mass exodus of developers for this very reason. The best left first, the mid-range followed. What's left are the people who clock in 9 to 5 for the paycheck and don't take pride in what they're building. The company now has what they asked for: a team of low-level code jockies. The people with initiative, energy, and passion have left.

And this is exactly when the security job postings go up on the website. As soon as the passionate developers leave the company is when the security problems in the product are addressed.

My stomach continues churning thinking about developing a security process at a large organization.