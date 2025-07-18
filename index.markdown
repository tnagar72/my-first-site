---
layout: default
title: Jekyll Learning Journey
---

<div class="hero">
    <div class="container">
        <h1 class="hero-title">Jekyll Learning Journey</h1>
        <p class="hero-subtitle">Mastering static site generation from the ground up</p>
        <div class="hero-actions">
            <a href="/about/" class="btn btn-primary">Learn More</a>
            <a href="/projects.html" class="btn btn-secondary">View Projects</a>
        </div>
    </div>
</div>

<div class="container">
    <section class="features">
        <h2>What I've Learned</h2>
        <div class="grid">
            <div class="card">
                <h3>Jekyll Basics</h3>
                <p>File structure, front matter, layouts, and templating fundamentals.</p>
            </div>
            <div class="card">
                <h3>Sass & CSS</h3>
                <p>Variables, nesting, mixins, and modern CSS architecture.</p>
            </div>
            <div class="card">
                <h3>Organization</h3>
                <p>Best practices for maintainable, scalable Jekyll projects.</p>
            </div>
        </div>
    </section>
    
    <section class="recent-projects">
        <h2>Recent Projects</h2>
        {% for project in site.projects limit:2 %}
        <article class="project-preview">
            <h3><a href="{{ project.url }}">{{ project.title }}</a></h3>
            <p><strong>Tech:</strong> {{ project.tech }}</p>
            <p><strong>Status:</strong> {{ project.status }}</p>
            <p>{{ project.content | strip_html | truncate: 100 }}</p>
        </article>
        {% endfor %}
    </section>
</div>