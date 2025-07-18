---
layout: modular
title: Includes Demo
---

# Jekyll Includes

Includes are reusable HTML components stored in the `_includes` folder.

## What Are Includes?
- **Reusable components** - Navigation, footer, sidebar, etc.
- **DRY principle** - Don't Repeat Yourself
- **Maintainable** - Change once, update everywhere

## How They Work
```liquid
{% raw %}{% include navigation.html %}
{% include footer.html %}{% endraw %}
```

## Benefits
1. **Navigation** - Defined once in `_includes/navigation.html`
2. **Footer** - Defined once in `_includes/footer.html`
3. **Layouts** - Use includes to build modular templates
4. **Consistency** - Same components across all pages

## File Structure
```
_includes/
├── navigation.html
├── footer.html
└── sidebar.html (future component)
```

This page uses the `modular.html` layout which includes both navigation and footer components!