---
layout: post
title: "Let's Kill Subversion"
image: http://farm9.staticflickr.com/8463/8119188557_3e7ee663cc.jpg
image_credit: TexasEagle
tags: [version control, software, tools, tech]
meta_description: Subversion sucks. As software developers we need to kill things we don't like and adopt better technologies.
---

Leading a software project is not an easy endeavor. Working on a software project that is widely adopted is empowering. Hopefully, when you experience this feeling, your project will be _in-style_ for a long time. At some point, developers need to decide to kill software projects. Developers need to allow the use of better software.

Version control systems are a great example where death could benefit the developer community. 

Version control is a way to manage changes to documents. [Microsoft Word's track changes][1] and Wikipedia's [Page history][2] are examples of version control.

In software development, version control is critical. Software systems contain multiple files. Version control solves the problem of two developers altering the same file. It makes sure developers are aware they've edited the same file and helps them decide how to merge the files together. 

Early version control systems used a client-server approach to centralize the changes. The repository - the full history of all file changes - is stored on a server. However, some people realized that a peer-to-peer approach to version control may be faster and distributed version control systems (DVCS) came along. 

With a DVCS every person has a local copy of the repository. The advantage of a DVCS is that common operations - committing, viewing history, and reverting changes - are done without communicating with a server. Developers can work without being connected to a network.

Joel Spolsky - A large software proponent - wrote this about [distributed version control systems][3]:

> [DCVS] is possibly the biggest advance in software development technology in the ten years I've been writing articles here.

With all this support for DVCS, why are centralized version control systems still in use?

## Adopting New Technologies
I see two reasons why engineers don't adopt the newer technologies. The software engineers aren't staying up-to-date with industry changes or people aren't willing to invest in the new system.

Given enough time the former will eventually turn into later. So, arguably, there is only one reason people haven't adopted the newer technology. The time of implementation.

We are constantly losing time. All decisions, engineering or otherwise, are made by answering this question:

__Is the time lost from the current technology larger than the time lost to move to the new technology?__

## Newer Isn't Better

New and shiny technologies aren't always better. Given time, large trends supporting the newer technology can aid in whether adoption should happen.

Concurrent Versions System (CVS) was the first widely adopted version control system. 

CVS had lots of bugs and missing features. But, Subversion (SVN) came along and people quickly moved to the better system. Subversion had problems and was a centralized repository.

Linux kernel developers started using BitKeeper, but after BitKeeper decided to pull their free license, Linus Torvalds decided to write his own  DCVS. He named it Git.

Git is awesome and the most used version control system among the open source community. But, companies are still using SVN. They haven't moved yet.

Canonical - the developers of Ubuntu - developed there own DCVS called Bazaar. Canonical even created a [page comparing Bazaar versus Git][5].

The problem is the community doesn't support Bazaar as much as they support git. Bazaar doesn't follow the order of magnitude rule. 

Ben Horowitz - a successful entrepreneur and investor - [states the following][4]:

> An idea that gets funded has to be a breakthrough idea. It has to be an order of magnitude better than what is currently available.

Bazaar isn't a big enough jump from git, as git was from svn. This means starting a project with Bazaar is a bad idea.

## Let Old Stuff Die

We have to naturally kill things just like life. If our great-great-great-great grandparents were still around, things would be creepy. Don't let your software stacks and culture be creepy.  

It's okay to keep Parents (git) around but let's start killing off the grandparents (svn). They can't stay around forever.

I've never met a good software developers who likes using SVN. Are you a good developer and like Subversion more than git? I'd love to hear your comments.

[1]: http://www.shaunakelly.com/word/sharing/howtrackchangesworks.html
[2]: http://en.wikipedia.org/wiki/Help:Page_history
[3]: http://joelonsoftware.com/items/2010/03/17.html
[4]: http://techcrunch.com/2013/01/20/ben-horowitz-at-dld/
[5]: http://wiki.bazaar.canonical.com/BzrVsGit