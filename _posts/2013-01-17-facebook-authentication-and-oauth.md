---
layout: post
title: "Facebook Authentication and OAuth"
image: http://farm2.staticflickr.com/1418/4724726923_df9cb9c6c1.jpg
image_credit: Karen Maraj
tags: [facebook, oauth, authentication, design pattern]
meta_description: Stop asking users to create an account. Instead, use an online identity authority for handling authentication.
---

I love using new applications, new apps, and new services. But, I don't like creating credentials for each of these services. Stop asking me to create an account on your application.

We've already solved the [account registration design pattern][1] with OAuth. Rather than using [OAuth to accessing resources][2] we can use it for authenticating. Newer applications are starting to move to the OAuth Authentication design pattern to reduce signup friction. There are problems with using a [delegated authorization protocol for authentication][4], but, It seems to be a common use case.

If you decide not to use OAuth for authentication you're creating a problem. __You and your application are making the users less secure by forcing password reuse.__ If the only piece of information you need is my email address get it from another service.

## Random Passwords
I create random passwords for each application I use. When signing up for a new service, I use 1password to randomly generate strong and unique password. My passwords are incredibly complex and I have no idea what they are. This works great if I'm at my computer, but, for web applications that have mobile applications it creates a problem.

For instance, my LinkedIn password is incredibly complicated. I use two LinkedIn mobile applications; LinkedIn and Cardmunch. Both applications require my LinkedIn password to authenticate. Although it's annoying to enter my password in these applications, the LinkedIn mobile app forgets my password often. I never use their mobile app, even though I want to, because the applications require authentication to use and they forget my password often.

I know I'm not the only one. LinkedIn is losing valuable data because I am not interacting with their mobile applications.

If they want that data, LinkedIn should allow me to authenticate to another provider. But, they don't. LinkedIn wants to control online identity.

## Online Identity
Online identity is something companies have been trying to own and control for a long time. Microsoft, Facebook, Google, and LinkedIn are all fighting for it.

Microsoft attempted to do this when launching LiveID. Google [attempts to own user's online identity][3] by releasing free applications requiring a Google account. Facebook controls the social graph, so they are fighting for it also.

The three -- or four if you count LinkedIn -- will continue to fight for identity, but your application should use a few of them for authentication purposes. At the very least Facebook Authentication if you have a consumer application.

## Mobile Applications
If you are creating the authentication pattern for a mobile application, don't ask for a password.

Mobile applications -- more than web applications -- should never ask for a user to create credentials. It's a horrible design interaction. Neither should need to ask users to create an account. We already have established authentication services. Applications can use Facebook, Twitter, or Google for user authentication. There is no reason to ask a user to _create _ an account.

## Two-Factor Auth

Adding another layer of complexity like two-factor auth steps up the game even more. If I use two factor auth with these services, I can create unique passwords for each application I use, but use my account for authentication.

__Am I missing something?__ Can you think of a specific use case where I'm required to create an account rather than authenticate to an already established service?

[1]: http://ui-patterns.com/patterns/AccountRegistration
[2]: /2013/01/how-oauth-works/
[3]: http://nakedsecurity.sophos.com/2012/07/26/google-pleads-for-youtube-real-name-use/
[4]: http://www.thread-safe.com/2012/01/problem-with-oauth-for-authentication.html
