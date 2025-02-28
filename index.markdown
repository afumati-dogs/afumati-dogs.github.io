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
  <div class="columns is-multiline">
    {% assign emergency_animals = site.data.dogs | concat: site.data.cats | where: "notfall", "true" | slice: 0, 3 %}
    
    {% for emergency_animal in emergency_animals %}
      <div class="column is-one-third">
        {% assign animal_type = '' %}
        
        <!-- Bestimme den Typ basierend auf der Quelle -->
        {% if site.data.dogs contains emergency_animal %}
          {% assign animal_type = 'dogs' %}
        {% elsif site.data.cats contains emergency_animal %}
          {% assign animal_type = 'cats' %}
        {% endif %}
        
        {% include animal-card.html animal=emergency_animal type=animal_type %}
      </div>
    {% endfor %}
  </div>
</div>

      <p class="mt-5">Es suchen auch noch weitere Vierbeiner ein Zuhause:</p>
      <div class="button-container mt-3">
        <a href="/dogs/male"><button class="button is-large">Rüden</button></a>
         <a href="/dogs/female"> <button class="button is-large">Hündinnen</button></a>
        <a href="/cats "><button class="button is-large">Katzen</button></a>
      </div>
      <h4 class= "title is-4 mt-6">Eine unserer Fellnasen hat Ihr Interesse geweckt? Dann füllen Sie einfach die
      <a           href="../Selbstauskunftsbogen_HUND_Stand 01_2022.pdf"
          target="_blank">Selbstauskunft</a> aus!</h4>
    </div>

  </body>
</html>

<style>
.cell {
      display: flex;
    justify-content: center;
}
.button-container{
  display: flex;
  justify-content: space-evenly;
}
</style>
