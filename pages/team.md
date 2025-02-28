---
layout: default
title: Vorstand
permalink: /team
---

<div class="container mt-6">
    <div class="placeholder">text Lily</div>
    <p class="title is-2 mt-6">Susanne Titzmann</p>
    <p class="subtitle is-3 mt-4">Präsidentin Asociata Help of Afumati Dogs</p>
        <a href="https://www.facebook.com/susanne.titzmann" target="_blank">
          <img
            width="28"
            height="28"
            src="https://img.icons8.com/ios-filled/100/facebook-new.png"
            alt="facebook-new"
          />
        </a>
            <div class="columns is-multiline">
                                 <div class="column is-one-third"><div class="box" style="background-image: url('{{ include.animal.image  }}');"></div> </div>
                                                  <div class="column is-one-third"><div class="box" style="background-image: url('{{ include.animal.image  }}');"></div> </div> 
                <div class="column is-one-third"><div class="box" style="background-image: url('{{ include.animal.image  }}');"></div> </div>
            </div>
</div>

<style>
    .placeholder {
        background-color: beige;
        height: 10vh;
        width: 100%;
    }
     .box {
    height: 40vh;
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
    display: flex;
    justify-content: left;
    align-items: flex-end;
  }
</style>
