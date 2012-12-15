---
layout: post
title: Insecure Communications
tags: [vulnerabilities, owasp, encryption, communication]
series: the Owasp Top 10
image: http://farm5.static.flickr.com/4038/4417602702_7b5e9b62f6.jpg
image_credit: Jens Finke - fotografie grafik verlag
---
{% include series.html %}

Insecure communications is when a client and server communicate over a non-secure (unencrypted) channel. Without encrypting the channel, the developer can't guarantee the integrity of the data. Remember, insecure communication is different than [insecure storage][1].

[1]: /2009/09/insecure-cryptographic-storage/
[2]: /2009/11/confidentiality-integrity-availability/

Failing to securely communicate server-to-server and server-to-client means an attacker can intercept sensitive transactions. This is typically done through man-in-the-middle attacks. Not communicating securely breaks down [confidentiality and integrity][2].

There are multiple ways you can fall into communicating insecurely:

*	Not securing client-to-server connections.
*	Not securing server-to-database connections.
*	Not securing other back-end connections that pass sensitive data.

## An Example of Insecure Communications
Assume a developer has written an application that takes input from a user and stores it in a database that is located on another network segment.

If the developer fails to use SSL between the web server and the user, then he has an insecure communications channel between the user and the web server. (Client-to-server connection)

If the developer fails to forget to encrypt the connection between his web server and the database, then he is failing to secure the server-to-database connection.

## Preventing Insecure Communications
To prevent insecure communications from occurring, identify where all clients and servers are communicating to each other. To reduce the number of connections to inspect, identify only where sensitive data is being passed.

A common mistake is to forget to encrypt data being transfered on back-end connections, such as database connections. Just because the data is currently behind a firewall doesn't mean it should be passed in clear-text.

To verify all communication is being done securely:

*	Make sure all client-to-server connections are encrypted with SSL.
*	Verify that server-to-database connections are encrypted.
*	Verify that any other areas in the design where sensitive data is passed is done so in a secure way.
*	Keep developers in a security mindset. Developers should never assume their application is sending their information securely. Developers should always assume that any communications that are being made are done insecurely.