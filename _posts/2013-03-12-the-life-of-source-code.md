---
layout: post
title: "The Life of Source Code"
image: http://farm4.staticflickr.com/3259/3154123453_9ede626b49_b.jpg
image_credit: John Carleton
image_credit_url: http://www.flickr.com/photos/johncarleton/
tags: [programming, code smell, developers]
meta_description: Developers contribute different things to the code base depending on how old the code is.
---

Source code has an interesting life cycle. From inception to deprecation many people contribute to it's advancement. Some people's contributions improve it and other's don't. Sometimes all those hands hurt the code base. All the developers play a long term game to attempting to make the code base better. 

## Birth 

The inception of a product begins with a single individual. The same person who envisioned the product can also build it or can employ another to build their vision. This initial contributor is the architect. The architect takes an idea and reduces it to repeatable patterns and algorithms. 

A developer, a team of developers, or the [architect][4] then births the source code. The initial development and conception takes time. The speed of code delivery depends on many variables. Talent of the team, ease of communication, amount of interruption, and leveraging existing technologies. If the team can leverage technologies previously developed -- open source -- the team can build faster without having to reinvent the wheel. This is the programming equivalent of [standing on the shoulders of giants][1]. 

Once the team releases the first working prototype the source code is born. 

## Learning To Walk 

Before completing the well thought out prototype, developers will make design changes. Although the architect attempted to think through all use cases, they always miss some. The discover of these problems can be during implementation or when the product is in production. 

The development team improves the product as customers and product managers give them feedback. Bugs, product enhancements, speed improvements and feature requests is all additional work the development team balances to improve the product. While improving the code base some developers will refactor code -- modifying code, but, keeping the functionality the same -- to increase efficiency or readability of the code. 

As long as the product can employee developers, the code improvement cycle continues. 

## Teenagers Always Cause Problems 

At this stage in it's life the product has demonstrated traction. Each day more people use it. This is great for business, but not for the code base. If the product is to survive at this stage, it needs to be able to scale. A great problem to have, but a tough problem to solve. Developers don't initially [write code that scales][2]. 

Developers are hired that specialize in scaling, reliability, security, and infrastructure. These are the rock stars of the development community. They are expensive because of their specialized talents. If the company is to survive they need to persuade a few rock stars to leave their high paying jobs at prestigious companies and work on the companies product. 

The rock stars will eventually take the code base and make it faster and more efficient. But a challenge arises. Rock stars notice [code smell][3]. The company hired the rock stars to scale and iterate the product faster, but, they can't leave smelly code alone. The rock star developers either make the code base better, rewrite the product, or leave the company from frustration. 

## Iterate or Rebuild? 

Developers and management need to make a critical decision at this point. Do you recreate the product to work better and more efficient or improve the code slowly over time through small iterations. 

The correct answer depends on many factors, one of which is how your product is doing in the market and whether the company can afford rebuilding the solution. 

It's common for developers to feel one way or another depending on how long they've been at the company. If they've been with the company for a longer amount of time they are comfortable with the current product and are fearful of change. This fear is caused by their familiarity with the current code base and their nonunderstanding of the new code base. 

Newer developers often want to replace and rebuild the product. Since the infant stage of the code base, technologies have been released that solve specific problems the code base is having. These developers can't just replace the old technology with the new, because there are too many moving parts. They need to rebuild. 

## The Right Way 

Unfortunately, There isn't a right decision. Many factors, and people, are involved in making the decision. These are the growth pains of source code. Although there isn't a right choice, here are some ideas you can use to solve the iterate or rebuild dilemma: 

* Create a small team (2 - 3) whose entire job is to write the new code base. The rest of the team supports and patches the old code base. The small team needs to be incredibly hungry to accomplish this. If management chooses the wrong team, the new product could be vaporware. The other challenge is code freeze. In doing this, at some point the old code needs to stop being contributed to. This is hard for companies to do. 

* Continue to patch the old code base and never rebuild. This is a common approach for B2B Enterprise products. The challenge of doing this is lack of product innovation. Product innovation will slow down and good developers will abandon the product. Good developers don't want to work on a product that isn't exciting. 

* Let the old product stay up while the whole development team writes the new code base. The team ignores all bugs and only focuses on writing the new code base. Expect customers to leave your product and be unhappy. Customers don't like using a product that has the same bugs for long periods of time. 

There are ways of solving the dilemma, but they are typically a mixture of the previous examples. Great developers don't like maintenance. They like to innovation. 

## Death 

A source code's death is when developers stop contributing to the code base. Death can be fast or slow. The strange part about source code death is code resurrection. A single developer can resurrect the code by working on it. However, this is rare. A product has to be extraordinary for a developer to work on an old code base rather than create it again.

[1]: http://www.scienceandyou.org/articles/ess_14.shtml "Shoulders of Giants"
[2]: http://www.geekwire.com/2011/number-reason-startups-fail-premature-scaling/ "Don't write code that scales"
[3]: http://www.codinghorror.com/blog/2006/05/code-smells.html "Code Smell" 
[4]: http://c2.com/cgi/wiki?ArchitectsDontCode