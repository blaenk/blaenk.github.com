---
layout: page
title: "Lately"
date: 2012-12-28 23:19
updated: 2013-03-06 16:44
comments: true
sharing: true
footer: true
---

{% include post/date.html %}

* Table of Contents
{:toc}

This page lists some things I've been up to lately. Comments are enabled in case you'd like to comment on anything or have any questions. Updates are highlighted.

_updated {{ updated }}_

###Currently Working On###

* An audio player, though it'll ultimately be used for something else other than general audio playback. I'm decoding audio frames using [ffmpeg](http://www.ffmpeg.org/)'s libavcodec, libavformat, libavutil, and libswresample. Playback is currently done using [PulseAudio](http://www.freedesktop.org/wiki/Software/PulseAudio) although I intend to switch to a cross-platform library like [PortAudio](http://www.portaudio.com/). It works with any format/container/codec supported by ffmpeg. Source will be up soon.
{:.highlight}
* This website. The site's design is "responsive," meaning that it automatically changes based on the size of the viewing device's display. The theme is based on the [slash](http://zespia.tw/Octopress-Theme-Slash/) theme for Octopress. Though if you ask me I don't notice any resemblance.
* Phoenix is the name of a web interface I created for [rtorrent](https://github.com/rakshasa/rtorrent) made with Rails. Admittedly, Rails is probably overkill for this kind of project. I try to balance this by storing most necessary metadata in the torrent objects within rtorrent as Base64 encoded JSON. rtorrent's API is served using XML-RPC. The interface is developed with a multi-user environment in mind.

    This is the fourth major iteration, in as many years, of such an interface, having started as a heavily modified wTorrent interface. If I'm ever bored in the future, I may rewrite it to be even lighter, using something like [Sinatra](http://www.sinatrarb.com/) with Ruby, [Flask](http://flask.pocoo.org/) with Python, or [Snap](http://snapframework.com/) with Haskell.

###Planning to Work On###

* I'm considering adding functionality to [MPC-HC](http://mpc-hc.sourceforge.net) which allows one to watch things with others "in sync." Something like [Synchtube](http://www.synchtube.com/). I've yet to assess the feasibility of the project, but I feel it shouldn't be too difficult because MPC-HC already contains a remote web control system which I believe the authors were smart enough to abstract behind an event system. I figure I should be able to take advantage of this system.
  * **Update**: The devs let me know that a third-party project already exists that supports this functionality with the ability to support multiple players, not just MPC-HC. The project is called [syncplay](https://github.com/Uriziel/syncplay). I've tried it with friends multiple times already and it seems to work great!

      I did manage to get at least one [patch](https://github.com/mpc-hc/mpc-hc/pull/38) into MPC-HC however. The patch fixes seeking when the command to seek is sent from the web interface. I don't use the webui but I was checking it out when I was assessing methods of implementing the functionailty, since I figured I could leverage the code that interfaces with the webui.
* I'm working on a streaming web video system, and I'd like to do something similar -- viewing videos in sync -- using the HTML5 media API which has support for [video events](http://www.w3.org/2010/05/video/mediaevents.html). I think this concept of synchronizing events maps directly to the observer pattern which maps to a popular use of [node.js](http://nodejs.org/): websockets. Specifically, I feel that this will be a perfect use of [socket.io](http://socket.io/).

###Currently Reading###

* [C++ Primer](http://amzn.com/0321714113): _Not_ C++ Primer **Plus**, which is a similarly titled book. I've been using this book in conjunction with the 2<sup>nd</sup> edition of [The C++ Standard Library](http://amzn.com/0321623215) to get up to speed on C++11. I'm breezing through it thanks to the author's direct and clear coverage of C++11 concepts. It moves fast because it seems to assume previous programming knowledge, so I wouldn't recommend this to beginners. It's great for people who want to refresh on C++11 -- or C++ in general for that matter -- very quickly.
  * **Update**: I completed it. I feel a lot more comfortable with C++ than I had before, and perhaps more importantly, I feel like I'm quite up to speed with the new features introduced in C++11.
  {:.highlight}
* [The Linux Programming Inteface](http://amzn.com/1593272200): This book is amazing. It concerns the userspace API of Linux. It probably should be named "The POSIX Programming Inteface" because although it focuses on Linux, it's always very clear about which topics apply to which standards, treating Linux-specific funcitonality more like edge-cases within the POSIX ecosystem. This is perhaps a reasonable approach, considering that Linux is not POSIX compliant. The reverse approach would probably lessen the scope of material of which the majority probably applies to many other systems anyways, not just Linux. It's one of my favorite books currently on my shelf. I'm barely on the 18<sup>th</sup> chapter -- concerning Directories and Links -- and I'm barely through a quarter of the book.
* [Algorithms](http://amzn.com/032157351X): This beautiful hardcover book is just what I needed for a quick refresher on various algorithms. It masterfully covers various topics such as red-black trees and tries using pretty illustrations and very clear writing. The book uses Java as its didactic language which makes for quick coverage of universal concepts.
* [Algorithm Design Manual](http://amzn.com/1849967202): This book is similar to Sedgewick's (above) but uses C and focuses more on providing a summary overview of various algorithms. The first half covers certain algorithms in-depth, with a seeming bias for graph related algorithms. The second half of the book serves as a sort of reference for various algorithms, with references to popular implementations (e.g. FFT → [FFTW](http://www.fftw.org/)).

###Currently Studying###

* [Machine Learning](https://class.coursera.org/ml-2012-002/lecture/index): Having completed the edX UC Berkeley [CS 188](http://edx.org/ai) class on Artificial Intelligence, I'm now going through the [Machine Learning](https://class.coursera.org/ml-2012-002/lecture/index) class by Stanford on coursera. My goal is to apply Machine Learning concepts to Digital Signal Processing, such as for [onset detection](http://www.cs.usc.edu/research/08-895.pdf).
* [Parallel Programming with GPUs](https://www.udacity.com/course/cs344): I'm dedicating myself to the [Introduction to Parallel Programming](https://www.udacity.com/course/cs344) class on [udacity](https://www.udacity.com). It teaches GPGPU programming using [CUDA](http://en.wikipedia.org/wiki/CUDA). I already had some basic experience with [DirectCompute](http://en.wikipedia.org/wiki/DirectCompute) so I wasn't entirely out of the loop going into the class.
  {:.highlight}

	So far I've completed the first week. The production quality is high and the course is taught by very knowledgeable instructors. The assignments seem to be geared towards image processing, making the results of what we learn clearly visible. The first assignment involved writing a CUDA program kernel to run on the GPU which converts a color image to grayscale.

  A problem I encountered was that I don't have an Nvidia GPU necessary to run CUDA programs. I had to get rid of my previous one in lieu of an ATI card to appease my hackintosh setup as the 400 series seemed to have a problem in Mac OS X Lion. Thankfully the class contains an online editor which allows students to submit the code they've edited for compilation and execution on an Amazon AWS server. The results are then displayed in the same page. Furthermore, since we're working on GPU image processing, the result is displayed alongside a reference result image along with statistics describing the level to which we match the reference image.

  Using this editor can sometimes be a pain, as it makes for slow iteration and oftentimes nondescript error messages. However, it is pretty clever and definitely helps people like myself, who are currently without an Nvidia card, to benefit from the class.

*[GPGPU]: General Purpose GPU
