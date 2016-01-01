# Brett Hardin's Blog

The actual blog can be found [here](http://bretthard.in).

I've used Jekyll for a long time and I am now VERY opinionated on how things are done. If you are curious as to why I laid something out as I did, feel free to [contact me](http://twitter.com/miscsecurity).

A lot of things I write are other places. Goodreads, twitter, boardgamegeek, etc... This has a bunch of tools to centralize all of this.

## TODO

- [ ] How do you include custom Bootstrap without including bower_components?
- [ ] Do I need to include node_modules?
- [ ] Goodreads import: Use large pictures, instead of small.
- [ ] Presentations
- [ ] Adventures
- [ ] Mixtapes
- [ ] Bio/About

## Rakefile

A few custom things exist in the Rakefile specifically for Jekyll. In `Rakefile`
there is a CONFIG variable that needs to be created if you decide to copy this
directory. This includes things like `categories` for your blog.

```
rake automation:update  # Generate posts from all external sources
rake build:404          # Create the 404.html page and commit to git
rake build:css          # Creates all css files needed
rake goodreads:update   # Creates posts for goodreads reviews
rake jekyll:start       # Will start Jekyll while watching for changes
rake post:blog          # Create a new blog post in ./_posts
rake post:mixtape       # Create a new mixtape post in ./_posts
rake post:review        # Create a new review post in ./_posts
rake spec               # Run RSpec code examples
```

## License
The following directories and their contents are Copyright Brett Hardin. You may not reuse anything therein without my permission:

* _posts/
* images/

All other directories and files are MIT Licensed. Feel free to use the HTML and CSS as you please. If you do use them, a link back to http://github.com/bhardin would be appreciated, but is not required.
