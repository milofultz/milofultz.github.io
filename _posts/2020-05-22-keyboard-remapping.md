---
layout: post
title: Keyboard Remapping on OSX - Adding the Insert Key
description: Keyboard Remapping on OSX - Adding the Missing Insert Key for using Trackers And/Or Other Old DOS Programs (Reality Adlib Tracker, MilkyTracker, etc.)
summary: Keyboard Remapping on OSX - Adding the Missing Insert Key for using Trackers And/Or Other Old DOS Programs (Reality Adlib Tracker, MilkyTracker, etc.)
comments: true
tags: reference
---

I downloaded [Reality Adlib Tracker](https://www.3eality.com/productions/reality-adlib-tracker) and [MilkyTracker](https://milkytracker.titandemo.org/) the other day and realized that Apple removed their insert key abilities a LONG time ago. The insert key is used quite a bit in these older programs for basic things like adding a line in your tracker, creating your pattern sequence, etc. Along with things like Dosbox, where these old relics are utilized, most of these older programs don’t allow new keybindings, so I had to dig around and find a new solution. I unfortunately couldn’t find anything directly related to trackers and stuff on any of their forums, so I figured I’d try and make something that could be found when searching for trackers, DOS, etc. 

Here’s one very simple and one not very simple but extremely interesting (read: difficult to understand for a rube like me) solution.

---

### SIMPLE And Recommended:

Karabiner-Elements is an open-source program that allows you to remap any key on any device to another key. In this instance, I remapped my right alt/option key to the insert key, as I do not use that option key almost ever. In Karabiner, it’s honestly so simple, as you can see in the screenshot. Choose what key you want to press and what you want it to output. I tested this in RAD and it works beautifully.

[Check out a picture of my settings here.]({{site.url}}/assets/20200522karabiner.png)

---

### NOT AS SIMPLE And Honestly Not Recommended:

So this way is much more in depth and I honestly don’t really know a lot of what I am doing here. What I tested works for me, but of course YMMV.

I utilized the ideas listed in nanoant’s article, [“macOS function key remapping with hidutil”](https://www.nanoant.com/mac/macos-function-key-remapping-with-hidutil), as well as the [USB HID usage table](https://www.freebsddiary.org/APC/usb_hid_usages.php) and made a couple lines of code that can be input to achieve the same effect as above.

[Check out a picture of my settings here.]({{site.url}}/assets/20200522karabiner.png)

Go into terminal and type the following:

```
hidutil property --set '{"UserKeyMapping":[
{"HIDKeyboardModifierMappingSrc":0x7000000e6, "HIDKeyboardModifierMappingDst":0x700000049}]}'
```

What this does is the hidutil (Human Interface Design utility) is setting a new key map in the following way: key “right alt” is going to now output key “insert”. At this point, it wasn’t working, so I figured I needed to do the opposite, setting the “insert” key to map to “right alt”.

```
hidutil property --set '{"UserKeyMapping":[
{"HIDKeyboardModifierMappingSrc":0x700000049, "HIDKeyboardModifierMappingDst":0x7000000e6}]}'
```
This made it work for me, and I don’t fully understand, but it is interesting to note. There are a lot of interesting controls in the USB HID image table, so I wonder if I would need any of these strange controls in the future. At least I’ll know how to map them ... maybe?

- _20201001: Used to make caps lock key the escape key for use with Vim_