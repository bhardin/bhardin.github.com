---
layout: post
title: "Don't Make Unsubscribing From Email Hard"
image: http://farm2.staticflickr.com/1185/836326012_db3baba9cd_b.jpg
image_credit: Andy Castro
image_credit_url: http://www.flickr.com/photos/andycastro/
tags: [email, subscriptions, product experience]
meta_description: Make unsubscribing from your email list easy. Don't make it so complicated that people give up. The experience will be remembered.
---

I sign up for a lot of new products. Any product or service which seems interesting or I can benefit from I will sign up for. But, in the rush to find new shiny things, my email address is put on many lists. Which means I get a lot of email. If I decide the emails I receive aren't benefiting me I will unsubscribe from the mailing list, opting-out of future updates. 

These emails aren't spam. Spam is unwanted email that you haven't asked to receive. These emails I've specifically asked to receive. When I signed up for their service or product I told them to communicate with me. I'm okay with receiving updates and cool information about products I like.

Attempting to [unsubscribe from many mailing lists][13] has demonstrated that the process is hard. So hard, that Gmail has even [attempted to build unsubscribe][1] functionality into their client.

Unsubscribing functionality isn't a [hard problem][14], but, there isn't a design pattern around it. People do it differently. Large companies seem to be the worst offenders. LinkedIn is an amazing product but to stop receiving their email seems to be impossible.

When companies have been built to [solve the problem][12], things are getting out of hand. Both [Unroll.me][4] and [Theswizzle][7] allows you to unsubscribe from unwanted email and rolls up email into a daily digest.

I understand why companies want to optimize their subscription process and not their unsubscription process. However, It isn't [good customer service][2]. If you have a complication unsubscription process, it's just a matter of time before a [negative blog post is written about it][8]. A streamlined unsubscription process can avoid negative press.

All portions of your application should be created for an amazing experience and this includes the unsubscription process. Don't worry about people having an easier time unsubscribing once you streamline the process. The world has been taught clicking unsubscribe links create [spam][6].

If your using a modern framework then use unsubscribe functions that are already built. Don't roll your own. If you are using mailchimp to manage your email list, then you already [have a streamlined unsubscribe process][9].

Here is the how your unsubscription process should work:

1. I receive your email and there is an [unsubscribe link at the bottom][10].
2. I click the _unsubscribe_ link and a page is returned saying "you are now unsubscribed from future email communications." 
3. I no loner receive your emails.

Things that shouldn't happen:

* __I have to log in to your website__ - All my passwords are unique and saved. However, most people cycle their passwords. If they don't remember their password they have to reset it and then login before they can unsubscribe from your email. Although email is an insecure channel, for things like unsubscribing, trust it. I don't want to reset a password in order to unsubscribe.

* __Confirming the unsubscribe__ - After clicking the really small link at the bottom of your email don't then ask for confirmation. I guarantee clicking this was not a mistake. It is exactly what the user wanted to do. Just like the [story of one-click][11], single click unsubscribe is more complicated than it sounds.

* __Force me to give a reason for unsubscribing__ - If you force users to give you a reason for unsubscribing before you unsubscribe them you are going to get data that isn't worthwhile. The responses will range from "asdfasdfasdf" to "stop bothering me." Mailchimp did this the right way. They unsubscribe first, then ask for a reason. A reason does not have to be given.

* __Using words other than unsubscribe__ - [George Saines][3] puts this incredibly well.

> But increasingly, I see emails sent from large, respectable companies that provide me with no unsubscribe link. Instead there is an insidious trend towards "Managing Preferences," which invariably requires a log in, a brief search to find the unsubscribe option, and a form submit. And after all that am I unsubscribed? Apparently not because I keep getting messages.

* __Sending more email__ - When I unsubscribe return a page that says, "The email address blah@blah.com has been unsubscribed from an amazing mailing list." Upon unsubscribing, you don't need to send me another email saying I have been unsubscribed. I just told you I don't want to receive emails from you anymore.

Do you think these requests are out of line? Do these thing bother you too?

[1]: http://gmailblog.blogspot.com/2009/07/unsubscribing-made-easy.html "Google Unsubscribe"
[2]: /2012/12/customer-service-and-customer-satisfaction/
[3]: http://www.georgesaines.com/?p=484
[4]: http://unroll.me/
[5]: http://onlinebusiness.volusion.com/articles/preventing-email-subscribers-from-unsubscribing/ "Preventing Email Subscribers from Unsubscribing"
[6]: http://apcsnh.com/vacm/vacm101304.php "Unsubscribing creates spam"
[7]: https://theswizzle.com/ "Clean up your inbox"
[8]: http://www.3ones.com/2012/01/14/best-and-worst-practices-for-email-unsubscribing/ "Best (and Worst) Practices for Email Unsubscribing"
[9]: http://kb.mailchimp.com/article/about-unsubscribes
[10]: http://en.wikipedia.org/wiki/CAN-SPAM_Act_of_2003
[11]: http://www.amazon.com/gp/product/1591843758/ref=as_li_ss_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=1591843758&linkCode=as2&tag=breharsblo-20
[12]: /2012/02/solving-hard-problems/
[13]: /2012/06/a-better-email-inbox/
[14]: /2012/02/solving-hard-problems/
