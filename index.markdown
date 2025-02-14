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
            {% assign emergency_animals = site.data.dogs | concat: site.data.cats | where: "emergency", "true" %}
            {% for emergency_animal in emergency_animals %}
              <div class="column is-one-third"> {% include animal-card.html animal=emergency_animal type="dog" %}</div>
            {% endfor %}
        </div>
      </div>
      <p class="mt-5">Es suchen auch noch weitere Vierbeiner ein Zuhause:</p>
      <div class="button-container mt-3">
        <button class="button is-large">Rüden</button> 
        <button class="button is-large">Hündinnen</button>      
        <button class="button is-large">Katzen</button>
      </div>
      <h4 class= "title is-4 mt-6">Eine unserer Fellnasen hat Ihr Interesse geweckt? Dann füllen Sie einfach die <a>Selbstauskunft</a> aus!</h4>
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
