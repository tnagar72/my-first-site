---
layout: modular
title: My Projects
---

# My Projects

{% for project in site.projects %}
## {{ project.title }}
- **Tech:** {{ project.tech }}
- **Status:** {{ project.status }}
- **Link:** [View Project]({{ project.url }})

{{ project.content }}

---
{% endfor %}

**Collections vs Posts:**
- Posts: Blog entries with dates
- Collections: Any organized content (projects, team members, products)