---
layout: post
title: Insecure Cryptographic Storage
tags:
- Vulnerabilities
status: publish
image: http://farm3.static.flickr.com/2387/2452639579_e165388718.jpg
image_credit: fpsurgeon
type: post
published: true
meta:
  _edit_last: '1'
  _wp_old_slug: ''
  _headspace_page_title: Insecure Cryptographic Storage
---
{% include top10.md %}

### What is Insecure Cryptographic Storage
Insecure cryptographic storage occurs when an application doesn't securely encrypt it's sensitive data when it is stored into a database. This definition is similar to the picture above, recursive.

Simply stated, insecure cryptographic storage occurs when one of following happens:
*	**The developers don't encrypt the data that is being stored in the database.**
*	The developers do encrypt the data being stored in the database, but they rely on encryption methods they have developed. (Also known as home-grown cryptography)

After reading these two points you may say, "only an <em>idiot</em> wouldn't encrypt sensitive data being stored in the database." I refer you to number two in the list above.

If you think you are smart enough to write your own cryptographic algorithms, you my friend, are the <em>idiot</em>.

The main business concern with not encrypting sensitive data is that it can lead to confidentiality loss. All companies are concerned with unauthorized individuals viewing their sensitive data. In addition, encrypting sensitive data is be a regulatory compliance. [PCI-DSS requirement 3](https://www.pcisecuritystandards.org/security_standards/index.php).

### An Example of Insecure Cryptographic Storage
Here is a simplified example. Selecting the users table from a database we are returned the following:

	> select * from users;

| id | username | password |
|:-----------|:------------|:------------|
| 1 | Brett | 5f4dcc3b5aa765d61d8327deb882cf99 |
| 2 | Dan | 3c3662bcb661d6de679c636744c66b62 |

The passwords in these table are 32 characters long. Could these passwords be MD5 hashes?

As with all hashing algorithms, MD5 hashes can't be reversed. However, they can be pre-computed. Using a [hash table lookup](http://hashcrack.com/indx.php) we can identify what the password is before it was ran through the MD5 hashing algorithm.

After inserting _5f4dcc3b5aa765d61d8327deb882cf99_ into hashcrack the resulting password is returned. In this example, the password is "password."

### How Do You Prevent Insecure Cryptographic Storage From Occurring
If the data is sensitive and stored it NEEDS to be encrypted. Examples of items that are considered to be sensitive can include:
*	Credit Cards
*	Usernames
*	Passwords
*	User Data

There are other things to keep in mind when making sure you securely store information. This includes not creating your own cryptographic algorithms. No matter how smart you or your peers think you are **DO NOT attempt to invent a new encryption algorithm**. Leave this work to the experts.

Ensure that the data stored is not easy to decrypt. This can usually be averted by not using known **weak algorithms** such as RC3, RC4, MD5 and SHA-1.

If you are using asymmetric key encryption make sure to store your private keys carefully. If an attacker gets hold of the private key, you might as well not encrypt the data in the first place.
