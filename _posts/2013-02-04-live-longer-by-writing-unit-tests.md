---
layout: post
title: "Live Longer By Writing Unit Tests"
image: http://farm3.staticflickr.com/2585/3803517719_61fc214012.jpg
image_credit: thephotographymuse
tags: [programming, testing, developers, software]
meta_description: You will continue to live through your unit and regression tests after you pass away or leave a company.
---

This weekend I spent some time writing tests for a code base I developed a few weeks ago. I wanted to understand the challenges of writing tests "sometime in the future" as opposed to writing them during development. Writing tests after initial development is challenging and I put off testing purposely to understand how hard it is. 

Even after two weeks, my brain had a hard time understanding the  original intention of the code base and the tests aren't as rigorous as they should have been. I'm sure that I missed edge cases.

Writing tests much later - like years later - would be much more painful. But, I know many companies that put off testing in exchange for quicker development.

After completing the delayed testing exercise I am convinced you should always be writing tests. There is no exception.

## Developer Insurance Policy

Supporting a code base that doesn't have tests is painful. Making code changes are too complicated because developers don't know what they are potentially breaking.

As your code base gets larger it becomes more complicated. Without having tests in place, fixing bugs and writing new code becomes more involved. Experienced developers know this. Having tests creates a developer insurance policy that new or refactored code won't break the current system.

## Writing Tests Take Time

> Don't spend time beating on a wall, hoping to transform it into a door.

> * Coco Chanel

When your company or developers decide to write tests there is a tradeoff. By writing tests you are front-loading development time. Your initial development will take longer, but, later deploys will become faster.

Let's say we have two code bases: one with tests and one without tests. One day a customer discovers a bug in each code base. In which code base will the customer see the problem patched sooner? 

The codebase with tests will have the patch in production faster. The developer is more confident his patch doesn't break any of the current functionality and therefor can deploy sooner.

Having confidence in deploying code that won't take a system offline for customers is empowering for a business and for customers. The time lost from writing tests initially pays off.

## Tests and Culture

Unit, integration, and regression tests should be part of your companies culture. Developers won't write tests if testing isn't [part of your development process][3]. Developer's won't write tests later. Unwritten tests are never developed.

I have never met anyone who wants to write tests for code they didn't develop. It isn't fun and in the development world writing unit tests for old code is the equivalent of being a janitor. You're cleaning up after someone else.

If testing is part of your culture from the beginning, developers will embrace testing. They will want to ensure the code base has full test coverage.

If testing isn't part of your culture it won't get done.

## Tests are Their Own Language

What makes writing tests hard is testing frameworks are their own domain specific language (DSL). It's a language developed to solve the specific problem of testing code. 

I've often found myself spending more time writing tests than the actual code implementation. The testing framework has it's own methods, structure, and [best practices][1] which each developer needs to learn. Rather than knowing one language a developer needs to know two.

## You Can't Refactor Without Tests

> Don't touch anything that doesn't have coverage. Otherwise, you're not refactoring; you're just changing shit.

> * [Hamlet D'Arcy][2]

All a good developer does is [hold a program in their head][4]. To develop code a programmer needs to understand the logic of the program.

Tests are a way for developers to transfer this logic into formal statements. By doing this, other developers can benefit from their understanding of the code base.

If the original implementer is no longer with the company, you have lost the original key master of the code. Tests are a way for the original developer to continue living in the code base. __By writing tests, your legacy will live on.__ 

When code needs refactoring, developers can trust the implementer of the original code to "hold their hand" through the program. The tests are a way to ensure it's working the way the original developer intended.

[1]: http://betterspecs.org/
[2]: http://hamletdarcy.blogspot.com/2009/06/forgotten-refactorings.html
[3]: /2012/08/company-culture-is-defined-by-you-and-your-actions/ "Company Culture"
[4]: http://www.paulgraham.com/head.html
