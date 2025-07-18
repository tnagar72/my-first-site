---
layout: simple
title: My Test Page
---

This text is written in **Markdown** in the test.md file.

- This is a bullet point
- This is another bullet point

When Jekyll processes this page, it:
1. Converts this Markdown to HTML
2. Takes the resulting HTML and puts it where the content variable appears in the simple.html layout
3. Replaces the page.title variable with "My Test Page"
4. Creates the final HTML page

**This demonstrates how layouts work:**
- The layout provides the HTML structure (head, body, styling)
- Your markdown content gets converted and inserted into the layout
- Variables from front matter get replaced throughout the template