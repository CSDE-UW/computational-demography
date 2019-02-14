---
title: Making a Research Website
author: Connor Gilroy
date: '2019-02-14'
slug: making-a-research-website
categories:
  - tutorial
tags:
  - blogdown
  - GitHub
---

## Why make a website?

Academic researchers need to communicate their work!  
Several kinds of websites can be useful for this:

- a personal academic homepage
- a page for a specific research project
- a website for a course
- a website for a working group or seminar (like CDWG!)

## Key ideas

You can make a website without knowing much or any html/css; there are tools that let you do a lot in plain text and R instead.

You don't have to use a blogging platform like Wordpress or paid platforms like Squarespace either. Simple websites, or entire blogs, can be created with *static site generators*. The one blogdown uses is called [Hugo](https://gohugo.io/). There are others, like Jekyll (in Ruby) and Pelican (in Python), but we'll stick with Hugo.

Once you've generated your site on your computer, you then need to host the html files on a server somewhere. If you're keeping the site code on GitHub, the files are already there, so you just have to turn on GitHub Pages for your repository.

## Plan

- Make a CDWG website in blogdown
- Host it on GitHub Pages

## Make a website

Install the blogdown package in R; let it install Hugo if you don't have it already:

```
install.packages("blogdown")
```

Then create a new R project. You can create this project *as* a blogdown website (scroll down to see the option), or you can set up the site from the console:

```
blogdown::new_site(theme = "digitalcraftsman/hugo-strata-theme")
```

We'll use the [Strata theme](https://themes.gohugo.io/strata/) for CDWG. For a personal page, I'd recommend [Academic](https://themes.gohugo.io/academic/) or [Finite](https://themes.gohugo.io/finite/). (Don't do what I did and pick a random theme that looks pretty and try to hack it for your own purposes...)

Open up config.toml; every theme will have different config options (that's the sad part). Change things like the bio, social media handles, and contact info.

Also update the avatar (avatar.jpg) and background image (bg.jpg). These go in `static/images`.

Use the "Serve Site" RStudio addin to preview the site! Or run in the console:

```
blogdown::serve_site()
```

That way, you can see changes as you make them. You might need to refresh your web browser. Some common & important config options: 

```
baseurl = "/computational-demography/" # all urls should be relative to this. use "/" if it's a base domain
title = "Computational Demography" # this will show as the site's title in a web browser
```

We can use the config options to turn off different parts of the main webpage. If you want to get fancy, there are ways to edit the layout templates and rearrange or customize sections.

Before we're done, we'll want to clean up the example blog posts. I also find it helpful sometimes to just delete the `public` folder and regenerate it (with `serve_site` or `build_site`). Finally, so it plays nicely with GitHub, we actually need to rename the `public` folder. To do this, in config.toml:

```
publishDir = "docs"
```

## Host the website

First, we need to make the project directory into a git repo and commit everything. The most important thing is the `docs` folder; this is where the generated static html files live.

Then we go to GitHub and create a corresponding repository there. We link up our local repo and push the files up to GitHub.

At the GitHub repo, we go to Settings and down to GitHub Pages. We turn on Pages and point it to the `docs` folder. Wait a few minutes, and the website should go live.

Now we go to https://csde-uw.github.io/computational-demography. Et voilà!

Side note: it's a good idea to tell GitHub pages that this *isn't* a Jekyll website. How? By creating a blank file called .nojekyll in the website folder:

```
cd docs
touch .nojekyll
git add .nojekyll
git commit -m "We're using Hugo, not Jekyll, as our static site generator"
git push
```

## Examples
<br>
My personal academic website:

- https://students.washington.edu/cgilroy/
- source: https://github.com/ccgilroy/ccgilroy
- made with [blogdown](https://bookdown.org/yihui/blogdown/); hosted on [UW servers](https://itconnect.uw.edu/connect/web-publishing/shared-hosting/)

My comprehensive exam reading list:  

- https://ccgilroy.github.io/gilroy-reading-list/
- source: https://github.com/ccgilroy/gilroy-reading-list
- made with [bookdown](https://bookdown.org/); hosted on [GitHub Pages](https://pages.github.com/).

GeoHackWeek 2019:

- https://geohackweek.github.io/
- source: https://github.com/geohackweek/geohackweek.github.io
- made with Jekyll, hosted on GitHub Pages.

## Resources

Blogdown "tweetorial" by Dan Quintana: https://twitter.com/dsquintana/status/993410504570888192  
Kieran Healy on Hugo: https://kieranhealy.org/blog/archives/2014/02/24/powered-by-hugo/

