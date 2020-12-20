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
- 20201213: [Made a write up of how the sieve method works to repent for what feels like cheating.]({{ site.baseurl }}{% post_url 2020-12-13-aoc-day-13 %})
- 20201215: Solved day 14 and 15. Day 15 was really tough to understand while I was doing it, as there was a lot to juggle, but it was a very fun one to solve. Ended up refactoring quite a bit by reading the code of [Scarymagi](https://github.com/Scarygami/aoc2020/blob/main/15/day15.py) I found on Reddit.
- 20201216: Solved day 16, and parsing was the majority of the work. It was kind of its own challenge in itself. The problem for part 1 after that was pretty straightforward with a set. Part 2 presented an interesting challenge of essentially trying to solve a [logic grid puzzle](https://en.wikipedia.org/wiki/Logic_puzzle#Logic_grid_puzzles) using programming, which I hadn't done before. That was a good time!
- 20201218: Started on day 17 and realized I need to finally learn how to use Numpy and deal with 3 dimensional arrays, as this is essentially [Conway's Game of Life](https://en.wikipedia.org/wiki/Conway's_Game_of_Life) but in 3 dimensions.
- 20201219: Solved day 17 and learned how to use Numpy fairly well with it. Ended up doing Game of Life as a 3 dimensional and _4 dimensional_ version, which was wild. 3-dimensions required a lot from me, a guy who doesn't ever do anything like this and probably solved it in a very long-winded inelegant way, but dammit I solved it.