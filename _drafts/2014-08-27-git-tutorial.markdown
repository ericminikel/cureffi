---
layout: post
title:  "Git tutorial"
date:   2014-08-27 12:00:00
categories: 
location: Boston, MA
---

This post is my presentation for a half-hour tutorial on git and GitHub delivered to my department, the [Analytical and Translational Genetics Unit](https://www.atgu.mgh.harvard.edu/) at MGH, on August 27, 2014 as part of our summer tutorial series. An important disclaimer: I myself am far from being a git expert! I volunteered to give this tutorial because I figured it would be a chance to shore up my own basics. If you see any mistakes, please leave a comment below.

### Why use version control?

Like me, the following statements probably describe many of you:

+ I only write one-off scripts to be used for a single project.
+ I'm the only one who works on them.
+ Git sounds complicated and I don't want to be distracted from my science.

So you may wonder, "why would I use version control?" Well, here are some reasons:

+ Creates a backup of everything you do.
+ Delete old stuff without worrying if you'll need it again - no "mycode_old.py", and no commented-out old lines.
+ Revert to an earlier version whenever you want. This lets you try out a change without risking not being able to get your code to work again.
+ Collaborate easily without emailing attachments.

### So what are git and GitHub?

git is a version control system. GitHub is a hosting site and social network built around git. There are other version control systems (subversion and mercurial), and other social networks that can run git (BitBucket). Here are a few good reasons to use git and GitHub in particular:

+ They're the official system at ATGU and your colleagues are using it.
+ The user community comprises many of the world's best coders. This is probably why the git system is complicated and arcane, but also why it's highly reliable and full-featured.
+ Almost any question you could have has already been answered on StackOverflow
+ GitHub is an awesome social network with nice collaboration features.

### How does it work?

Here is a diagram of the different zones of your git universe and how different actions affect them. 

![git tutorial diagram](/media/2014/08/git-tutorial-diagram.png)

If your needs are relatively simple, then in a typical usage you would:

+ Create local files however you like - maybe in your favorite text editor
+ `git add` your changes to be tracked by git
+ `git commit` your changes to your local git
+ `git push` your changes from local to GitHub.com
+ `git pull` any remote changes to your local

We'll go through examples of all this today.

### Time for an example

Here's an example we'll walk through in the tutorial. To follow along and do this yourself, you'll want to go to [GitHub.com](https://github.com/) and register yourself an account. You can have unlimited free public repositories; their business model is based on charging for private repositories. If you have a .edu email address, though, you can [sign up for an education discount](https://education.github.com/discount_requests/new) which gives you five free private repos. You'll also need to [install and configure git](https://help.github.com/articles/set-up-git).

Here is the code for today's example:

```bash
mkdir fibonacci # create a folder for our project
cd fibonacci
# add some code in nth_fibonacci.py
git init . # start a git repo locally
git add nth_fibonacci.py # add the new python code to be tracked by git
git commit -m "calculate nth fibonacci number" # commit the changes to the local repo
# go to github.com and start a new public repo
git remote add origin git@github.com:ericminikel/fibonacci.git # the github remote is now named "origin"
git push -u origin master # set the "origin" remote to be upstream of the local "master" branch
# add a README.md with just "hello world"
git status # where is the README currently?
git add README.md # add to staging area
git status # now where is the README?
git commit -m "added a readme" # commit to the local repo
# go to GitHub - is the readme there yet?
git push # push to remote repo
# go back to GitHub - how about now?
# open a text editor and edit the README
git status # now where are our changes to the README?
git add README.md # add to staging area
git diff README.md # view differences between old and new file. what steps is this the difference between?
git commit -m "old readme was not very helpful" # add to local repo
git push # push to remote repo
# edit the python code
git add nth_fibonacci.py 
git commit -m "using fancy approximation" 
git push
# go to github.com and browse to old version. see? no need for "nth_fibonacci_old.py"
# go to github.com and add a file, wrapper.py
git status # is there a difference?
git pull
# have a collaborator comment on the changed python code; we decide to revert the change
git log # look at the list of commits
# use git revert <sha1 hash of commit of interest>
git status # note that the change is automatically committed
git push
# go to GitHub and browse history. old fancy code is still there, and wrapper has not been removed.
```

Here is the original code:

```python
def nth_fibonacci(n): 
    n = int(n)
    fibs = [1,1] # initialize with first two elements
    while len(fibs) < n:
        fibs.append(fibs[-2]+fibs[-1])
    return fibs[n-1]
```

And the "fancy" code:

```python
from math import floor, sqrt
def nth_fibonacci(n):
    n = int(n)
    phi = (1+5**.5)/2
    return int(floor((phi**n)/sqrt(5)+.5))
```

The "fancy" method above is described [here](http://stackoverflow.com/a/1525544/3806692). It is only as exact as your floating-point arithmetic. In python it gives the same answer as the original method up through n = 70, but for n = 71 it gives 308061521170130 instead of 308061521170129.

And here is the wrapper file:

```python
import sys
from nth_fibonacci import nth_fibonacci
print nth_fibonacci(sys.argv[1]) # call the function on the first command line arg
```

Here is the repo we created in today's tutorial: [https://github.com/ericminikel/fibonacci](https://github.com/ericminikel/fibonacci).
