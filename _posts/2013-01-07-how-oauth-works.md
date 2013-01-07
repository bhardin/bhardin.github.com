---
layout: post
title: "How OAuth Works"
image: http://farm1.staticflickr.com/128/321378809_1df33867ba.jpg
image_credit: Paul Mayne
tags: [oauth, security basics, infosec, authentication, authorization]
meta_description: A general overview of the benefits of OAuth, why it was created, and an OAuth example.
---

OAuth is protocol for delegating authentication. Before OAuth, if Alice wanted to grant Bob access to her resources, Alice would have to give Bob her credentials, usually a username and password. OAuth allows this to happen without Alice having to share her _secret_ information.

OAuth became necessary because of applications relying on another applications data to be useful. For instance, A new service which mails you physical copies of photos as you upload them to Facebook. Your photos are private, but you want to use the service. How do you grant the service access to your photos without giving them your Facebook username and password?

OAuth solves this problem.

OAuth provides some key advantages over sharing credentials:

* Alice can revoke Bob's access without changing her credentials. 
* Alice can grant access to certain resources, like her photos, while keeping other resources, like her friends, secret.
* Bob can't lock Alice out of her account by changing her password.
* OAuth prevents the distribution of credentials Alice uses more than once. For instance, if Alice uses the same password on Facebook as she does her banking application.

## How OAuth 1.0 Works
Eran Hammer provides a really good overview of the [OAuth workflow][3]. But, some technical details are missing. Let's expand on his example.

Jane uses Faji, a photo sharing site, for sharing her vacation photos. She wants to share them with her grandmother, but grandma doesn't use the Internet, because it's the Devil's playground. Jane decides to use Beppa, a photo printing service which will mail physical copies of her photos to her grandmother.

OAuth uses three different credentials: 

* __client credentials__ - A set of credentials that Faji provides to Beppa. This authenticates Beppa to use the Faji API.
* __temporary credentials__ - Credentials which are used to verify the resource owner (Jane) is granting access to Beppa.
* __token credentials__ - The credentials Beppa will use to access Jane's resources on Faji.

There are three exchanges during the oAuth process: Temporary credential request (Steps 1 - 3), Resource Owner Authorization (Steps 4 - 6), and Access Token Request (Steps 7 - 9).

1. __Temporary Credential Request__: Faji provides a set of credentials to Beppa. These credentials grant Beppa the use of the Faji OAuth protocol.
2. Using the credentials from step 1, Beppa requests a set of temporary credentials from Faji. This request includes an `oauth_callback`. This callback is where Faji will redirect the user after authentication.
3. Faji verifies the credentials provided and if they're valid issues temporary credentials to Beppa. These temporary credentials include an `oauth_token`, an `oauth_token_secret`, and a confirmation of receiving the oath callback appropriately labeled, `ouath_callback_confirmed`.
4. __Resource Owner Authorization__: Beppa redirects Jane to the Faji OAuth user authorization page. The request includes the `oauth_token` provided in step 3.
5. Jane logs into Faji and grants Beppa access to her Faji resources.
6. Faji creates an `ouath_verifier` code and redirects Jane to the `oauth_callback` provided in step 2 along with the `oauth_token`.
7. __Access Token Request__: Beppa authenticates to Faji using the client credentials, from step 1, temporary credentials, received in step 3, and the `oauth_verifier` from step 6.
8. Faji ensures the user has granted access to the resource and the temporary credentials are valid and have not been used before to request an access token. If everything is valid, Faji responds with the `oauth_token` and the `oauth_token_secret`.
9. Beppa can now access Jane's data using the Access Token.

Notice the `oauth_token` and `oauth_token_secret` key names are used twice, but they have different values in each section. The first time they are used as temporary credentials, but once they are received in step 9 they are changed to the actual access token.

## How OAuth 1.0 is Different than OAuth 2.0

OAuth 2.0 is completely new protocol and is not backwards compatible with OAuth 1.0. Personally, I think they should of called it something else to avoid confusion. But, because it uses the same exchange methods to grant authorization, they kept the same name.

OAuth 1.0 suffered from three main issues upon release:

__Authentication Problems__ - OAuth 1.0 failed in it's attempts at forcing cryptographic standards. Before the OAuth requirement developers could provide their username and passwords to curl scripts to do useful things on Twitter. However, with the OAuth requirement, developers were forced to use more complicated authentication strategies then before.

__Poor user experience on non-web devices__ - OAuth 1.0 tried to provide one flow for all use cases. It didn't matter if the client was using a browser, a mobile device, or a desktop application. However, the single flow provided by OAuth 1.0 was great for web-based applications, but limited the mobile and desktop experience.

__Scaling issues__ - After large companies implemented OAuth 1.0, they noticed it didn't scale well.

OAuth 2.0 solved these issues at a price. OAuth lost it's leading author, Eran Hammer, during the creation of OAuth 2.0.

## Controversy of OAuth 2.0
Published in October of 2012 OAuth 2.0 is surrounded in controversy. After five years of leading the OAuth standard, Eran Hammer, the lead author of the OAuth project, resigned from the working group and removed his name from the specification. 

[Eran stated][2]:

> [The OAuth 2.0 specification] is bad enough that I no longer want to be associated with it. It is the biggest professional disappointment of my career.

He continues that the standard has been created through compromise and "fails to deliver its two main goals - security and interoperability."

Eran thinks too many vendors were involved, which lead to a useless standard.

## Additional Resources

* [OAuth 1.0 RFC][1]

Do you have any questions about OAuth or how it works? Leave a comment below.

[1]: https://tools.ietf.org/html/rfc5849 "OAuth 1.0 RFC"
[2]: http://hueniverse.com/2012/07/oauth-2-0-and-the-road-to-hell/
[3]: http://hueniverse.com/oauth/guide/workflow/