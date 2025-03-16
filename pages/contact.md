---
layout: default
title: Kontakt
permalink: /contact
---

<div class="mt-6">
<form action="https://formspree.io/f/mgvonnwa" method="POST">
<div class="placeholder">
  <label for="first-name">Vorname:</label>
  <input class="input" type="text" id="first-name" name="first-name" required>
</div>
<div class="placeholder">
<label for="last-name">Nachname:</label>
<input class="input" type="text" id="last-name" name="last-name" required>
</div>
<label for="email">E-Mail-Adresse:</label>
<input class="input" type="email" id="email" name="_replyto" required>

<label for="phone">Telefonnummer:</label>
<input class="input" type="tel" id="phone" name="phone" required>

<label for="dog-number">Hundenummer:</label>
<input class="input" type="text" id="dog-number" name="dog-number" required>

<label for="message">Nachricht:</label>
<textarea id="message" class="textarea" name="message" required></textarea>

<button type="submit" class="button mt-6">Absenden</button>

</form>
</div>

<style>
  @media only screen and (max-width: 1920px) {
    .placeholder {
      width: 65vw;
    }
}
</style>
