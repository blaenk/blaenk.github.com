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

###Planning to Work On###

* I'm considering adding functionality to [MPC-HC](http://mpc-hc.sourceforge.net) which allows one to watch things with others "in sync." Something like [Synchtube](http://www.synchtube.com/). I've yet to assess the feasibility of the project, but I feel it shouldn't be too difficult because MPC-HC already contains a remote web control system which I believe the authors were smart enough to abstract behind an event system. I figure I should be able to take advantage of this system.
  * **Update**: The devs let me know that a third-party project already exists that supports this functionality with the ability to support multiple players, not just MPC-HC. The project is called [syncplay](https://github.com/Uriziel/syncplay). I've tried it with friends multiple times already and it seems to work great!

      I did manage to get at least one [patch](https://github.com/mpc-hc/mpc-hc/pull/38) into MPC-HC however. The patch fixes seeking when the command to seek is sent from the web interface. I don't use the webui but I was checking it out when I was assessing methods of implementing the functionailty, since I figured I could leverage the code that interfaces with the webui.

###Currently Reading###

* [The Linux Programming Inteface](http://amzn.com/1593272200): This book is amazing. It concerns the userspace API of Linux. It probably should be named "The POSIX Programming Inteface" because although it focuses on Linux, it's always very clear about which topics apply to which standards, treating Linux-specific funcitonality more like edge-cases within the POSIX ecosystem. This is perhaps a reasonable approach, considering that Linux is not POSIX compliant. The reverse approach would probably lessen the scope of material of which the majority probably applies to many other systems anyways, not just Linux. It's one of my favorite books currently on my shelf.
* [Algorithms](http://amzn.com/032157351X): This beautiful hardcover book is just what I needed for a quick refresher on various algorithms. It masterfully covers various topics such as red-black trees and tries using pretty illustrations and very clear writing. The book uses Java as its didactic language which makes for quick coverage of universal concepts.
* [Algorithm Design Manual](http://amzn.com/1849967202): This book is similar to Sedgewick's (above) but uses C and focuses more on providing a summary overview of various algorithms. The first half covers certain algorithms in-depth, with a seeming bias for graph related algorithms. The second half of the book serves as a sort of reference for various algorithms, with references to popular implementations (e.g. FFT → [FFTW](http://www.fftw.org/)).

###Currently Studying###

* [Machine Learning](https://class.coursera.org/ml-2012-002/lecture/index): Having completed the edX UC Berkeley [CS 188](http://edx.org/ai) class on Artificial Intelligence, I'm now going through the [Machine Learning](https://class.coursera.org/ml-2012-002/lecture/index) class by Stanford on coursera. My goal is to apply Machine Learning concepts to Digital Signal Processing, such as for [onset detection](http://www.cs.usc.edu/research/08-895.pdf).
* [Parallel Programming with GPUs](https://www.udacity.com/course/cs344): I'm dedicating myself to the [Introduction to Parallel Programming](https://www.udacity.com/course/cs344) class on [udacity](https://www.udacity.com). It teaches GPGPU programming using [CUDA](http://en.wikipedia.org/wiki/CUDA).

*[GPGPU]: General Purpose GPU
