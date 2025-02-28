---
layout: default
title: Rüden
permalink: /dogs/male
---

<div class="container mt-6">
    <div class="fixed-grid has-3-cols">
  <div class="grid">     
     {% assign male_dogs = site.data.dogs | where: "geschlecht", "Männlich" %}     
     {% for dog in male_dogs %}
    <div class="cell"> {% include animal-card.html animal=dog type="dogs" %}</div>
    {% endfor %}
  </div>
    </div>
</div>
