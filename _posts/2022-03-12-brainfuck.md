---
layout: post
title: 🧠 Making A Brainfuck Interpreter
description: I made a brainfuck interpreter in C
summary: I made a brainfuck interpreter in C
comments: true
tags: project
---

[Check out the my interpreter on Codeberg](https://codeberg.org/milofultz/brainfuck) // [The original minified interpreter by Urban Mueller](https://codeberg.org/milofultz/decrypting-the-original-brainfuck-interpreter/src/branch/main/1%20pbi.c)

For a while now, I've been digging into C to get a better handle of low-level languages, as well as various esolangs like [FRACTRAN](https://www.tinybrain.fans/fractran.html). When I found [brainfuck](https://www.tinybrain.fans/brainfuck.html), a Turing-complete language consisting of only 8 characters, I knew I had to do *something* with it.

I've always heard that one of brainfuck's interesting uses for a programmer is that implementing a brainfuck interpreter in a new language is a really good way to learn how that language works. This case was no exception, as my initial run was to build it all from scratch in C, and I really did learn quite a bit. Beyond this, this stoked my desire to look into building compilers, interpreters, and language design in general.

While this version was effective and worked, I also learned quite a bit and realized how much simpler I could have made my interpreter by looking at the [original one by Urban Mueller (the language's creator)](https://codeberg.org/milofultz/decrypting-the-original-brainfuck-interpreter/src/branch/main/1%20pbi.c). This is a great example of super minified code, and I really enjoyed [untying this knot](https://codeberg.org/milofultz/decrypting-the-original-brainfuck-interpreter/src/branch/main/3%20pbi%20-%20readable.c) and learning all the subtle intricacies of order of operations with prefix/postfix, comma operators, OR's in place of if statements, etc.

<!-- --- 

- _202XXXXX: Update format_ -->