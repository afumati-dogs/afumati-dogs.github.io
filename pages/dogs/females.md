---
layout: default
title: Hündinen
permalink: /dogs/female
---

<div class="container mt-6">
    <div class="fixed-grid has-3-cols">
  <div class="grid">     
     {% assign female_dogs = site.data.dogs | where: "sex", "Weiblich" %}     
     {% for dog in female_dogs %}
    <div class="cell"> {% include animal-card.html animal=dog type="dog" %}</div>
    {% endfor %}
  </div>
    </div>
</div>
