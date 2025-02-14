---
layout: default
title: Katzen
permalink: /cats
---

<div class="container mt-6">
    <div class="fixed-grid has-3-cols">
  <div class="grid">          
     {% for cat in site.data.cats %}
    <div class="cell"> {% include animal-card.html animal=cat type="cat" %}</div>
    {% endfor %}
  </div>
    </div>
</div>
