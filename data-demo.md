---
layout: data-nav
title: Data Files Demo
---

# Jekyll Data Files

Data files let you store structured content in YAML, JSON, or CSV format in the `_data` folder.

## Navigation from Data
The navigation above is generated from `_data/navigation.yml` using:
```liquid
{% raw %}{% for item in site.data.navigation %}
    <a href="{{ item.url }}">{{ item.name }}</a>
{% endfor %}{% endraw %}
```

## Team Data
Here's our team from `_data/team.yml`:

{% for person in site.data.team %}
### {{ person.name }}
- **Role:** {{ person.role }}
- **Bio:** {{ person.bio }}
- **Twitter:** {{ person.twitter }}
{% endfor %}

## Benefits of Data Files
1. **Centralized data** - Change navigation in one place
2. **Clean separation** - Content vs structure
3. **Easy maintenance** - No need to edit layouts
4. **Multiple formats** - YAML, JSON, CSV supported