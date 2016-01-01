---
category: post
layout: post
title: "Don't Make Unsubscribing From Email Hard"
image_url: http://farm2.staticflickr.com/1185/836326012_db3baba9cd_b.jpg
image_credit: Andy Castro
image_credit_url: http://www.flickr.com/photos/andycastro/
tags: [email, subscriptions, product experience]
meta_description: Make unsubscribing from your email list easy. Don't make it so complicated that people give up. The experience will be remembered.
---

I sign up for a lot of new products. Any product or service which seems interesting or I can benefit from I will sign up for. But, in the rush to find new shiny things, my email address is put on many lists. Which means I get a lot of email. If I decide the emails I receive aren't benefiting me I will unsubscribe from the mailing list, opting-out of future updates. 

These emails aren't spam. Spam is unwanted email that you haven't asked to receive. These emails I've specifically asked to receive. When I signed up for their service or product I told them to communicate with me. I'm okay with receiving updates and cool information about products I like.

Attempting to [unsubscribe from many mailing lists][better email] has demonstrated that the process is hard. So hard, that Gmail has even [attempted to build unsubscribe][Google Unsubscribe] functionality into their client.

Unsubscribing functionality isn't a [hard problem][hard problems], but, there isn't a design pattern around it. People do it differently. Large companies seem to be the worst offenders. LinkedIn is an amazing product but to stop receiving their email seems to be impossible.

When companies have been built to solve the problem, things are getting out of hand. [Unroll.me][unroll] allows you to unsubscribe from unwanted email and rolls up email into a daily digest.

I understand why companies want to optimize their subscription process and not their unsubscription process. However, It isn't [good customer service][customer service]. If you have a complication unsubscription process, it's just a matter of time before a negative blog post is written about it. A streamlined unsubscription process can avoid negative press.

All portions of your application should be created for an amazing experience and this includes the unsubscription process. Don't worry about people having an easier time unsubscribing once you streamline the process. The world has been taught clicking unsubscribe links create [spam][Unsubscribing creates spam].

If your using a modern framework then use unsubscribe functions that are already built. Don't roll your own. If you are using mailchimp to manage your email list, then you already have a streamlined unsubscribe process.

Here is the how your unsubscription process should work:

1. I receive your email and there is an [unsubscribe link at the bottom][unsubscribe link].
2. I click the _unsubscribe_ link and a page is returned saying "you are now unsubscribed from future email communications." 
3. I no loner receive your emails.

Things that shouldn't happen:

* __I have to log in to your website__ - All my passwords are unique and saved. However, most people cycle their passwords. If they don't remember their password they have to reset it and then login before they can unsubscribe from your email. Although email is an insecure channel, for things like unsubscribing, trust it. I don't want to reset a password in order to unsubscribe.

* __Confirming the unsubscribe__ - After clicking the really small link at the bottom of your email don't then ask for confirmation. I guarantee clicking this was not a mistake. It is exactly what the user wanted to do. Just like the [story of one-click][one-click], single click unsubscribe is more complicated than it sounds.

* __Force me to give a reason for unsubscribing__ - If you force users to give you a reason for unsubscribing before you unsubscribe them you are going to get data that isn't worthwhile. The responses will range from "asdfasdfasdf" to "stop bothering me." Mailchimp did this the right way. They unsubscribe first, then ask for a reason. A reason does not have to be given.

* __Using words other than unsubscribe__ - [George Saines][Saines] puts this incredibly well.

> But increasingly, I see emails sent from large, respectable companies that provide me with no unsubscribe link. Instead there is an insidious trend towards "Managing Preferences," which invariably requires a log in, a brief search to find the unsubscribe option, and a form submit. And after all that am I unsubscribed? Apparently not because I keep getting messages.

* __Sending more email__ - When I unsubscribe return a page that says, "The email address blah@blah.com has been unsubscribed from an amazing mailing list." Upon unsubscribing, you don't need to send me another email saying I have been unsubscribed. I just told you I don't want to receive emails from you anymore.

Do you think these requests are out of line? Do these thing bother you too?

[Google Unsubscribe]: http://gmailblog.blogspot.com/2009/07/unsubscribing-made-easy.html
[unroll]: http://unroll.me/
[Unsubscribing creates spam]: http://www.nbcchicago.com/investigations/lisa-parker-target-5-spam-i-am-149181805.html
[hard problems]: {% post_url 2012-02-09-solving-hard-problems %}
[customer service]: {% post_url 2012-12-03-customer-service-and-customer-satisfaction %}
[better email]: {% post_url 2012-06-25-a-better-email-inbox %}
[Saines]: http://www.georgesaines.com/?p=484
[unsubscribe link]: http://en.wikipedia.org/wiki/CAN-SPAM_Act_of_2003
[one-click]: http://www.amazon.com/gp/product/1591843758/ref=as_li_ss_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=1591843758&linkCode=as2&tag=breharsblo-20
