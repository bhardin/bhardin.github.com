---
layout: post
title: "Tests 'Should Not Begin With Should'"
image_url: http://farm1.staticflickr.com/136/318034222_9bb1321722_b.jpg
image_credit: WorldIslandInfo.com
image_credit_url: http://www.flickr.com/photos/76074333@N00/
tags: [programming, development, unit tests]
meta_description: Stop using the word should to start your unit tests.Use a descriptive verb instead.
category: post
---

Every time I contribute to open source software, the first task to complete is reading the unit tests. I love code testing and [advocate unit testing][2]. Reading unit tests help you wrap your mind around how a program works and gets the program into your head.

After reading a few thousand tests you [develop your own spidy sense][4]. You inherently know good tests from bad tests. You become an English professor grading high school English papers. You've read so many, you know who has spent time on the paper and who hasn't.

If your own spidy sense isn't fully developed, don't worry, smart people decided to help and created a site to help [Ruby developers write better unit tests][3]. The whole site is hosted on github and has issue tickets around each of the best practices. It's a living document, which anyone can contribute to. BetterSpecs describes, through example, the most common mistakes when writing rspec tests and ways to refactor them.

One best practice in particular stood out. Not beginning tests with the word _should_. Unit tests too often use the word should when describing the test. Should is used because it seems natural. It seems like it should go there.

The challenge with writing tests without _should_ is because you don't think like that. __Your natural tendency is to use the word should.__ Programmers have many words for positive logic statements: acceptance, affirmation, assertion. Programmers brains think in true and false.

It logically makes sense to begin a test with "it should" or "it shouldn't " rather than "it punches me in the face when I start tests with unnecessary words". Remember, You imply should or shouldn't using the verb. __Should isn't the verb you're looking for.__

Let's use an example. If we have an application that allows users to log in through a form, the test may look something like this:

```ruby
describe "login form" it
	it "should allow users to login" do
		..code goes here..
	end
end
```

That reads nice. It should do this. However, you can remove should. __It isn't the right verb to use. Should isn't describe what the test does.__ The word _allow_ does. You can refactor like so:

```ruby
describe "login form" it
	it "allows users to login" do
		..code goes here..
	end
end
```

This test is much easier to read, removes an unnecessary word, and describes the test much better. Rather than the test saying, "The login form should allow users to login," it now reads: "login form allows users to login."

Perfect.

You are now better prepared to write better tests. But, what about that huge code base you've already written. The code base that has 10,000 starting with the word should.

Have no fear. There is a gem for that. [should_clean][1] finds instances of rspec tests that begin with "should", "shouldn't", and "should not" and changes the test to use a verb which semantically make sense. It's pretty awesome and I've already contributed a patch to it.

What are your thoughts? What other languages have you noticed the verbs should and shouldn't popping up where they shouldn't be. Do you have tools for other languages that do similar things?

[1]: https://github.com/siyelo/should_clean
[2]: /2013/02/live-longer-by-writing-unit-tests/ "Unit Tests"
[3]: http://betterspecs.org
[4]: http://en.wikipedia.org/wiki/Spider-Man's_powers_and_equipment#Spider-sense "Spidey Sense"