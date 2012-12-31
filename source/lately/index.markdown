---
layout: page
title: "Lately"
date: 2012-12-28 23:19
comments: true
sharing: true
footer: true
---

This page, which should be updated regularly, is where I talk about the things I've been up to lately. Comments are enabled in case you'd like to comment on anything or have any questions.

###Currently Working On###

* This website. The site's design is "responsive," meaning that it automatically changes based on the size of the viewing device's display. The theme is based on the [slash](http://zespia.tw/Octopress-Theme-Slash/) theme for Octopress. Though if you ask me I don't notice any resemblance.
* Phoenix is the name of a web interface I created for [rtorrent](https://github.com/rakshasa/rtorrent) made with Rails. Admittedly, Rails is probably overkill for this kind of project. I try to balance this by storing most necessary metadata in the torrent objects within rtorrent as Base64 encoded JSON. rtorrent's API is served using XML-RPC. The interface is developed with a multi-user environment in mind.

    This is the fourth major iteration, in as many years, of such an interface, having started as a heavily modified wTorrent interface. If I'm ever bored in the future, I may rewrite it to be even lighter, using something like Sinatra with Ruby, Flask with Python, or Snap with Haskell.

###Planning to Work On###

* I'm considering adding functionality to [MPC-HC](http://mpc-hc.sourceforge.net) which allows one to watch things with others "in sync." Something like [Synchtube](http://www.synchtube.com/). I've yet to assess the feasibility of the project, but I feel it shouldn't be too difficult because MPC-HC already contains a remote web control system which I believe the authors were smart enough to abstract behind an event system. I figure I should be able to take advantage of this system.
* I'm working on a streaming web video system, and I'd like to do something similar -- viewing videos in sync -- using the HTML5 media API which has support for video events. This functionality is showcased [here](http://www.w3.org/2010/05/video/mediaevents.html). I think this concept of synchronizing events maps directly to the observer pattern which maps to a popular use of [node.js](http://nodejs.org/): websockets. Specifically, I feel that this will be a perfect use of [socket.io](http://socket.io/).

###Currently Reading###

* [C++ Primer](http://amzn.com/0321714113): _Not_ C++ Primer **Plus**, which is a similarly titled book. I've been using this book in conjunction with the 2<sup>nd</sup> edition of [The C++ Standard Library](http://amzn.com/0321623215) to get up to speed on C++11. I'm breezing through it thanks to the author's direct and clear coverage of C++11 concepts. It moves fast because it seems to assume previous programming knowledge, so I wouldn't recommend this to beginners. It's great for people who want to refresh on C++11 -- or C++ in general for that matter -- very quickly.
* [The Linux Programming Inteface](http://amzn.com/1593272200): This book is amazing. It concerns the userspace API of Linux. It probably should be named "The POSIX Programming Inteface" because although it focuses on Linux, it's always very clear about which topics apply to which standards, treating Linux-specific funcitonality more like edge-cases within the POSIX ecosystem. This is perhaps a reasonable approach, considering that Linux is not POSIX compliant. The reverse approach would probably lessen the scope of material of which the majority probably applies to many other systems anyways, not just Linux. It's one of my favorite books currently on my shelf. I'm barely on the 18<sup>th</sup> chapter -- concerning Directories and Links -- and I'm barely through a quarter of the book.
* [Linux Kernel Development](http://amzn.com/0672329468): Whereas TLPI focuses on the userspace API, this book concerns the kernel API. I'm just starting it so I can't really comment on it, but it seems like a very popular book. I highly recommend TLPI and LKD to anyone who really wants to understand Linux.

###Currently Studying###

* Machine Learning: Having completed the edX UC Berkeley [CS 188](http://edx.org/ai) class on Artificial Intelligence, I'm now going through the [Machine Learning](https://class.coursera.org/ml-2012-002/lecture/index) class by Stanford on coursera. My goal is to apply Machine Learning concepts to Digital Signal Processing, such as for [onset detection](http://www.cs.usc.edu/research/08-895.pdf).

