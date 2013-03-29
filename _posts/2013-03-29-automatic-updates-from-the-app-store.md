---
layout: post
title: "Automatic Updates from the App Store"
image: http://farm4.staticflickr.com/3103/2909483129_fc38488202.jpg
image_credit: Cristiano Betta
image_credit_url: http://www.flickr.com/photos/cristiano_betta/2909483129/
tags: [infosec, tech, apple]
meta_description: The AppStore should automatically update downloaded applications without user interaction.
---
The App Store allows distribution of applications to anyone running Apple hardware. The variety of applications available is impressive. There are stupid simple fart apps, business applications for the upcoming BYOD influx, transportation apps, and more complex applications managing personal notes in the cloud.

Developers benefit from the App Store by leveraging the distribution platform Apple has created. With a simple approval process a developer can distribute their software to millions of people easily.

As impressive as the App Store is for distribution, iDevice applications have the same problem as traditional software: How do you get users to update?

Software is delivered quickly and the lean movement has emphasized the benefit of fast innovation and iteration. The ability for a developer - or business - to imagine and implement a feature in the same day is powerful. Lean principles strongly emphasize Software-as-a-Service (SaaS) models and the largest benefit of SaaS is the ability to deliver software updates to users without their approval. Although SaaS is a double edged sword, it is beneficial in the long run because __the business controls software distribution, not the user.__

Although businesses that distribute applications in the App Store may have SaaS business models, their Apple app isn't a SaaS product. It is a traditional piece of software. To update you need approval from the user.

I have about 100 applications on my iPad. Every week I have 8 to 12 updates requiring my approval. Previously, Apple required my authentication (password) and authorization (clicking the update button) to update my applications. Apple has removed the authentication step, but the authorization step is still required.

This is ridiculous. Users run old software and have no incentive to update. StatCounter estimates [the number of people running Windows XP is 23.8%][1]. So 1-in-4 computers on the Internet are running an operating system that is 11 years old.

Operating systems aren't the only problem. End users are notorious for [not updating any software][2].

> Most browsers are vulnerable to a much broader array of well-known Java holes, with over 75% using versions that are at least six months old, nearly two-thirds being more than a year out of date, and more than 50% of browsers are greater than two years behind the times with respect to Java vulnerabilities.

Humans aren't inclined to click the update button. [Software should just do it for them][3].

Apple will suffer the same fate of lazy updating as Java if they don't change the model to an automatic distribution rather than an opt-in.

I don't know why updating still requires user approval. I haven't seen an update that requires an additional charge. Can't Apple poll for a Wifi connection and update the apps automatically?

[1]: http://gs.statcounter.com/#os-ww-monthly-201212-201302 "majority of users want to run old software"
[2]: http://community.websense.com/blogs/securitylabs/archive/2013/03/25/how-are-java-attacks-getting-through.aspx
[3]: /2012/11/automatic-updates-are-the-future/
[4]: http://en.wikipedia.org/wiki/Windows_XP
