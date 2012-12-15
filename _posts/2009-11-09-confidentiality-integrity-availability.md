---
layout: post
title: Confidentiality, Integrity, and Availability
image: http://farm3.staticflickr.com/2438/3928848343_aa499af7ab.jpg
image_credit: Express Monorail
tags:
- buzzwords
status: publish
type: post
published: true
meta:
  _edit_last: '1'
  _headspace_page_title: Confidentiality, Integrity, and Availability - Key Security
    Concepts
  _wp_old_slug: confidentiality-integrity-and-availability
---
Being security aware and security conscious often boils down to understanding three key concepts that are common to risk management.

These security concepts have been around since the inception of information security. Although, these are high-level generalizations, they are important for everyone to know about.

This article is focused on understanding how each of these apply to information systems.

## Confidentiality
Confidentiality loss happens when information can be viewed (read) by individuals who shouldn't access it.

Loss of confidentiality can happen physically or electronically.

Electronic confidentiality loss can happen when the clients and servers aren't encrypting their communications. This allows malicious entities to view private communications.

Physical confidential loss can happen through social engineering or through theft. This typically means having laptops stolen.
	
## Integrity
Integrity loss happens when information is modified without the modification being authorized. This doesn't mean that an unauthorized party has to cause the integrity loss to happen. The integrity loss due to an authorized party doing something they shouldn't. An example would be a system administrator deleting an account record they weren't authorized to delete.

Integrity Loss can happen either accidentally or through malicious intent. Malicious integrity loss can happen when a user purposely adds, deletes, or modifies database records. This can occur either through an authorized party (someone who has the access to actually modify the record) or by an unauthorized party when the user has access that they shouldn't have.

Accidental integrity loss happens when a system modifies or deletes records that it shouldn't. This can happen when a virus infects a system or when a user does something that he didn't intend to do. This is often why systems will verify that you want a file deleted, before it actually does so.

## Availability
Availability is the simple idea that when a user or system attempts to access something, it is available to be accessed. This is extremely important for mission critical systems. Availability for these systems are so critical that most companies have business continuity plans (BCP's) in order for there systems to have redundancy.

Just like confidentiality and integrity loss, availability loss can happen by accident, a car crashing into a fiber pole disabling access to a system, or through malicious intent, such as a Denial-of-Service attack.