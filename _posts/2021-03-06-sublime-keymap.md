---
layout: post
title: Find and Remove Autocompletes in Sublime Text 3
description: Ever had trouble diagnosing where an autocompleted character is coming from and how to stop it?
summary: Ever had trouble diagnosing where an autocompleted character is coming from and how to stop it?
comments: true
tags: reference
---

I just spent forever trying to find a solution for this, so I figure putting it up here will be helpful for me and hopefully for others, too.

In my case, I have been using Emmet to write HTML and CSS much faster. The issue that first came up was that when typing a colon in CSS, by default Sublime Text will add a semicolon. This doesn't allow Emmet to expand correctly, or at best leaves you with an extra semicolon. After getting a hacky fix for this that didn't fix the same problem in a Sass package, I had to actually figure out how to solve the root issue.

[OdatNurd on StackOverflow](https://stackoverflow.com/questions/59635627/how-to-override-sublime-text-3-packages-css3-completion-syntax) provided a fantastic walkthrough to a similar problem and left me with the tools to actually diagnose and solve the problem. You can use this to find out *what* is happening and in *what* part of the program, not just flailing and hoping you fix something.

1. Open the console (`View > Show Console` or ```ctrl + ` ``` on OSX).
2. In the console, enter in `sublime.log_commands(True)`.
3. Do what you need to recreate the issue. Immediately after triggering the unwanted behavior, document what you think is causing it that is in the console. In my case it was `command: insert_snippet {"contents": ":$0;"}`.
4. Depending on which syntax you are in, or which plugin is listed/suspected, use the command palette to `View Package File` and type in the syntax/plugin. This will show files that are hidden, as well, which makes diagnosing issues with default plugins/syntaxes much easier.
5. Once you find a possible file, open it. `Save As` in the `Packages` directory under a new folder called the name of the plugin or syntax. e.g. for the Sass plugin/syntax, I created a folder in `Packages` called `Sass` and saved a copy of the `Default.sublime-keymap` file there, which included my additions. [You can find more on overriding packages here](https://www.sublimetext.com/docs/3/packages.html).
6. In my case, I copied the old rule over and changed the `{"contents": ":$0;"}` object to `{"contents": ":$0"}`, which allowed the colon to be typed without adding any additional characters. 

<!-- --- 

- _202XXXXX: Update format_ -->