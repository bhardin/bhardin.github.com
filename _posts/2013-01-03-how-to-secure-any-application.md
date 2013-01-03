---
layout: post
title: "How to Secure Any Application"
image: http://farm5.staticflickr.com/4057/4245415240_9789056ff3.jpg
image_credit: Rab's Da
tags: [vulnerabilities, security basics, infosec, programming]
meta_description: 
---

Do you want to prevent your application from being hacked? I'll let you in on a little secret. Every security vulnerability in existence exploits the same underlying problem.

Vulnerabilities exploit a program's functionality. But, they exploit a very specific pattern. Computer software relies on the borrowed mathematical concept of functions. A program's functions are called subroutines. Subroutines include functions, procedures, routines, and methods. Although each of these definitions vary a little, for understanding software vulnerabilities they can be used interchangeably.

A software function takes input and produces an output. The input can be provided by the program itself or by the user.

When a function takes user-supplied input, a security vulnerability can occur. If the input is provided to a database, a SQL injection can occur. If the input is returned back the the user in a browser, we may have a reflective cross-site scripting vulnerability. If the input is provided to the system, we can have command injection. If the input is too large to put in the allocated memory, a buffer overflow occurs.

Since user-supplied input is what makes applications interesting, we can't prevent it from occurring. So how do we secure functions from having security vulnerabilities?

__We _simply_ validate the data received.__

Before using any input in a function, we SHOULD validate it. We NEED to compare the input against what is expected. If we do this, we will never have a security vulnerability in any application we create.

Although this is a simple concept, it is incredibly hard to implement. Developers will argue when and how data should be validated.

If you notice, I wrote, __before using any input the data should be validated__. This includes data that isn't immediately supplied by the user.

The easiest way to explain why is with an example. If we have a function that uses data from a database, should we validate the data before using it? Assume the data was already validated, by another function, upon insertion.

The answer is yes.

Although the data may have been validated by a function upon insertion, __there is no guarantee the function was used for inserting the data into the database__. In the future, what if another function is created exposing an API to the world that allows insertion? Again, we can't assume the future developer assigned to creating that function will write it in a secure way.

In posing this situation to developers there are many interesting answers you may receive. Most answers over-engineer solutions. Developers have a visceral reaction to having to repeat a pattern more than once. This is what makes developers great, but it's also their downfall.

That's the problem. __Laziness, the sign of a great developer, prevents completely secure applications.__

So, now that you know how to secure your applications, will you validate data before using it in your functions?
