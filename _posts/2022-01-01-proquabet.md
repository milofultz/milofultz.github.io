---
layout: post
title: 🔠 Proquabet - Encode text in a five-letter mishmash
description: 🔠 Proquabet - Encode text in a five-letter mishmash
summary: 🔠 Proquabet - Encode text in a five-letter mishmash
comments: true
tags: project
---

**[Check out the project files on GitHub](https://github.com/milofultz/proquabet)**

>  Hodoj; kudos kusob jitoz lanos kibod babap!

Turn your prose into a constant stream of encrypted and meaningless-sounding five-letter words! This Python script will convert a string of text into UTF-8 codes, and then each of those characters into a [proquint](https://www.tinybrain.fans/proquints.html), and vice versa.

## Proquints

To understand the proquabet, you must first understand [proquints](https://www.tinybrain.fans/proquints.html). Proquints are a way of encoding numbers into human-readable and pronounceable text by mapping subsets of that number to consonants and vowels. For instance, the 16-bit number 50,416 turns into `cigub`, and the 32-bit hexadecimal number `0x12345678` turns into `damuh-jinum`,

The creation of a proquint from a number essentially goes like this:

1. Convert the number into its binary representation
1. For each set of bits in the map, find the corresponding consonant or vowel based on that number
1. If the number is greater than 16 bits, repeat this while separating each successive proquint with a hyphen
1. Put those characters together and bask in the glory of your new creation

*To understand this better, check out the page on my [wiki](https://www.tinybrain.fans/proquints.html), as it is a bit confusing without examples.*

## Character Encoding

So now that we have the basic idea of what proquints are, we should also talk about character encoding, the most basic of which is ASCII. As you can see in the [ASCII table](https://www.tinybrain.fans/proquints.html), each basic Western character is mapped to an 8-bit number from `0x00` to `0x7f` in hexadecimal, or `0b00000000` to `0b01111111` in binary. Using this same premise, we now have UTF-8, or [Unicode](https://en.wikipedia.org/wiki/Unicode), which is an extendable international character standard that includes over 150 modern and historic scripts, symbols, emojis, and more. These characters are all stored anywhere between an 8-bit to a 32-bit number, for instance 😎 is represented as `0x1F60E` in hexadecimal, or `0b00000000000000011111011000001110`. 

## Okay, okay, what does it do tho

So now that you know a proquint can convert any number into a string of text and all characters are stored as numbers, we can see how a pipeline could emerge:

````
Characters => Numbers => Proquints
````

For instance, if we start with a string of characters, like `danger lorries`, we can convert these into a series of numbers, by consulting the ASCII table:

```
d = 0x64
a = 0x61
n = 0x6e
g = 0x67
...
```

Then once we have our numbers, we can convert those into proquints:

```
0x64 = badoh
0x61 = badod
0x6e = badov
0x67 = badol
...
```

This is kind of boring, and I knew that all basic ASCII characters were only eight bits long, so I found I could smush them together to make a more varied proquint. (This doesn't work if UTF-8 characters are involved)

```
0x6461 = kidod
0x6e67 = kunol
...
```

If we did this with the whole phrase `danger lorries`, we would have:

```
kidod kunol kijuf fados kutuf lanon kijug
```

And this process can be reversed to bring back the characters we encoded.

## But why?

For fun.

## References

1. https://www.tinybrain.fans/proquints.html
1. https://www.asciitable.com/
1. https://en.wikipedia.org/wiki/Unicode

<!--

- _202XXXXX: Update format_ -->