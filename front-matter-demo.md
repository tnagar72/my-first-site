---
layout: simple
title: Front Matter Demo
author: Tanay
date: 2025-07-15
tags: [learning, jekyll, tutorial]
published: true
excerpt: This page demonstrates different front matter variables
custom_color: blue
---

# {{ page.title }}

**Author:** {{ page.author }}  
**Date:** {{ page.date | date: "%B %d, %Y" }}  
**Excerpt:** {{ page.excerpt }}

## Tags
{% for tag in page.tags %}
- {{ tag }}
{% endfor %}

## Custom Variables
My favorite color is {{ page.custom_color }}.

## Conditional Content
{% if page.published %}
✅ This page is published!
{% else %}
❌ This page is a draft.
{% endif %}