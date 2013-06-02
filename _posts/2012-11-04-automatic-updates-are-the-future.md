---
layout: post
title: "Automatic Updates Are The Future"
image: http://farm9.staticflickr.com/8236/8505342511_03fc666f2f_b.jpg
image_credit_url: http://www.flickr.com/photos/shanelin/8505342511/in/set-72157632848286261/
image_credit: Malenkov in Exile
tags: [infosec, tech]
meta_description: An applications ability to update itself should be built in functionality. It shouldn't be an exception to the rule.
---

Kaspersky's Q3 IT Threat Evolution Report was released last week and although reports like these are typically used as marketing fluff by vendors they still provide interesting insights.

## Mobile Threat Landscape
Since iOS data is hard to come by. The report only focuses on Android devices.According to the [report][2] Gingerbread is the most attacked installation of Android.

> Android 2.3.6 "Gingerbread", which accounts for 28% of all blocked attempts to install malware, was the most commonly attacked version. It is not new: it was released in September 2011.

Although Gingerbread isn't _new_, it isn't old either. An OS for a mobile device released 13 months ago shouldn't be considered old.

But can an Android device be easily updated? Why are Android users not installing the newest version of Android? Do you need to pay for the newer version? Is it hard to update?

No! Android devices can be upgraded through the settings without having to pay for the new version. Here is how simple it is!

<iframe width="420" height="315" src="http://www.youtube.com/embed/EDhAb5b1Fj4" frameborder="0" allowfullscreen></iframe>

So, you've updated your phone because [security is always an afterthought][3] and newer versions of software are more secure than earlier versions. Awesome! Oh wait.

> Attacks of cybercriminals in Q3 most commonly targeted Android versions 2.3.6 Gingerbread and 4.0.4 Ice Cream Sandwich

So upgrading to newer Android versions aren't protecting you from attacks. So, how is malware getting installed on these newer versions of Android?

> Attackers are sufficiently good at __bypassing restrictions on installing software from untrusted sources__, primarily using social engineering techniques.

and 

>  These two types of malware are mostly distributed via so-called alternative app stores created by cybercriminals [sic].

So it's the users fault. __Don't install software from untrusted sources.__ Only install software from the [app store][4]. If you try to get around paying for the software by downloading a _pirated_ version you will eventually pay for it by having your phone owned.

## Desktop & Microsoft

Desktops on the other hand aren't owned by users downloading malicious software. They are compromised by drive-by attacks. Drive-by attacks are attacks the user doesn't need to interact with.

Microsoft products were very susceptible to drive-by attacks and used to be a huge target. This is no longer the case.

> Microsoft products no longer feature among the Top 10 products with vulnerabilities. This is because the automatic updates mechanism has now been well developed in recent versions of Windows OS.

From this snippet of information, Emil Protalinski [stated][1] the Microsoft security team is killing it. Not true. The report points out Microsoft is still being owned.

> Exploits targeting vulnerabilities in the Windows Help and Support Center, as well as various Internet Explorer (IE) flaws, accounted for 3% of all attacks. Specifically, a new vulnerability (CVE-2012-1876) was discovered in Q3 in IE versions 6-9.

I understand Microsoft isn't on Kasperky's top 10. But that doesn't mean the Microsoft Security team is doing awesome. It's because attackers are focusing on plugins. Plugins give attackers a larger market size to attack. Plugins allow attackers to target multiple platforms at once. The [report][2] even says this.

> Java exploits are sufficiently easy to use under any Windows version and, with some additional work by cybercriminals, as in the case of Flashfake, __cross-platform exploits can be created__. This explains the special interest of cybercriminals in Java vulnerabilities.

## Automatic Updates FTW

The report suggests users and organizations can protect themselves by installing updates.

> Our advice is that users should install updates of popular programs as they are released and use up-to-date protection against exploits, and companies should also use Patch Management technologies.

However, the whole reason why Microsoft isn't on this report is because they implemented an _automatic update system_. 

> Microsoft products no longer feature among the Top 10 products with vulnerabilities. This is because the automatic updates mechanism has now been well developed in recent versions of Windows OS.

Even the automatic update system in Adobe Reader is helping circumvent users being attacked.

> The popularity of exploits for Adobe Reader is gradually declining due to a realtively [sic] simple mechanism that ensures their detection, as well as to automated updates introduced in the latest versions of the Reader.

Both mobile devices and desktops can benefit from an automatic update mechanism. So, is the solution that users and organizations should install updates or the updates should install themselves?

Although mobile devices don't have automatic updates yet, it should be on the horizon. I'm still surprised I have to manually update iOS apps. Why am I required to go into the app store, click updates, and then type in my password to install them. Wouldn't the device and experience benefit from applications being automatically being updated?

[1]: http://thenextweb.com/microsoft/2012/11/02/microsofts-security-team-is-killing-it-not-one-product-on-kasperskys-top-10-vulnerabilities-list/
[2]: http://www.securelist.com/en/analysis/204792250/IT_Threat_Evolution_Q3_2012
[3]: /2012/10/the-security-and-developer-passion-dilema/
[4]: /2013/03/automatic-updates-from-the-app-store/
