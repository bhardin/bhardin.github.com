---
layout: post
title: "Automatically Clear Your Downloads Directory"
image: 
image_credit: 
image_credit_url: 
tags: [programming, automation]
meta_description: 
---

I download a lot of stuff. But I rarely go in and clean up my Downloads folder. I wanted an automated solution for cleaning it up and one where it enforced me to move files out of the directory if I cared about them.

I also didn't want to pay for a solution, because that is stupid since it's an easy task to automate. If I was on a Linux system, I would just create a cronjob. Instead of cron, apple likes launchD.

launchD uses a pain-in-the-ass xml format for starting/stopping daemons, applications, and processes. 

If you write a launchD script by hand, good luck to you. I prefer to use Launch Control.

[Launch Control][Launch Control] makes creating launchD tasks super easy by using a GUI (which I usually can't stand) and does validation checking (which you **will** need) and testing tasks. In addition, it has a cool icon.

![icon][lc-icon]

It isn't the best interface, but it is one of the only ones I could find. If you have a better tool, please let me know.

Once Launch Control is open, create a new job by clicking the plus on the lower left portion of the screen and then make the program look like this:

```bash
/usr/bin/find /Users/bhardin/Downloads/ -mtime +7 -exec rm -rf {};
```

Remove the `Run at load` section and add a StartCalanderInterval. Then change the Hour from `Any` to `00`. This command will now run every day at midnight.

Breaking this command down:

1. `/usr/bin/find`: Location of the find command.
2. `/Users/bhardin/Downloads`: This is the location of the folder you want to automatically clean.
3. `-mtime +7`: These parameters are passed to find. Rather than finding all files, this finds all files older than 7 days.
4. `rm -rf {}`: This is the command that gets ran on all the files which find is passing in. The `-rf` is provided so that directories are destroyed also.


[Launch Control]: http://www.soma-zone.com/LaunchControl/
[lc-icon]: http://www.soma-zone.com/LaunchControl/files/stacks_image_39_1.png
