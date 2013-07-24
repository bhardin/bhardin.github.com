---
layout: post
title: "Foundational Rules of Code Testing"
image: http://farm1.staticflickr.com/123/359572656_51a00dc2a6_b.jpg
image_credit: ccarlstead
image_credit_url: http://www.flickr.com/photos/cristic/
tags: [programming, code testing]
---

I've been doing a lot of refactoring tests lately and have identified some anti-patterns. From talking with other developers it seems some of these rules are widely understood, while others aren't. Even though something is understood, it doesn't mean the community has adopted it. I know a lot of programmers who don't even write tests.

If you are serious about programming and your test suite these are the rules I've identified which should always be followed.

__1. Don't have more than one assertion per test.__

This is a fairly simple one. If you are testing more than one thing or state in a test, don't. Break it up into two tests. There are a few reasons for this. First, it's easier to trouble shoot the failing test.

Replace this:

    it 'has three ingredients' do
      ingredients = Shortbread.ingredients
      ingredients[0].should == "sugar"
      ingredients[1].should == "butter"
      ingredients[2].should == "flour"
    end

With this:

    it 'has three ingredients' do
      Shortbread.ingredients.size.should be(3)
    end

    describe 'ingredients' do
      it 'include eggs' do
        Shortbread.ingredients include("eggs")
      end

      it 'include butter' do
        Shortbread.ingredients include("butter")
      end

      it 'include flour' do
        Shortbread.ingredients include("flour")
      end
    end

Note: If order is important, you could also check this under ingredients description. This is a good thing to point out in the earlier test though. Is order important? If another developer comes along and has the first test to work with, who knows...

__2. Don't start your test descriptions with the word 'should'__

[It is implied the test should do something](http://localhost:4000/2013/02/tests-should-not-begin-with-should/). Otherwise, it wouldn't be a test. [Rather than use the word should, start the description with a present-tense verb](http://steve-yegge.blogspot.com/2006/03/execution-in-kingdom-of-nouns.html).

Replace this:

    it 'should have three ingredients'

With this:

    it 'has three ingredients' 

__3. Don't overload classes or class methods in tests.__

It can be tempting to overload a class method in your test. Rather than having the method be called, you overload it to make sure it isn't called. This can have unintended side effects.

If a test which overloads a method is called with a test that tests this method, bad things will ensue.

Use method stubbing for this and localize it to the individual test. Don't let the test bleed into other tests.

__4. Don't use global variables.__

I normally see this used in conjunction with overloading class methods. Although a programming language gives you the tools, it doesn't mean you have to use it. I like languages that give you enough rope to hang yourself with, however, when junior developers develop in these languages, bad things can happen.

__5. Tests should be independent.__

One test should not rely on another test. Each test should be able to ran independently. Rspec and other testing frameworks provide ways to build upon the state of the test but still allow the test to be executed independently. Nothing can get your test suite in more trouble than breaking this rule.

One good way to ensure your test suite does this is by running the tests in random order. Rspec has supported [running tests in random order](http://blog.davidchelimsky.net/2012/01/04/rspec-28-is-released/) since 2.8. Check your test suite documentation on how to do this.

__6. Tests should leave state the way it was found.__

This is one of the hardest things to do. If one test sets up a database state, make sure you unwind that database state on tear down. If not, you, or someone on your team, will write a test which relies on this database state. Once tests are written this way, it's hard to unwind.


Have I missed anything? What rules do you use while writing tests?

