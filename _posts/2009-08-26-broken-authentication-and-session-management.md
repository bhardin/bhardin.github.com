---
layout: post
title: Broken Authentication and Session Management
tags: [vulnerabilities, owasp]
image: http://farm5.static.flickr.com/4063/4266314914_0ab7cac5c4.jpg
image_credit: Rinoninha
series: the Owasp Top 10
type: post
---
{% include series.html %}

### What is Broken Authentication and Session Management
When developers are programming web application based solutions they rarely focus on how the user's session is managed. Failing to keep this in mind can lead developers to introduce session management vulnerabilities in their applications.

Session management vulnerabilities occur when developers fail to protect their users sensitive information such as user names, passwords, and session tokens.

Broken authentication vulnerabilities occur when developers fail to use authentication methods that have been adequately tested and rely on their own, often flawed, method for authenticating users.

These vulnerabilities are very hard for developers to identify on their own due to the far-reaching aspect of the code that handles session and authentication.

### An Example of Broken Authentication and Session Management

Due to the broad reach of this vulnerability there are many examples of broken authentication and session management occurring. Examples include forgotten password functionality, emailing user credentials, relying on IP address for session, not authenticating a user before changing a password, and not having adequate timeouts for inactive sessions.

#### Forgotten Password Functionality

Web applications often have a forgotten password functionality that allows a user to submit their user name to the application and are taken to a page with secret questions or a temporary password reset function.

Attackers can exploit this functionality to enumerate valid user name for the application. Developers often forget that a user name is half the puzzle to an attacker. Is an attacker knowing a password damaging if they don't know a user name to go along with it?

### How Do You Prevent Broken Authentication and Session Management

Protecting credentials and session cookies is one of the most difficult tasks for a developer. Protecting this critical pieces of data can touch on many lines of code in several different files.

To prevent these types of vulnerabilities from occurring in your application, developers should first ensure that **SSL is used for all authenticated parts of the application**. In addition, **verify that all credentials are stored in a hashed form**.

As with all prevention methods preventing these vulnerabilities takes careful planning from the design stage of the application. The following should all be considered:

* Only use the native session management mechanism. Do not write your own session handlers. Do not use home-grown cookies for authentication or session-management.
* Use a single authentication mechanism. Again, do not write your own authentication mechanism.
* Do not allow the login process to happen from an unencrypted page.
* Once a user authenticates, issue them a new session cookie and invalidate the previous session cookie. This will prevent session hijacking attacks from occurring.
* Verify that every page of the application has a logout link that is easily identified by the user.
* Have adequate timeouts for inactive sessions. Shorter is better.
* Verify the user knows their old password before changing their password.
* Do not send credentials (including the user name) over insecure channels, such as email.
* Do not expose session identifiers, such as the session token, in the URL.
