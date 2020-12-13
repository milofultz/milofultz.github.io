---
layout: post
title: 🧩 Advent Of Code 2020 - Solutions
description: Here's some solutions I made for the AoC 2020
summary: Here's some solutions I made for the AoC 2020
comments: true
tags: project
---

These are my solutions. I'm trying to do as many as I can in both Python and in Javascript. Plus I'm going to scope out people's answers in C and see what I can glean.

[**Check out the solutions on GitHub**](https://github.com/milofultz/aoc2020)

- 20201201: Solved the first challenge, starting up number 2
- 20201202: Solved day 2
- 20201203: Solved day 3 and 4
- 20201204: Solved day 5
- 20201205: Solved day 6
- 20201206: Solved day 7. Definitely noticing the desire to be on the leaderboards and "cool" or "fast" or whatever and trying to go against that feeling. I would rather have effective solutions "slowly" than flail around and hope stuff works.
- 20201207: Solved day 8. Worked much more purposefully and without (as much) regard to the clock; still working on focusing on the process over the product.
- 20201208: Solved day 9. Brute forcing a problem I should probably use an algorithm for, but don't know enough. Now is the time to really dig! Look through solutions on Reddit, Mastodon, etc.
- 20201209: Revised my work for day 9 to find a better solution. Ended up using [a solution from 'neelakantankk' I found on Reddit](https://github.com/neelakantankk/Advent_of_Code_2020/blob/main/Day_09/day_09.py), utilizing a deque, which I have very little experience with. It is a very interesting solution that utilizes a truth I missed in the iteration. When iterating through the contiguous numbers, if the sum of those contiguous numbers is higher than the target, you can safely remove the first number in the contiguous numbers. I'm having a hard time fully grokking it but it intuitively feels right, so I'm going to try and work it out on paper until it really makes sense.
- 20201209: Solved day 10 part 1 but do not have the know how for part 2 without just stealing an answer without any understanding. Will come back later.
- 20201210: Solved day 11
- 20201211: Solved day 12
- 20201211: Solved day 13 part 1 and have a brute force solution for part 2; however this solution has been spinning for a half hour at least and is showing no signs of progress.
- 20201213: Went and searched for solutions and [found one that I was really able to understand from gravitar64](https://www.reddit.com/r/adventofcode/comments/kc4njx/comment/gfqeouq), using a ["sieving" method](https://en.wikipedia.org/wiki/Sieve_theory). This didn't use some intense number theory, like other solutions which used the [Chinese Remainder Theorem](https://en.wikipedia.org/wiki/Chinese_remainder_theorem). I did cheat, but I understand the answer and how it works and that's all I wanted anyway.