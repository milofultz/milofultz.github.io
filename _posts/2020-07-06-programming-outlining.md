---
layout: post
title: Create a better program faster with an outline
description: I've written so much spaghetti code for so long and finally learned from my roommate how to write better code. This is how I use this method.
summary: I've written so much spaghetti code for so long and finally learned from my roommate how to write better code. This is how I use this method.
comments: true
tags:
---

*An updated version can be found here: [Create a better program faster with an outline V2]({{ site.baseurl }}{% post_url 2020-07-18-programming-outline %})*

I've written so much spaghetti code for so long and finally learned from my roommate how to write better code. This is how I use this method.

First, **stay in abstract thinking as long as possible. The longer you take to implement your concepts, the better.**

For this example, I will use my [Bookmark Crawler]({{ site.baseurl }}{% post_url 2020-07-02-bmcrawl %}) idea, which was written in Python.

---

Big Picture
---

Describe what your program will do in abstract terms, as if it was a person doing it, not a computer.

>The bookmark crawler will go through your bookmarks and make a list of all the links it can find. Then it will go through all of *those* links, repeating the process and making an even bigger list of links. After doing this, it will make an HTML file that you can look at and click around.

From there, describe how your program will handle data. Start BIG as possible.

>The bookmark crawler will take an HTML file of your bookmarks as input and output an HTML file of new links to check out.

Chunking
---

Break down the process further in abstract terms. What are the distinct actions it will need to take? What would a random stupid guy need if you wanted him to do it?

>The bookmark crawler will start by opening your bookmarks file and searching for links. These links, along with their titles, will be added to a list. This list will then be sent off to be crawled. This crawling process will be: opening each page that was found in the bookmarks; opening all the links on the page; and copying down all the links with their titles. This process is repeated with the new links that are found X amount of times, whatever the user determines. Once the crawling process is finished, then a list of these new links will be added to an HTML page for browsing.

Determine the biggest distinct functions you can perceive in the description you just created.

> * **Input**: Take bookmark file and turn it into a list of links that the program can use.
> * **Crawler**: Crawl new links from the bookmark, as well as further links received, taking down needed info.
> * **Export**: Make all new links usable in a user-friendly file.

What data types would be best to transfer in between these functions?

> * **Input** - IN: HTML file, OUT: List containing relevant information from bookmarks.
> * **Crawler** - IN: List of bookmarks info from Input, OUT: List of new links information.
> * **Export** - IN: List of new links information, OUT: HTML file.

Outlining Functions
---

Make a very rough outline of the program using information from chunking steps. Include only necessary in/out information.
	
```
# Input: Take bookmark file and turn it into a list of links that the program can use.
# IN: HTML file, OUT: List containing relevant information from bookmarks.
def input(filename):
	url_list = []
	return url_list
	
# Crawler: Crawl new links from the bookmark, as well as further links received, taking down needed info.
# IN: List of bookmarks info from Input, OUT: List of new links information.
def crawler(urls):
	found_urls = []
	return found_urls
	
# Export: Make all new links usable in a user-friendly file.
# IN: List of new links information, OUT: HTML file.
def export(urls):
	# Pseudocode: create pretty HTML file of new links.
	pass
```
		
Write out overview for each function as if you were telling a random stupid guy to do it.

> Input: Open the file. Go through the whole file looking for links. Copy down all URLs, titles, and include that you found the link on the bookmarks page. When finished, compile it into a document that can be handled by the Crawler.

Do this for all functions and see how you can break down the process into atomistic functions. The more that functions can be used and reused all around the whole program, the better.

Once the program has been broken down into its most atomistic functions, start writing pseudocode into them to have an idea of what you're going to do.

```
# Input: Take bookmark file and turn it into a list of links that the program can use.
# IN: HTML file, OUT: List containing relevant information from bookmarks.
def input(filename):
	#Open the file
	#Go through the whole file looking for links
	#Copy down all URLs, titles, and include that
	#you found the link on the bookmarks page.
	#Compile it into a document that can be 
	#handled by the Crawler
	url_list = []
	return url_list
```

Further Chunking
---
		
Look for similarities in between functions and see if there is any process the functions could share. If so, then take that and break it down into it's own function. (e.g. in this program, both the crawler and the input need to take all the links off of a given page)

Testing
---
When you feel it has been broken down fully and the flow of data makes sense, make a basic way to test it as it goes. In Python, this is by adding an ```if __name__ == '__main__':``` section. Start with more pseudocode and continue with it until you feel that you can correctly write out the flow using the functions you've already created.

Start Writing Code
---
Figure out what is the easiest thing to program and test. Go with the pseudocode you've written and start fleshing it out with real functionality. Test each part as you go in the terminal. In the following example, I'll first test that I can open a file and return the contents of the file.

```
# Input: Take bookmark file and turn it into a list of links that the program can use.
# IN: HTML file, OUT: List containing relevant information from bookmarks.
def input(filename):
	#Open the file
	with open(filename, 'r') as f:
		html = f.read()
	#Go through the whole file looking for links
	#Copy down all URLs, titles, and include that
	#you found the link on the bookmarks page.
	#Compile it into a document that can be 
	#handled by the Crawler
	url_list = []
	# return url_list
	return html
	
if __name__ = '__main__':
	print(input('bookmarks.html'))
	
############
Terminal
############

$ python3 bm_crawl.py
<html>
	<head>
	...
	</body>
</html>
$
```
Repeat this process with each element of your code, ensuring that it works exactly as you expect. You don't have to go in a linear fashion, if it is easier or more sensible to jump around.

Don't be afraid to go back to previous steps if you realize further possibilities of chunking or other revisions.