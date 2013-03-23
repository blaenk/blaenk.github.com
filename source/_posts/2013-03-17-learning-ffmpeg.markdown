---
layout: post
title: "Learning ffmpeg"
date: 2013-03-17 17:40
comments: true
excerpt: Trying to comprehend the behemoth that is ffmpeg
categories: 
- ffmpeg
- Notes
---

I've been trying to understand [ffmpeg](http://www.ffmpeg.org/) enough to use for decoding audio in a personal application I'm working on. Documentation and resources to learn it are a bit low and inconsistent or usually outdated. Here I try to maintain a list of resources and information I've learned about the library.

These notes will be updated as I learn more about ffmpeg.

### Resources

A problem I've encountered with ffmpeg is that many articles posted about it or open source found online is already outdated. Many modern applications like [MPC-HC](http://mpc-hc.org/) and [Chromium](http://www.chromium.org/Home) do seem to use the latest version of the APIs. I also quickly learned that most learning is done through looking at the examples in ffmpeg as well as the ffplay source.

* the updated version of the [ffmpeg tutorial](http://dranger.com/ffmpeg/) hosted [here](https://github.com/chelyaev/ffmpeg-tutorial/blob/master/tutorial03.c#L114)
* the [`ffplay.c`](https://github.com/FFmpeg/FFmpeg/blob/master/ffplay.c#L2133) source
* the ffmpeg [examples](https://github.com/FFmpeg/FFmpeg/tree/master/doc/examples)
* a [post](http://www.gamedev.net/topic/624876-how-to-read-an-audio-file-with-ffmpeg-in-c/#entry4940299) on gamedev
* the [mpc-hc](https://github.com/mpc-hc/mpc-hc/blob/master/src/filters/transform/MpaDecFilter/FFAudioDecoder.cpp#L295) source
* the [chromium source](http://src.chromium.org/svn/trunk/src/media/filters/audio_file_reader.cc)

One particular thing about decoding audio is that it is generally decoded to a format that was used during the encoding process. This could be PCM Float Planar format for example, where each sample is a float and each channel is stored in a separate buffer. However, when you want to use the audio or play it through speakers, sometimes the format required can differ from the format decoded to. Fortunately ffmpeg has [libswresample](http://ffmpeg.org/libswresample.html) which can make these conversions easy. There also exists an abstraction of this using [libavfilter](http://ffmpeg.org/libavfilter.html).

* commit [`e96175ad`](https://github.com/FFmpeg/FFmpeg/commit/e96175ad7b576ad57b83d399193ef10b2bb016ae) that adds avfilter support to ffplay
* libswresample's [resampling audio](https://github.com/FFmpeg/FFmpeg/blob/master/doc/examples/resampling_audio.c) example