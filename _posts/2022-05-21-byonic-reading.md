---
layout: post
title: 🧾 Byonic Reading - 80/20 Version on Bionic Reading
description: 🧾 Byonic Reading - 80/20 Version on Bionic Reading
summary: 🧾 Byonic Reading - 80/20 Version on Bionic Reading
comments: true
tags: project
---

[Check out the project files on Codeberg](https://codeberg.org/milofultz/byonic-reading) // [See it in action here!](https://milofultz.codeberg.page/byonic-reading/)

According to the designer, [Bionic Reading](https://bionic-reading.com/) is a way to aid in reading comprehension and focus, particularly those with difficulties like dyslexia, etc.

> Bionic Reading revises texts so that the most concise parts of words are highlighted. This guides the eye over the text and the brain remembers previously learned words more quickly.

I recommend checking it out on their site so you can see what they're getting at. On first glance, the example they used seemed to make sense. It looked like it was merely highlighting the first half of every word as bold. It seems after reading their page it does a lot more than that, but that initial spark got me wondering how easy it would be to implement this as a basic Javascript snippet?

It ended up being fairly straightforward. The pseudocode of the whole thing is:

```
MakeByonic(element):
  FOR child of starting element
    CASE element type of
      text node:
        Make first half of text bold
        Replace original text node with newly formatted text
      element node:
        CALL MakeByonic on this child element
    END CASE
  END FOR
```

An example looks something like this (in my implementation, anyway):

<span style="font-weight: bolder;">Byo</span>nic <span style="font-weight: bolder;">Read</span>ing <span style="font-weight: bolder;">i</span>s <span style="font-weight: bolder;">a</span> <span style="font-weight: bolder;">ne</span>w <span style="font-weight: bolder;">met</span>hod <span style="font-weight: bolder;">facili</span>tating <span style="font-weight: bolder;">th</span>e <span style="font-weight: bolder;">read</span>ing <span style="font-weight: bolder;">proc</span>ess <span style="font-weight: bolder;">b</span>y <span style="font-weight: bolder;">guid</span>ing <span style="font-weight: bolder;">th</span>e <span style="font-weight: bolder;">ey</span>es <span style="font-weight: bolder;">thro</span>ugh <span style="font-weight: bolder;">te</span>xt <span style="font-weight: bolder;">wi</span>th <span style="font-weight: bolder;">artif</span>icial <span style="font-weight: bolder;">fixa</span>tion <span style="font-weight: bolder;">poin</span>ts. <span style="font-weight: bolder;">A</span>s <span style="font-weight: bolder;">a</span> <span style="font-weight: bolder;">resu</span>lt, <span style="font-weight: bolder;">th</span>e <span style="font-weight: bolder;">rea</span>der <span style="font-weight: bolder;">i</span>s <span style="font-weight: bolder;">on</span>ly <span style="font-weight: bolder;">focu</span>sing <span style="font-weight: bolder;">o</span>n <span style="font-weight: bolder;">th</span>e <span style="font-weight: bolder;">highli</span>ghted <span style="font-weight: bolder;">init</span>ial <span style="font-weight: bolder;">lett</span>ers <span style="font-weight: bolder;">an</span>d <span style="font-weight: bolder;">le</span>ts <span style="font-weight: bolder;">th</span>e <span style="font-weight: bolder;">bra</span>in <span style="font-weight: bolder;">cen</span>ter <span style="font-weight: bolder;">comp</span>lete <span style="font-weight: bolder;">th</span>e <span style="font-weight: bolder;">wor</span>d. <span style="font-weight: bolder;">I</span>n <span style="font-weight: bolder;">a</span> <span style="font-weight: bolder;">digi</span>tal <span style="font-weight: bolder;">wor</span>ld <span style="font-weight: bolder;">domin</span>ated <span style="font-weight: bolder;">b</span>y <span style="font-weight: bolder;">shal</span>low <span style="font-weight: bolder;">for</span>ms <span style="font-weight: bolder;">o</span>f <span style="font-weight: bolder;">read</span>ing, <span style="font-weight: bolder;">Byo</span>nic <span style="font-weight: bolder;">Read</span>ing <span style="font-weight: bolder;">ai</span>ms <span style="font-weight: bolder;">t</span>o <span style="font-weight: bolder;">encou</span>rage <span style="font-weight: bolder;">a</span> <span style="font-weight: bolder;">mo</span>re <span style="font-weight: bolder;">i</span>n-<span style="font-weight: bolder;">dep</span>th <span style="font-weight: bolder;">read</span>ing <span style="font-weight: bolder;">an</span>d <span style="font-weight: bolder;">underst</span>anding <span style="font-weight: bolder;">o</span>f <span style="font-weight: bolder;">writ</span>ten <span style="font-weight: bolder;">cont</span>ent.

There are some weird things you have to do to make all this work with a webpage and some caveats I added to make it a but more readable and pleasant, but overall it's pretty straightforward and was a fun project! I may eventually turn it into a Firefox extension because why not.

- *20220610 - Someone else made an extremely thorough version of Bionic Reading [here](https://github.com/axoletl/not-br). Can do way more than just bolding the first half of letters.*
