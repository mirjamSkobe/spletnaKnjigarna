<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<body>

<nav>
    <div class="nav-wrapper">
	<a href="#" class="brand-logo center">Pozdravljeni, {{ime_uporabnika}}!</a>
      <ul id="nav-mobile" class="left hide-on-med-and-down">
	    <li><a href="/"><i class="material-icons">navigation</i></a></li><!--Vhodna stan-->
		<li><a href="/stran_za_kupca">Knjigarna</a></li>
        <li><a href="/stran_za_kupca/vpis?">Vpis</a></li>
        <li><a href="/stran_za_kupca/registracija?">Registracija</a></li>
        <li><a href="/stran_za_kupca/moja_kosarica"><i class="material-icons">shopping_cart</i></a></li>
		<li><a href="/stran_za_kupca/izpis">Izpis</a></li>
      </ul>
    </div>
  </nav>

<div class="container">
  <form method="post">
    <div class="input-field">
        <input placeholder="Uporabniško ime" name="uporabnik" type="text" class="validate">
        <label for="uporabnik">Uporabniško ime</label>
    </div>
	<div class="input-field">
        <input placeholder="********" name="geslo" type="text" class="validate">
        <label for="geslo">Geslo</label>
    </div>
	<div class="input-field">
        <input placeholder="jaka.novak@gmail.com" name="email" type="text" class="validate">
        <label for="email">Email</label>
    </div>
	<div class="input-field">
        <input placeholder="Jaka Novak, Tržaška 12, 1000 Ljubljana" name="naslov" type="text" class="validate">
        <label for="naslov">Naslov</label>
    </div>
	<div class="input-field">
        <input placeholder="040123456" name="telefon" type="text" class="validate">
        <label for="telefon">Telefon</label>
    </div>
    <button type="submit">Pošlji podatke</button>
  </form>
</div>

    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
</body>
</html>