---
layout: post
title: Insecure Cryptographic Storage
tags: [vulnerabilities, owasp, encryption, hashing]
image: http://farm4.staticflickr.com/3274/2686824354_be3bc399cc_b.jpg
image_credit: Cory Doctorow
image_credit_url: http://www.flickr.com/photos/doctorow/
series: the Owasp Top 10
---
{% include series.html %}

Insecure cryptographic storage occurs when an application doesn't _securely_ encrypt it's sensitive data. This vulnerability is about data at rest. Data in transit is considered [insecure communication][1] not insecure cryptographic storage.

[1]: /2009/10/insecure-communications/
[2]: http://rdist.root.org/2008/09/18/dangers-of-amateur-cryptography/
[3]: /2009/11/confidentiality-integrity-availability/
[4]: https://www.pcisecuritystandards.org/security_standards/index.php
[5]: http://en.wikipedia.org/wiki/Rainbow_table

Insecure cryptographic storage occurs in the following situations:

*	Developers don't encrypt data being stored in the database.
*	Developers encrypt data with homegrown encryption.

Many developers know they should encrypt their sensitive data; not doing so creates a code smell. But, many developers will create their own encryption methods rather than using ones which have already been developed. If you think you are smart enough to write your own cryptographic algorithms, you're not. There is an entire encryption industry, with lots of peer review, to develop secure encryption methods. Developing a simple, easy-to-use, [encryption algorithm is not easy][2].

Not encrypting sensitive data leads to [confidentiality][3] loss. All companies are concerned with unauthorized individuals viewing their sensitive data. In addition, encrypting sensitive data is a requirement by different regulations, such as [PCI-DSS requirement 3][4].

## An Example of Insecure Cryptographic Storage
Here is a simplified example. We have a database that contains a `users` table. If we return all of the columns from the `users` table we receive the following output:

	> select * from users;

<table class="table">
<thead>
<tr>
<th></th>
<th align="left"> id </th>
<th align="left"> username </th>
<th align="left"> password </th>
</tr>
</thead>
<tbody>
<tr>
<td></td>
<td align="left"> 1 </td>
<td align="left"> Brett </td>
<td align="left"> 5f4dcc3b5aa765d61d8327deb882cf99</td>
</tr>
<tr>
<td></td>
<td align="left"> 2 </td>
<td align="left"> Dan </td>
<td align="left"> 3c3662bcb661d6de679c636744c66b62</td>
</tr>
</tbody>
</table>

The passwords returned by the query are 32 characters long. Could these passwords be MD5 hashes?

As with all hashing algorithms, MD5 hashes can't be reversed. However, they can be [pre-computed][5]. Using a hash table lookup we can identify what the password is before it was ran through the MD5 hashing algorithm.

Finding the hash, _5f4dcc3b5aa765d61d8327deb882cf99_, in our hash table returns the password, `password.`

## Preventing Insecure Cryptographic Storage
If the data is sensitive, it needs to be encrypted when at rest. Any time sensitive data is stored it NEEDS to be encrypted. Examples of information which is considered sensitive includes credit cards, usernames, passwords, and can include user-created data based on what your application does.

* Remember to use standard methods for doing encryption. Use known secure encryption methods. Don't create your own encryption algorthims. No matter how smart you, or your peers, are __DO NOT attempt to invent your own encryption algorithm__. Leave this work to the experts.

* Ensure that the data stored is not easy to decrypt. This can usually be averted by not using known **weak algorithms** such as RC3, RC4, MD5 and SHA-1.

* If you are using asymmetric key encryption make sure to store your private keys carefully. If an attacker gets hold of the private key, you might as well not encrypt the data in the first place.
