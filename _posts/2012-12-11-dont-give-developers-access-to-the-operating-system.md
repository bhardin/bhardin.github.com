---
layout: post
title: "Don't Give Developers Access to The Operating System"
image: http://farm6.staticflickr.com/5291/5550705287_751ab30767_b.jpg
image_credit: Kaptain Kobold
image_credit_url: http://www.flickr.com/photos/kaptainkobold/
tags: [infosec, developers, security controls]
meta_description: Devlelopers are granted too much access to functionality which they shouldn't have.
---

Alex Maccaw recently predicted that [Google will extend Chrome's functionality][1] to grant system-level access:

> Step two is extending Chrome's APIs, __giving developers greater access to the operating system__ and replacing the need for conventional desktops applications.

Granting developers access to the operating system is a bad idea. Although useful applications will be created, a large attack surface is exposed and systems with large attack surfaces are difficult to protect.

Applications which access the underlying operating systems break the concept of defense in depth. Barriers are being removed in order to provide functionality to developers. But, exposing things which shouldn't be exposed is a lesson we find necessary to continually learn.

Developers are innovators and want to build new and shiny things. To do this, they are given new toys and APIs to play with. System-level access shouldn't be given blindly. I'm not saying that access to the operating system can't be done in a secure way. Nothing is impossible. But, any access granted should have limits and premeditated controls in place. 

The builders need to be given platforms which the breakers think are secure. Planning needs to go into what access is granted and what access is restricted.

However, Alex made me aware that Google has already extended some interesting functionality:

> A few months ago, Google quietly released Chrome Packaged Apps, which let developers build desktop apps powered by Chrome. __They can be installed with one-click from the Chrome Web Store, access system APIs such as USB, Bluetooth and UDP Sockets, and can be opened from desktop shortcuts__. These apps are completely cross-platform, standalone and appear native to the untrained eye. In many ways, these hybrids combine the best the web and desktop worlds.

Chrome has [already][4] granted developers system-level access which can be used to create malicious applications. An application can access an external hard drive connected to a USB port. An application can access a cellphone connected via bluetooth.

But this isn't all. Google gives [a few other examples][4] of things developers can interact with, including shells like VMWare, Citrix, SSH, RDP, or VNC clients. Does this scare anyone else?

My only solace is that Google hasn't given the ability to publish these applications:

> Packaged apps are still evolving. We're giving you an early look at how to build them, but it's a developer preview; they aren't ready yet for building production applications.
> This means that you can't just yet publish your packaged apps in the Chrome Web Store - __but you will be able to do so very soon.__

Although Chrome Packaged Apps will most likely be available through an application market that Google controls, granting this level of access to developers is alarming.

I know many members of the Chrome security team and they are top notch security people. But, extending Chrome to grant access to the operating system is not a good idea. There will surly be things that aren't caught.

Both the level of access that Alex is predicting and the level of access already granted is scary, but, awesome applications will be built using these APIs. This is the dilemma between [builders and breakers][3].

There's a constant fight between innovators and protectors. The innovators are liberal while the protectors are conservative. It's easier to protect things which are static.

However, the battle is constantly won by the innovators. Executives and businesses love siding with the developers rather than security. The innovators create value. Additional revenues are challenging to find in unchanging systems.

[1]: http://blog.alexmaccaw.com/the-next-web
[2]: http://code.google.com/p/chromium/issues/detail?id=165171#c27 "Bug in Google load balancer"
[3]: /2011/02/builders-breakers-and-fixers/
[4]: http://developer.chrome.com/apps/about_apps.html