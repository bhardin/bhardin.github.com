---
layout: post
title: "Penetration Testing as a First Step"
image: http://farm4.staticflickr.com/3551/3319711807_6a9594ff7a.jpg
image_credit: ArtBrom
tags: [infosec, security basics, penetration test]
meta_description: Don't use penetration testing as the first step to security your assets.
---
The information security community has convinced businesses to pay for services and products they don't need. This generates revenues but has no long-term effect. Band-aid solutions and expensive consultants don't solve underlying security problems.

Penetration testing optimizes the wrong thing. A penetration test does two things. It proves the company can be breached and identifies a few security exposures the company has. If the company doesn't inherently know this, their ego should have to pay for expensive security services.

Some have argued that a [penetration test establishes a security baseline][2]. I agree that having a baseline is important, but not before there are basic security processes in place. We've persuaded companies to measure their security inadequacies before establishing procedure. 

But, the baseline the penetration test creates isn't valid. If the company fixes all the security weaknesses identified, their problems aren't solved. They haven't identified [why the security weaknesses exist][3].

A penetration test, performed by the lowest bidder, has ramifications. If the penetration test is unsuccessful in demonstrating the company is susceptible to attack, the company and it's management team's sense of security superiority is inflated. The security budget will be reduced and the company will be easier to breach.

Alternatively, If the company is utterly destroyed, the exact opposite happens. Budgets are created to have better security put into place.

Another misconception is penetration tests simulate real attacks. They don't. Trustwave, a company that sells penetration testing services [agrees][1].

> Our clients place these restrictions on our work because at some point in the past they got burned.  A penetration tester locked out user accounts, created an accidental black hole in the network, or brought down a production server.

> But isn't it ironic that blackhats bent on data theft so rarely cause system outages?  Especially since modeling blackhat behavior is the inspiration behind penetration testing in the first place?  Blackhats place a high priority on stealth, naturally.  But notice that stealth implies safety.  __If we return to our roots -- modeling real attack scenarios involving stealth -- we get safety for free__.  By conducting safe tests, consistently, we can build confidence in our clients to see the artificial constraints as no longer necessary, and our tests will better model real-world risks.

The only acceptable use case for penetration tests is to use it as a check and balance for an internal security team. Since information security is a cost center, the internal team should be tested for efficiency.

[1]: http://blog.spiderlabs.com/2012/12/how-to-hack-and-not-get-caught.html
[2]: http://www.iss.net/documents/whitepapers/pentestwp.pdf
[3]: http://blogs.hbr.org/video/2012/02/the-5-whys.html "5 Why's"