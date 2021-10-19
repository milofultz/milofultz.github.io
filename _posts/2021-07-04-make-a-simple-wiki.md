---
layout: post
title: 📄 Make A Simple Wiki with Markdown
description: "How to make your own simple wiki with backlinking out of Markdown files with {{SWIKI}}."
summary: "How to make your own simple wiki with backlinking out of Markdown files with {{SWIKI}}."
comments: true
tags: project
---

For the last year or so, I've been keeping notes about programming and what I've been learning about it, which has been super helpful for me. But I've also found myself sending out some of these files to people for reference, which is fine but not ideal. I always thought that what would be WAY nicer is to have a wiki online that I could send people to so that they would have a reference now *and* for the future, plus then they could reference it for whatever else, as well. My note-taking is essentially my learning process, so why not share it?

I recently did this for those notes at <https://www.tinybrain.fans>, and will continue using it for any wiki/Zettelkasten material I generate.

## Set Up

This setup requires [{% raw %}{{SWIKI}}{% endraw %}][], a [Github](https://github.com/) repository where you will put your built static site, and optionally, a domain to host it on.

### [{% raw %}{{SWIKI}}{% endraw %}][]

You will need to use Markdown files with the [Jekyll-style front matter](https://jekyllrb.com/docs/front-matter/) for your pages, and to create the necessary files that SWIKI needs to build it (learn more about the features and specifics of [{% raw %}{{SWIKI}}{% endraw %}][] here). After getting those created and placed, you should be able to build your site and output a set of static HTML files. 

Create a new folder where you will keep this built out site. You will want to [initiate a new Git repository](https://kbroman.org/github_tutorial/pages/init.html) there and after you build your site in that folder, commit your changes.

**NOTE:** Github Pages also requires an empty `.nojekyll` file be in the root directory if you are creating a static site with no build step like Jekyll. If you don't have this in there, it may build but will eventually fail.

### Github Pages

Create a new Github repo which will house your built site and connect it to the Git repo you built in the last step. If you aren't using a custom domain, [be sure to name this using yourusername.github.io](https://guides.github.com/features/pages/) or you may not be able to host it correctly on the Github Pages URL. 

Go ahead and push up those newly built files to the remote repo. If you don't do this first, it won't let you set up your Github Pages.

After completing this, go into this repo's settings and open the "Pages" or "Github Pages" tab. Set the source to be the root folder,    and you should be able to go to the URL listed to see your new site.

### Custom Domain

If you end up wanting to use a custom domain for hosting, you will need to put the custom domain's URL into the Github Pages settings first. After completing this, go into the DNS settings of your custom domain and change your "Custom resource records". You will need to add an "A" type to point the domain at the Github Pages, using these four IP addresses:

	185.199.108.153
	185.199.109.153
	185.199.110.153
	185.199.111.153

### WAIT

You may not see any updates to your website for the next 48-hours, so give it time. Go for a walk, eat dinner, I dunno.

## You're done!

After this, your page should be visible at your chosen domain. To make updates to your wiki, just update your Markdown files, rebuild your site, commit the changes in Git, and push it up. These changes should be visible within about a minute of pushing up.

- 20211019: [Add note for required `.nojekyll` file to build correctly](https://github.community/t/github-pages-build-failed-although-it-passed-a-few-months-ago/10271).

<!-- --- 

- _202XXXXX: Update format_ -->

[{% raw %}{{SWIKI}}{% endraw %}]: https://github.com/milofultz/swiki