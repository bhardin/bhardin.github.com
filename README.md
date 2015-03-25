# Brett Hardin's Blog

Blog can be found [here](http://bretthard.in)

## License
The following directories and their contents are Copyright Brett Hardin. You may not reuse anything therein without my permission:

* _posts/
* images/

All other directories and files are MIT Licensed. Feel free to use the HTML and CSS as you please. If you do use them, a link back to http://github.com/bhardin would be appreciated, but is not required.

## TO DO

- [ ] Fix the search.html and automate it as a deploy task.
- [ ] Fix the SCSS task to respect deprecation.

## Rakefile

A few custom things exist in the Rakefile.

### deploy:404

If you host your site on github, you will need to manually updated your 404.html in the root if you ever change the site layout. This task will automate that creation.

### Bootstrap
Modify the custom.less and then run rake bootstrap.

Make sure to have node and less installed.

    brew install node
    npm install -g less