---
layout: post
title: Make Python 'Apps' and Shortcuts To Run Them on OSX
description: Using Automator and the built in Services of OSX, you can make simple Python apps run on command.
summary: Using Automator and the built in Services of OSX, you can make simple Python apps run on command.
comments: true
tags: project
---

After experimenting with [PyInstaller](https://pyinstaller.readthedocs.io/en/stable/) and [Platypus](https://sveinbjorn.org/platypus) to create a standalone app in OSX with no success, I went the much lower fidelity route. But it was successful, so I'm happy with it. YOu can see the script I made [here](https://github.com/milofultz/email_service/). 

The goal of this was first to make a standalone app that will run Python script, but second to assign it to a keystroke. I have only tested this with running a Python script, but I can't imagine it would be much more difficult for any other bash script. So here is the process:

1. Open Script Editor (in Applications/Utilities).
1. Using the `do shell script` command, add the script you want to run. Essentially, you'll want to write in what you normally put into the Terminal, separated by semicolons.
	
	`do shell script "cd 'path/to/script'; source venv/bin/activate; python main.py"`

1. Save this as an Application to your Applications folder (or wherever makes sense).
1. Close Script Editor. *(If you don't want to add a shortcut, you can stop here)*
1. Open Automator (in Applications).
1. Create a "Quick Action" or "Service", whatever one your OS says.
1. In the top bar, set the following setting: Workflow receives current **no input** in **any application**.
1. In the column second from the left, drag the "Launch Application" task into the "Drag actions or files here" area.
1. Select your application within that dropdown menu.
1. Save this with a memorable name.
1. Close Automator.
1. Open System Preferences and go to "Keyboard".
1. Within this window, click "Shortcuts".
1. Click on the "Services" menu on the left hand side.
1. Scroll to the bottom of the right window until you see your new service you created.
1. Double-click where it says 'none' and set a new shortcut (make sure it's unique and won't conflict with other programs or special characters. I chose `ctrl+opt+shift+A`). 
**NOTE: If you don't do the following steps, your shortcut will not work.**
1. Close your System Preferences.
1. Click on Finder in your dock.
1. Open the Finder dropdown menu and go into Services. Click on your new service to run it manually.

---

References:

1. <https://www.makeuseof.com/tag/applescript-bash-scripts-apps/>
1. <https://discussions.apple.com/thread/5048120>