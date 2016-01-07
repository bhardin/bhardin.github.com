---
layout: post
title: "Developers Spend Half Their Time Fixing Bugs"
image_url: http://farm4.staticflickr.com/3190/3097134746_71ea6b0842_b.jpg
image_credit: Steve Jurvetson
image_credit_url: http://www.flickr.com/photos/jurvetson/
tags: [software development, bug fixing]
meta_description: Developers spend 50% of their time fixing other people's problems.
category: post
---

[Joel Spolsky](http://www.joelonsoftware.com/articles/fog0000000014.html) says:

> Fixing bugs is only important when the value of having the bug fixed exceeds the cost of the fixing it. - Joel Spolsky

Bugs in legacy systems are wide spread. They live in code bases that you currently work on. [Application have between 10 - 20 defects per 1,000 lines of code](http://mayerdan.com/ruby/2012/11/11/bugs-per-line-of-code-ratio/). Software tools have been developed to even find bugs before they are discovered by external users of the software.

If you are lucky, the legacy system you work on has tests. Other's don't. If you are working on a code base that doesn't have tests, I feel bad for you son, I got 99 defects but not having tests ain't one.

Working on a code base that doesn't have tests is awful because you will be introducing bugs as you are fixing others. This is something common when resolving vulnerabilities. A developer will fix a vulnerability incorrectly making a vulnerability harder to find but still exploitable.

## 50% of a Developer's Time

According to Rogue Wave Software, [50% of a developers time is spent debugging](http://www.roguewave.com/DesktopModules/Bring2mind/DMX/Download.aspx?entryid=1606&command=core_download&PortalId=0&TabId=607). A developer spends half his time fixing problems with code that's already written. This is the maintenance aspect of any software development lifecycle.

The problem is that most of these bugs are in code the original author didn't write. I don't mind bug fixing as long as the code is my own. But, when I'm not the person who wrote the original code, the code takes longer to identify problems.

Fixing bugs in another person's code is similar to reading a handwritten letter. Some letters are beautifully crafted by people who care about the language they are writing in. They use the right words, punctuate correctly, and make sure the letter is legible.

Other handwritten letters don't do this. The reader of the letter can get frustrated just by reading what the author has written. If the letter is illegible in can make it even harder to understand what the author originally intended.

Source code is the same way. Everyone who can program can write code. Not everyone can write legible code. When I need to fix a bug and it hits someone's illegible code, I get frustrated.

With legacy systems, a lot of time is spent fixing bugs on a code base the bug fixer didn't write. Hopefully the code base has unit tests and integration tests in place or fixing code can be like walking through a mine field.

Management and good developers want to make sure known bugs get fixed in a reasonable time, but how much time should be spent fixing bugs and how much time should be spent developing new features.

## Approaches to Fixing Bugs

[Brann spends all of his time fixing known bugs](http://stackoverflow.com/questions/743442/implementing-features-vs-bug-fixing). When he isn't fixing bugs he is developing new features. The commenter's explain how this is impractical on large software projects and unworkable in the real world. Doesn't Brann live and develop in the real world?

I think Brann's methodology is interesting. I'm curious about the total amount of time Brann fixes bugs compared to time implementing new features. In a typical year how much time does Bran spend fixing bugs? 6 months?

Although other developers disagree with Brann, the opposite approach can also be taken. [Infinite defects methodology](http://www.joelonsoftware.com/articles/fog0000000043.html) is the approach to never fix bugs until after code is released. Microsoft encounter this problem and and changed to a _zero defects methodology_ similar to Brann's.

The challenge with either approach is [developers estimation of time to fix bugs is never right](http://blogs.mulesoft.com/biz/news/development-process-estimation-is-futile/) and they even discuss if it's [better to overestimate or underestimate](http://ruisilva.wordpress.com/2009/10/03/is-it-better-to-overestimate-or-underestimate/). What this means is that anytime the schedule estimates how much time a company will take to fix bugs, the estimation is wrong.