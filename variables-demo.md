---
layout: with-nav
title: Jekyll Variables
author: Tanay
description: A comprehensive demo of Jekyll variables
tags: [variables, jekyll, learning]
---

# Jekyll Built-in Variables Demo

## Site Variables (from _config.yml)
- **Site Title:** {{ site.title }}
- **Site Description:** {{ site.description }}
- **Site URL:** {{ site.url }}
- **Total Posts:** {{ site.posts.size }}
- **Build Time:** {{ site.time }}

## Page Variables (from this page's front matter)
- **Page Title:** {{ page.title }}
- **Page URL:** {{ page.url }}
- **Page Author:** {{ page.author }}
- **Page Description:** {{ page.description }}
- **Page Tags:** {{ page.tags | join: ", " }}

## Content Variable
The `content` variable contains the converted Markdown content. You can't display it here because it would create infinite recursion!

## Collections and Lists

### Recent Posts
{% for post in site.posts limit:3 %}
- **{{ post.title }}** - {{ post.date | date: "%B %d, %Y" }}
  - URL: {{ post.url }}
  - Categories: {{ post.categories | join: ", " }}
{% endfor %}

### All Site Pages
{% for page in site.pages limit:10 %}
- **{{ page.title | default: page.name }}** → {{ page.url }}
{% endfor %}

## Date Formatting
- **Raw date:** {{ page.date }}
- **Formatted:** {{ page.date | date: "%B %d, %Y" }}
- **Short:** {{ page.date | date: "%m/%d/%Y" }}

## Conditional Logic
{% if page.author %}
👤 This page has an author: **{{ page.author }}**
{% else %}
❓ No author specified
{% endif %}

{% if page.tags.size > 0 %}
🏷️ This page has {{ page.tags.size }} tags
{% else %}
📝 No tags on this page
{% endif %}