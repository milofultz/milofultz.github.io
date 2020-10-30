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

On an average article with supporting (but not necessarily useful) pictures, I've seen about a **90%+ reduction** in note sizes.

This extension has been tested to work on the "Article", "Simplified Article", and "Full Page" options.

## Cheap and Easy No-Install Browser Agnostic Version

In the console of your browser, type the following:

    document.querySelectorAll('img').forEach(image => image.remove());

To reset this, reload your page.

## Chrome Extension 

This extension is really simple: on click, it goes through all the `img` elements on the page and removes them from the DOM. On another click, the page is refreshed.

The original implementation set the element's display to `none` on clicking the button again, all display settings for the images were set to their original value. Unfortunately, Evernote adds and modifies inline style on import, so it negated this otherwise more elegant implementation.

### Installation:

To install this extension, please go to the Github page for updated information and instructions.

---

- _20201007: Changed to avoid Evernote's inline styling on import_
- _20201030: Added average space savings_
