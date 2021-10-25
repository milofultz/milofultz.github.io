---
layout: post
title: 🧩 Discover Your Own Rubik's Cube Algorithms
description: We can all look up the algorithms for Rubik's Cubes online. But can we discover them ourselves?
summary: We can all look up the algorithms for Rubik's Cubes online. But can we discover them ourselves?
comments: true
tags: project
---

I have always wanted to solve a [Rubik's Cube](https://en.wikipedia.org/wiki/Rubik%27s_Cube) but was not really interested in getting the solution handed to me. But solving seemed way too daunting to do all at once when I first encountered the cube as a kid. But since I've spent a good amount of time in the interim solving puzzles, doing programming, and understanding algorithms, I figured I would take another shot.

I'll be updating this page at the bottom with updates on my progress.

## The Challenge

**Given the cube and the names of each step, can I discover and document the steps that are necessary to solve the Rubik's Cube?**

This challenge is a bit too much for me to try and figure it out TOTALLY from scratch, so I'm bringing in the *names* of the steps and the movement descriptors to aid in my documentation and discovery.

### Given Information

#### Steps

1. White cross
2. White corners
3. Second layer
4. Yellow cross
5. Yellow edges
6. Yellow corners
7. Orient yellow corners

#### Glossary of Singmaster notation

| Notation             | Description                                                  |
| -------------------- | ------------------------------------------------------------ |
| `F` (Front)          | the side currently facing the solver                         |
| `B` (Back)           | the side opposite the front                                  |
| `U` (Up)             | the side above or on top of the front side                   |
| `D` (Down)           | the side opposite the top, underneath the Cube               |
| `L` (Left)           | the side directly to the left of the front                   |
| `R` (Right)          | the side directly to the right of the front                  |
| `M` (Middle) | the layer between L and R, turn direction as L (top-down) |
| `E` (Equator) | the layer between U and D, turn direction as D (left-right) |
| `S` (Standing) | the layer between F and B, turn direction as F |
| `x` (axis)  | rotate the entire Cube on R                                  |
| `y` (axis)  | rotate the entire Cube on U                                  |
| `z` (axis)  | rotate the entire Cube on F                                  |

- Each of these notations means to rotate that segment clockwise, with a `'` on a step meaning rotate the segment anticlockwise. 
- A `2` after a notation means to perform that operation twice in a row.
- `w` (wide) means to include the middle layer on the same axis (e.g. `Fw` includes the front face and the layer behind).

For example, `M2 Dw' F D'` would mean:

1. Rotate the `M` (middle) twice;
2. Rotate the side underneath the cube *and* the layer adjacent to it anticlockwise;
3. Rotate the face of the cube clockwise;
4. Rotate the the side underneath the cube anticlockwise.

## The Solution

### 1. White Cross

The white cross step is pretty trivial, as far as I can tell. If there are algorithms, it kind of doesn't seem to be super important. The goal is to get all the white squares together to make a cross shape, with the center included, like a `+`. Looking at it straight on should look like this:

```
.X. // X's being white squares, and
XXX //  dots representing anything
.X. //  other than the white squares.
```

### 2. White Corners

First, select a corner/column to focus on. You need to rotate `E` and `D` layers until you have the white corner *somewhere* within the same column. This could mean on the underside of that column or somewhere on the side of that column. 

The algorithm that is simplest but will take the longest is this: `R' D R D'`. If this is repeated, eventually that black square will end up on the top of the cube.

*There are a few simpler ones that can be deduced from this and I will leave it to the cuber to figure them out. Practice will elucidate these algorithms very clearly!*

Once this is finished, the cube should have all of the white squares on top of the cube.

### 3. Second Layer

Assuming the white squares are on top of the cube, you first want to rotate `Dw` until you have on the `F` layer, in the `M` column, at least two of the same colors on the `T` and `E` layer. Sometimes, you can end up with more than one set of connected colors on other layers (`R`, `L`, or `B`) through successive rotations. Our goal is to have the maximum connections possible.

Once this is complete, there are two possibilities with two different algorithms.

#### Two *adjacent* faces with connected colors

1. Rotate `x` until the two connected color sections are on the `L` and `B` layers. In the `M` column of the `F` and `R` layers, you should see opposite colors on the `T` and `E` layers. For example, on one face green and orange, and on the other, orange and green.
2. Do the following: `M' D2 M D M' D' M`. When this is complete, the color that was on the `M` column of the `T` layer of the `F` layer should be on the adjacent `U` block face, and vice versa.
3. Rotate `x` and repeat step 2.
4. Rotate `x'` and do the following: `M' D' M x M' D2 M x' M' D M`. 

#### Two *opposite* faces with connected colors

1. Rotate `x` until the two connected color sections are on the `L` and `R` layers.
2. Do the following: `M2 D2 M'2`.

Once complete with any of these situations, you should have all four colors connected on the `M` column of the `T` layer of the `F`, `L`, `R`, and `B` layers.

*NOTE: I have not figured out how to get the side pieces of `T` or `E` aligned yet.*

- _20211022: Add instructions for steps 1, 2, and 3._