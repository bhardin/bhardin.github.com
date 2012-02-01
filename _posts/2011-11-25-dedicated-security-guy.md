---
layout: post
title: Dedicated Security Guy
tags:
- General Thoughts
status: draft
type: post
published: false
meta:
  _edit_last: '1'
---
<div>

At some point in a corporate lifecycle, someone decides that they need a dedicated security person. The need for this person arises from security vulnerabilities continually being found in the corporations products and applications. The vulnerabilities reported to the organization are found through an external party for hire or an external party.

Finding an organization in this situation is a good omen if you are the type of person who would like to change an organizations policy and procedures.

&nbsp;

Here are some fundamental questions to ask:

Does your Dev team have unit tests? Are they a culture of people who already rigorously test their code?

Does your QA team have an "automation" sweet. How many regression tests do you run on your code. Do you have a way to smoke test your build before releasing it to production?

What processes do you have in place before developers can "merge" code into a production/feature/development evironment?

&nbsp;

All things being equal. Security is an additional QA process.

Security testing can take a few approaches to testing.

White Boxing / Black Boxing

White boxing is looking at code, source code review. This is time consuming and can sometimes miss things that black box testing can find. However, the inverse is true also.

&nbsp;

Regression vs. Integration

Quality Assurance exists for the sole purpose of guaranteeing that new and old features work as they should. This is typically called regression testing.

&nbsp;

</div>
&nbsp;


At some point, every software company decides they need a dedicated security person.

The need for this person arises from security vulnerabilities continually being found in the corporations products and applications. The vulnerabilities reported to the organization are found through an external party for hire or an external party.

If you find yourself or your organization in this situation, it is a call for change in policy, procedures, and culture.

## How Did We Get Here

Organizations love band-aid solutions and throwing money at problems. If you build a product that will solve an organizations problems automatically, they will buy it. When vulnerabilities begin rolling in, organizations want to "solve" vulnerabilities being discovered by throwing money (people) at the problem.

This _does not_ work.

Before hiring a dedicated security person, organizations should be looking to their development managers. The development manager knows where the bodies are buried. Ask them, "What single change do you think we can benefit from?" or "Do you see any problems with the current way we develop software?" to a dev

