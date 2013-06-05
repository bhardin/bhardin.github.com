---
layout: post
title: "Upgrading Ruby 1.8.6 to 1.8.7"
image: http://farm4.staticflickr.com/3352/3526698689_1ed4764119_b.jpg
image_credit: Bossi
image_credit_url: http://www.flickr.com/photos/thisisbossi/
tags: [Ruby, Programming]
meta_description: Steps to check when upgrading from Ruby 1.8.6 to Ruby 1.8.7
---

Although this post is a little over due I thought it could potentially help other people attempting to do the update. I wanted a guide which could help people do the update and understand what needs to go into doing it.

## OSX Install

For some reason tcl-tk is borked with the Ruby 1.8.7. You can install 1.8.7 by doing the following.

    rvm install 1.8.7 --without-tcl --without-tk
    brew install tcl-tk
    rvm reinstall 1.8.7

## Searching Your Code Base

Ruby 1.8.7 mainly added additional methods to classes. This means that it is pretty much backwards compatible. There are a few exceptions [regarding incompatibility](http://svn.ruby-lang.org/repos/ruby/tags/v1_8_7/NEWS). This are documented here.

### String#slice!

String#slice! had some unintentional bugs and they have been fixed  because either they disagreed with documentation or their respective  behavior of #slice.  Unfortunately, this causes some  incompatibilities in the following (somewhat rare) cases. 

* \#slice! no longer expands the array when an out-of-boundary value is given.

__Ruby 1.8.6__

    a = [1,2]
    a.slice!(4,0)   #=> nil
    a               #=> [1,2,nil,nil]

__Ruby 1.8.7__   

    a = [1,2]      
    a.slice!(4,0)   #=> nil      
    a               #=> [1,2]  

* \#slice! no longer raises an exception but returns nil when a negative length or out-of-boundary negative position is given.

__Ruby 1.8.6__ 

    a = [1,2]      
    a.slice!(1,-1)  #=> (raises IndexError)      
    a.slice!(-5,1)  #=> (raises IndexError)      

__Ruby 1.8.7__

    a = [1,2]      
    a.slice!(1,-1)  #=> nil      
    a.slice!(-5,1)  #=> nil

### String#to_i

The behavior in Ruby 1.8.6 was inconsistent with Ruby syntax and considered as  a bug. String#to_i, String#hex and String#oct no longer accept a sequence  of underscores (`__') as part of a number. 

__Ruby 1.8.6__

    '1__0'.to_i     #=> 10    
    '1__0'.to_i(2)  #=> 2  # 0b10    
    '1__0'.oct      #=> 8  # 010    
    '1__0'.hex      #=> 16 # 0x10    

__Ruby 1.8.7__

    '1__0'.to_i     #=> 1    
    '1__0'.to_i(2)  #=> 1    
    '1__0'.oct      #=> 1    
    '1__0'.hex      #=> 1  

## Date.parse

'##.##.##' (where each '#' is a digit) is now taken as 'YY.MM.DD' instead of 'MM.DD.YY'. While the change may confuse you, you can use `.strptime` to replicate the old way it was done.

    Date.strptime("01.02.03", "%m.%d.%Y")

I could not actually replicate this functionality personally. Let me know if you have any success.

    1.8.7 :001 > a = Date.parse("01.02.03")
    => #<Date: 3442913/2,0,2299161>

    1.8.6 :001 > a = Date.parse("01.02.03")
    => #<Date: 3444309/2,0,2299161>

Keep in mind, this [changed again in 1.9](http://stackoverflow.com/questions/9483563/differences-in-date-string-parsing-between-ruby-1-9-3-and-ruby-1-8-7).

## StringIO#each_byte    

The return value changed from nil to self.  This is what the document says and the same as each_line() does.

## tempfile  

The file name format has changed. No dots are included by default in temporary file names any more. This shouldn't be a problem, unless you are permanently keeping temporary files. Which is the exact opposite of what temp files should be used for. Seems like a bad coding practice to me.

## URI
  Made changes to FTP and URI.merge to accommodate [RFC3986](http://www.ietf.org/rfc/rfc3986). These are more bugs in 1.8.6 than anything else. But still search your code base to see if URI is used.

### FTP      

      URI('ftp://example.com/foo').path #=> 'foo'      
      URI('ftp://example.com/%2Ffoo').path #=> '/foo'
      URI::FTP.build([nil, 'example.com', nil, '/foo', 'i').to_s #=> 'ftp://example.com/%2Ffoo;type=i'

### URI.merge

      URI('http://a/b/c/d;p?q').merge('?y') == URI('http://a/b/c/d;p?y')      
      URI('http://a/b/c/d;p?q').merge('/./g') == URI('http://a/g')      
      URI('http://a/b/c/d;p?q').merge('/../g') == URI('http://a/g')      
      URI('http://a/b/c/d;p?q').merge('../../../g') == URI('http://a/g')      
      URI('http://a/b/c/d;p?q').merge('../../../../g') == URI('http://a/g')

