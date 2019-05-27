---
layout: post
title: Blogger to Jekyll Migration Timeline
date: '2017-07-10T19:23:39.450+01:00'
author: Richard Bradshaw
categories: 
- Blogging
tags:
- Blogging
modified_time: 2017-07-10T19:23:39.450+01:00'
permalink: /2017/07/blogger-to-jekyll-migration-timeline
comments: true
---
I thought about writing a guide to explain how I migrated my blog from Blogger to Jekyll, however, it became too long, so instead here is a timeline and if you want to know more about a section, please comment at the bottom.

1. Forked [Jekyll-Now](https://github.com/barryclark/jekyll-now) into my own GitHub Repo
2. Renamed the repo to **_GitHubUsername_**.github.io, this is how GitHub pages works
3. Cloned that repo to my local machine
4. Decided I was going to use [Atom](https://atom.io/) as my Editor
5. Changed basic settings in the _config.yml file, such as site name and social media links
6. Pushed to GitHub and checked my site was working
7. Made a plan about which pages I was going to migrate first
8. Refreshed my [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) knowledge
9. Familiarised myself with [_Front Matter_](https://jekyllrb.com/docs/frontmatter/)
10. Started with my [events]({{site.url}}/events) page, and had to read about [Liquid](https://shopify.github.io/liquid/), [Templates](https://jekyllrb.com/docs/templates/) and [Filters](https://shopify.github.io/liquid/filters/abs/)
11. Got Jekyll up and [running locally](https://jekyllrb.com/docs/usage/) instead of pushing to GitHub each time I wanted to check something
12. Even though it's quite simple I also took a refresher on [YAML](http://www.yaml.org/start.html)
13. Worked out how to embed things in pages such as [YouTube](http://www.adamwadeharris.com/how-to-easily-embed-youtube-videos-in-jekyll-sites-without-a-plugin/) and [Gist](https://github.com/jekyll/jekyll-gist) posts.
14. Exported all my posts from [Blogger](https://support.google.com/blogger/answer/41387?hl=en)
15. Used a really [helpful tool](http://import.jekyllrb.com/docs/blogger/) from Jekyll to convert the Blogger export to individual markdown files for each post
16. Explored the results from the above tool, to under the Front Matter automatically added
17. Mirrored the format of blog URLs from Blogger so I have no Google/Bing dead links and negative points for broken links
18. Started working on each post to convert the HTML to Markdown, a combination of manually checking and using this [awesome converter](https://domchristie.github.io/to-markdown/)
19. Went through each post adding categories and tags to improve searching and to build the [categories](/categories) and [tags](/tags) pages
20. Created the [about me](/about) page
21. Asked some friends what they thought of my new design, the awesome [Ash Coleman](https://twitter.com/AshColeman30) got her designer friend to provide me awesome feedback!  
<br>
![Blog feedback]({{site.url}}/images/blogpostimages/blogdesignfeedback.png)
<br>
<br>
22. Action all the feedback I got, which was a deep dive into CSS. Magic stuff. I utilised [W3CSchools](https://www.w3schools.com/) a lot!
23. Re-structured the details about each blog post and added the [read time](https://carlosbecker.com/posts/jekyll-reading-time-without-plugins/)
24. Added comments to my blog using Disqus, I actually copied this from [Viv's repo](https://github.com/vivrichards600/vivrichards600.github.io)
25. Got the awesome [Thomas Harvey](https://twitter.com/thomasdharvey) to create me a Friendly Tester logo in the same style as Friendly Testing
26. Checked that my blog was providing all the [SEO](https://github.com/jekyll/jekyll-seo-tag) tags
27. Changed my hosting DNS to point to [GitHub pages](https://help.github.com/articles/setting-up-an-apex-domain/)
28. Then realised GitHub Pages don't offer HTTPS with custom domains, so discovered I could use [Cloudflare](https://www.cloudflare.com/) for free!
29. Shared it with the community!
30. Wrote about the [what I learnt](/2017/07/ten-insights-from-my-blog-migration/index.html) and why I [chose Jekyll](/2017/07/why-jekyll)
<br>
<br>
<br>
I reckon that's that.
As mentioned at the start if you're going through the same process and have some questions on specific sections, ask me in the comments.