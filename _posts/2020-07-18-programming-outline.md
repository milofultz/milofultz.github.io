---
layout: post
title: Create a better program faster with an outline V2
description: I've written so much spaghetti code for so long and finally learned from my roommate how to write better code. This is how I use this method.
summary: I've written so much spaghetti code for so long and finally learned from my roommate how to write better code. This is how I use this method.
comments: true
tags: project
---

*This is an update of an older post: [Create a better program faster with an outline]({{ site.baseurl }}{% post_url 2020-07-06-programming-outlining %})*

Like before, **stay in abstract thinking as long as possible. The longer you take to implement your concepts, the better.**

# Big Overview:

* Understanding the Problem
* Breaking It Down
* Inspection
* Development/Testing

---

## Understanding the Problem

1. Describe what the problem is in abstract terms as clearly as you can. What is the thing that you can't do or isn't happening right now?

2. Describe the solution to this problem in abstract terms as the desired result. Don't worry about the how yet, just what the result will be.

3. Describe in abstract terms what things the program will do, as if it was a person doing it, not a computer. What are all of the smaller tasks within this bigger problem/solution?

4. From there, describe how your program will handle data on the way in and the way out (not within the program). What do you as the user want to give it and what do you want it to spit back out? Like when you give the dry cleaner your clothes: input is dirty clothes, output is clean clothes.

## Breaking It Down

5. Break down the process further in abstract terms. What are the distinct actions the program will need to take to solve this problem? If you were asking a very pedantic person to do this task for you, what would you tell them?

6. What are the biggest distinct functions you can perceive in the description you just created?

7. Can you break these down further into sub-tasks? If so, go back to breaking it down (5.) in abstract terms until you can't do it anymore.

8. With the many discrete functions you have, what data types would be best to give to and get from them?

9. Make a very rough outline of each function in your program using information from chunking steps. Include only necessary in/out information (e.g. if you are wanting to eat and the data type is 'food' and it will return 'poop': `def eat(food): return poop`)
	
10. Within these functions, write out an overview for each function. Write again for this ultra pedantic person.

11. See if you can break down elements of the functions into even smaller parts. The more that functions can be used and reused all around the whole program, the better.

## Inspection

12. Once the program has been broken down into its most atomistic functions, start writing pseudocode into them to have an idea of what you're going to do.

13. Look again for similarities in between functions and see if there is any process the functions could share. If so, then take that and break it down into it's own function.

14. When you feel it has been fully broken down and the flow of data makes sense, create a basic outline of how the different functions will flow together from beginning to the end of the program. Do the data types match? If not, can you use a different data type? Is an adaptation needed between one function and another?

## Development/Testing

15. Make a basic way to develop each function and test it as it goes (in Python, by adding an ```if __name__ == '__main__':``` section).

16. Figure out what is the easiest thing to program and test. Go with the pseudocode you've written and start fleshing it out with real functionality. Test each part as you go in the terminal.

17. Repeat this process with each element of your code, ensuring that it works exactly as you expect. You don't have to go in a linear fashion, if it is easier or more sensible to jump around.

18. Don't be afraid to go back to previous steps if you realize further possibilities of chunking or other revisions.