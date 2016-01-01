---
layout: post
title: "Getting related_posts, lsi, and gsl to work in jekyll"
image_url: http://farm3.staticflickr.com/2561/4005590272_6ec33b4333_b.jpg
image_credit: andreasrodler
category: post
tags: [tech]
---

So you have a jekyll blog on github and have the issue of wanting "good" realted_posts, not just the most recent. You read the documentation and find out you need to get LSI up and running. Awesome.

You use `brew install gsl` and then attempt to install the gem `gem install gsl`...

	matrix_complex.c:1525: error: conflicting types for 'gsl_matrix_complex_equal'
	/usr/local/Cellar/gsl/1.15/include/gsl/gsl_matrix_complex_double.h:227: error: previous declaration of
	'gsl_matrix_complex_equal' was here
	make: *** [matrix_complex.o] Error 1

__BORKED!!!__

What gives? Well, clearly the gem [isn't compatible with latest version of GSL, 1.15][1], duh! But, how do I install and old version of GSL?

[1]: http://rubyforge.org/tracker/index.php?func=detail&aid=29508&group_id=285&atid=1167

## Installing GSL 1.14

Thanks to [Levi Figueira](http://levifig.com/) for pointed out an easier way to install GSL 1.14 without hacking homebrew.

	$ brew tap homebrew/versions
	$ brew install gsl114
	
Once installed, you need to unlink the old gsl and link the new gsl.
	
	$ brew unlink gsl
	Unlinking /usr/local/Cellar/gsl/1.15... 16 links removed
	$ brew link gsl114
	Linking /usr/local/Cellar/gsl114/1.14... 16 symlinks created

This should be all you actually need and can skip the rest of this section. If this doesn't work for you, let me know in the comments.

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













