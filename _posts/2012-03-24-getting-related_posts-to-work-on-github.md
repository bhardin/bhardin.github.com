---
layout: post
title: "Getting related_posts to work on github"
image: http://cdn.memegenerator.net/instances/400x/16985634.jpg 
image_credit: 
category: 
tags: []
---

So you have a jekyll blog on github and have the issue of wanting "good" realted_posts, not just the most recent. You read the documentation and find out you need to get LSI up and running. Awesome.

You use `brew install gsl` and then attempt to install the gem `gem install gsl`...

	matrix_complex.c:1525: error: conflicting types for 'gsl_matrix_complex_equal'
	/usr/local/Cellar/gsl/1.15/include/gsl/gsl_matrix_complex_double.h:227: error: previous declaration of
	'gsl_matrix_complex_equal' was here
	make: *** [matrix_complex.o] Error 1

__BORKED!!!__

What gives? Well, clearly the gem [isn't compatible with latest version of GSL, 1.15]((http://rubyforge.org/tracker/index.php?func=detail&aid=29508&group_id=285&atid=1167)), duh!

But, how do I install and old version of GSL?

Welcome to Hacking Brew
-----------------------
Brew is just a github repository. So, what you want to do, is checkout a branch that contains the version you want to install. In our case, we want to install gsl 1.14. First, you need to identify where brew is installed. Mine is installed in `/usr/local`. A simple way to find out is to locate a brew formula. `locate gsl.rb`. 

	$ locate gsl.rb
	/usr/local/Library/Formula/gsl.rb

Now, we need to identify the checkin that changed the version of GSL.

	git log -S '1.14' -- Library/Formula/gsl.rb

This command looks for commits where the string `1.14` was either added or removed in the file `Library/Formula/gsl.rb`. Two receive two commits.

	commit 02910443658a267b71d980372bbbb832c7401cd0
	Author: Mary <mary@Marys-MacBook-Pro.local>
	Date:   Sat Aug 13 00:02:02 2011 -0400

	    gsl 1.15
	    
	    Signed-off-by: Adam Vandenberg <flangy@gmail.com>

	commit c06fcf417448f6291d54b4600e4acc7af434a84f
	Author: David Höppner <0xffea@gmail.com>
	Date:   Sat Mar 20 11:33:34 2010 +0100

	    gsl: version update to 1.14

Awesome. We need to checkout and old commit in order to install 1.14. The `c06fcf417448f6291d54b4600e4acc7af434a84f` is the commit we want. So we simply run:

	git checkout -b gsl-1.14 c06fcf417448f6291d54b4600e4acc7af434a84f

Now we are inside of a branch called gsl-1.14. Simply run:
	
	brew install gsl

Cleanup time: Checking out master and deleting the branch we created.

	git checkout master
	git branch -d postgresql-8.4.4

Installing the GSL gem
----------------------

Word. We now have gsl-1.14 installed. But will the gem install correctly? Only one way to find out.

	gem install gsl
	Building native extensions.  This could take a while...
	Successfully installed gsl-1.14.7
	1 gem installed
	Installing ri documentation for gsl-1.14.7...
	Installing RDoc documentation for gsl-1.14.7...

__Boom!__

Related Posts time
------------------
	$ jekyll --lsi
	/Users/bhardin/.rvm/rubies/ruby-1.9.3-p0/lib/ruby/site_ruby/1.9.1/rubygems/custom_require.rb:55:in `require': iconv will be deprecated in the future, use String#encode instead.
	Configuration from /Users/bhardin/Documents/projects/blog/_config.yml
	Auto-regenerating enabled: /Users/bhardin/Documents/projects/blog -> /Users/bhardin/Documents/projects/blog/_site
	[2012-03-24 08:51:35] regeneration: 59 files changed
	Running the classifier... this could take a while.
	.............................

Wow! That was fast. Maybe 10x faster?!?

But then... Errors!!! maruku what the hell is your problem?

	 ___________________________________________________________________________
	| Maruku tells you:
	+---------------------------------------------------------------------------
	| String finished while reading (break on []) already read: "require': iconv will be deprecated in the future, use String#encode instead.\nConfiguration from /Users/bhardin/Documents/projects/blog/_config.yml\nAuto-regenerating enabled: /Users/bhardin/Documents/projects/blog -> /Users/bhardin/Documents/projects/blog/_site\n[2012-03-24 08:51:35] regeneration: 59 files changed\nRunning the classifier... this could take a while.\n............................."
	| ---------------------------------------------------------------------------
	| ng the classifier... this could take a while.N.............................EOF
	| ---------------------------------------------------------------------------|
	|                                                                            +--- Byte 528

Huh... Screw maruku... rdiscount, Surly you won't complain. Whats up?

	$ gem install rdiscount
	Building native extensions.  This could take a while...
	Successfully installed rdiscount-1.6.8
	1 gem installed
	Installing ri documentation for rdiscount-1.6.8...
	Installing RDoc documentation for rdiscount-1.6.8...

Try again.

	$ jekyll --lsi --rdiscount
	/Users/bhardin/.rvm/rubies/ruby-1.9.3-p0/lib/ruby/site_ruby/1.9.1/rubygems/custom_require.rb:55:in `require': iconv will be deprecated in the future, use String#encode instead.
	Configuration from /Users/bhardin/Documents/projects/blog/_config.yml
	Auto-regenerating enabled: /Users/bhardin/Documents/projects/blog -> /Users/bhardin/Documents/projects/blog/_site
	[2012-03-24 09:04:01] regeneration: 59 files changed
	Running the classifier... this could take a while.
	.............................

Bam! Edit my `_config.yml` and all is good.

	markdown: rdiscount
	lsi: true













