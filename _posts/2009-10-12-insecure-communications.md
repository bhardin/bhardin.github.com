---
layout: post
title: Insecure Communications
tags: [vulnerabilities, owasp]
series: the Owasp Top 10
image: http://farm5.static.flickr.com/4038/4417602702_7b5e9b62f6.jpg
image_credit: Jens Finke - fotografie grafik verlag
---
{% include series.html %}

## What in an Insecure Communication?
Insecure communications is when a client and server communicate over a n0n-secure (non-encrypted) channel. By doing this, the developer is ensuring that their communication channel can be viewed by eyes they didn't intend.

Failing to securely communicate server-to-server and server-to-client helps attackers to intercept sensitive transactions. Attackers do this by using man-in-the-middle attacks, a post for another time. Not communicating securely breaks down confidentiality and integrity.

Developers fall into communicating insecurely when they:
*	Don't secure their client-to-server connections.
*	Don't secure their server-to-database connections.
*	Don't secure other back end connections that pass sensitive data.

## An Example of Insecure Communications
Assume a developer has written an application that takes input from a user and stores it in a database that is located on another network segment.

If the developer fails to use SSL between the web server and the user, then he has an insecure communications channel between the user and the web server. (Client-to-server connection)

If the developer fails to forget to encrypt the connection between his web server and the database, then he is failing to secure the server-to-database connection.

## Preventing Insecure Communications
To prevent insecure communications from occurring, the first step is to make sure the security architect has formulated secure methods of communication between the clients and servers. The security architect can limit the connections they need to look at by only reviewing which servers and clients pass sensitive data.

Keep in mind, most of these architectures will fail to forget to encrypt data on back-end connections, such as database connections. Just because the data is now behind a firewall doesn't mean it should be passed in clear-text.

To verify insecure communications won't happen on your network:
*	Make sure all client-to-server connections are encrypted with SSL.
*	Verify that server-to-database connections are encrypted.
*	Verify that any other areas in the design where sensitive data is passed is done so in a secure way.
*	Keep developers in a security mindset. Developers should never assume their application is sending their information securely. Developers should always assume that any communications that are being made are done insecurely.