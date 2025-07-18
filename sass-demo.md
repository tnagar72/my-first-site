---
layout: sass-demo
title: Sass Demo
---

# Sass Features Demo

This page demonstrates all the Sass features we learned!

## 1. Variables in Action
Our color scheme uses Sass variables:
- Primary color: `$primary-color: #007acc`
- Secondary color: `$secondary-color: #333`
- Background: `$light-gray: #f0f0f0`

## 2. Nesting Example
The navigation is styled with nested CSS:
```scss
.nav {
  background: $secondary-color;
  
  a {
    color: $white;
    
    &:hover {
      background: rgba($white, 0.1);
    }
  }
}
```

## 3. Mixins Demo
Here are buttons created with the `@mixin button-style`:

<button class="btn-primary">Primary Button</button>
<button class="btn-secondary">Secondary Button</button>
<button class="btn-danger">Danger Button</button>

## 4. Grid Layout
<div class="grid">
  <div class="card">
    <h3>Card 1</h3>
    <p>This card uses Sass variables for styling.</p>
  </div>
  <div class="card">
    <h3>Card 2</h3>
    <p>Border color comes from $primary-color.</p>
  </div>
  <div class="card">
    <h3>Card 3</h3>
    <p>All cards use the same Sass styles.</p>
  </div>
</div>

## How It Works
1. **Write Sass** in `assets/css/styles.scss`
2. **Jekyll compiles** it to `assets/css/styles.css`
3. **Browser loads** the compiled CSS
4. **You get** all the Sass features without the browser knowing!

## Benefits You Can See
- **Consistent colors** (change one variable, update everywhere)
- **Organized CSS** (nested structure matches HTML)
- **Reusable components** (button mixin used 3 times)
- **Better maintainability** (easy to modify and extend)