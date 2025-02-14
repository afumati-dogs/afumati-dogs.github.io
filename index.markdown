---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default
title: Asociatia Help of Afumati Dogs
---

<html>
  <head>
    <meta charset="utf-8">
    <title>{{page.title}}</title>
  </head>
  <body>
    <div class="container mt-6" >
      <h2 class= "title is-3"> Unsere Notfälle</h2>
      <div class="card-container">
        <div class="fixed-grid has-3-cols">
            <div class="grid">
            {% assign emergency_animals = site.data.dogs | concat: site.data.cats | where: "emergency", "true" %}
            {% for emergency_animal in emergency_animals %}
              <div class="cell"> {% include animal-card.html animal=emergency_animal %}</div>
            {% endfor %}
          </div>
        </div>
      </div>
    </div>

  </body>
</html>

<style>
.cell {
      display: flex
;
    justify-content: center;
}
</style>
