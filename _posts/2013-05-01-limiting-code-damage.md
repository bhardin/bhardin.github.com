---
layout: post
title: "Limiting Code Damage"
image: http://farm3.staticflickr.com/2320/1951073350_7e357dbdec.jpg
image_credit: Daniele Muscetta
image_credit_url: http://www.flickr.com/photos/dani3l3/1951073350/
tags: [software development, engineering, coding, programming]
meta_description: Software development is a lot like creating a Dungeons & Dragons character.
---

When choosing a character in any role-playing game there are only two archetypes. Strong and Slow or Fast and Weak. All other classes are iterations of these basic attributes. Rouges, wizards, thieves, and rangers are just variations of the Rouge and Barbarian.

These two traits are a sliding scale. The stronger the player is the slower they are. The faster they are the weaker they are. You are unable to get the best of both worlds. You can't create a buffed out warrior who is lightning fast. Muscle is slow.

Software design has similar limitations with a similar sliding scale. Software can either be built fast and buggy or slow and strong. **The more time you take to think through a problem, the stronger the solution.**

Please don't misinterpret this as an excuse to take a long time building software. All software can be built faster than most developers think they can write it. You shouldn't pad your time or think about every possible edge case.Great code is built with iteration not with forethought.

Developing a feature or product should take as much time as much time that is reasonable. If you are working with the right people, they will give you an accurate answer. If the product or feature needs to be pushed as fast as possible, then management needs to understand the code will be buggy and wobbly. The more time given to developers, the better the code should be. However, a fast first version of the product or feature should be built as fast as possible and then iterate on that piece of code. Software systems are always better the second time around.

In [Design Patterns in Ruby][1], Russ Olsen explains:
> A key goal of software engineering is to build systems that allow us to contain the damage. In an ideal system, all changes are local: You should never have to comb through all of the code because A changed, which required you to change B, which triggered a change in C, which rippled all the way down to Z. 

You need to separate things which have a higher probability of changing from those that don't. Stabilize that which can be stable.

If you work on startup systems, this philosophy is challenging. The business is changing so rapidly, knowing that which is immutable is tough. When other developers come into the fold, and the problem has developed further, the code can be in an awful place. Many design decisions that seemed like a good idea initially are no longer viable to the current business model. Management needs to give the new team time to refactor the code and make it better.

When building systems, remember to limit the damage the best you can. Another developer some time in the future will read every line of code you write. Help them out by making it readable, adding good tests, and perhaps having [inline documentation][3]. Doing this is giving the future developer a bonus to all future [saving throws][2].

 [1]: http://www.amazon.com/gp/product/0321490452/ref=as_li_ss_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=0321490452&linkCode=as2&tag=breharsblo-20
 
 [2]: http://en.wikipedia.org/wiki/Saving_throw

 [3]: http://zachholman.com/posts/documentation/