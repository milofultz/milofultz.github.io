---
layout: post
title: Maximize Evernote With Less Images In Web Clipper (JS)
description: Either using a Google Chrome extension or one line of JS, maximize your snippets in Evernote and stay away from $8 subscriptions for a tiny feature.
summary: Either using a Google Chrome extension or one line of JS, maximize your snippets in Evernote and stay away from $8 subscriptions for a tiny feature.
comments: true
tags: project
---

[**Check out the up-to-date version on GitHub**](https://github.com/milofultz/no-images)

When using Evernote's web clipper, I was using too much of my upload cap with Evernote every month, mostly because images are too big when cropping the whole article. So I decided to practice some JS and see if I could make it work better without paying an $8 per month subscription for just a few extra megs of upload per month.

This method only works so far sporadically between the "Article" and the "Simplified Article" options.


## Cheap and Easy No-Install Browser Agnostic Version

In the console of your browser, type the following:

    document.querySelectorAll('img').forEach(image => image.remove());

To reset this, reload your page.


## Chrome Extension 

This extension is really simple: on click, it goes through all the `img` elements on the page and sets their display to `none`; on clicking the button again, all display settings for the images are set to their original value.


### Installation:

_I would put it on the Chrome extension site but I don't really want to pay a $5 fee just for a fun project. `¯\_(ツ)_/¯`_

1. Download the files and store them.
1. Open Chrome and go to `chrome://extensions`.
1. Click on "Developer Mode" in the upper right corner.
1. Click "Load Unpacked" and select the folder containing the downloaded files.
1. Find the extension in your "Extensions" menu and pin or unpin it if you want.


### Future Implementation

* Ensure it keeps images removed when syncing the page to Evernote
* Ensure it works with both simplified formatting and with entire article
* Include containers that show images but aren't obviously `img` elements
* Include SVGs
* Include anything else that may bloat my snippets