---
layout: post
title: "The Linux Programming Interface: Chapter 18"
date: 2013-02-15 17:23
comments: true
published: false
excerpt: Directories and Links
categories: 
- Linux
- Notes
---

This chapter covers directories and links.

### Directories

Stored in the file system as a regular file except:

1. marked different in its i-node entry
2. file contents is a table consisting of filenames and i-node numbers

### Hard Links

Hard links are also referred to simply as 'links'. It is soft links which require additional qualification. Links can be created using the `ln` command which is often used to instead create soft (symbolic) links (`ln -s`). Creating a hard link to a file doesn't copy (`cp`) the file itself, instead it creates a different filename pointing to the same i-node number and also increases the 'link count' of the file. This can be verified by running `ls -li` to see each file's corresponding i-node number and link count.

#### Shared Pointers

Hard links remind me of [`shared_ptr`](http://en.cppreference.com/w/cpp/memory/shared_ptr) in C++11. I can imagine a scenario in which different processes need access to a common file but the common file needs to be deleted when all processes are finished with it. They can create a link to the file and use that to do their work, since it will be the same file as the original. When they are finished with the file, they can `unlink` -- remove the link -- to the file. The file system will automatically delete the file itself (i.e. the data blocks) when the number of links has reached `0`. I don't know if this is common -- or even a correct -- practice, nevertheless I immediately thought of this when I came across links.
