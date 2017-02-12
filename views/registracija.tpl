<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">      
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css">
		<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>           
		<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/js/materialize.min.js"></script>
	</head>

<body>

<nav>
    <div class="nav-wrapper indigo darken-4">
	<a href="#" class="brand-logo left">Pozdravljeni, {{ime_uporabnika}}!</a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
	    <li><a href="/">Vhodna stran</a></li>
		<li><a href="/stran_za_kupca">Knjigarna</a></li>
		<li><a href="/stran_za_kupca/filtriraj_knjige">Filtriraj knjige</a></li>
        <li><a href="/stran_za_kupca/registracija?">Registracija</a></li>
        <li><a href="/stran_za_kupca/moja_kosarica"><i class="material-icons">shopping_cart</i></a></li>
		<li><a href="/stran_za_kupca/vpis?">Vpis</a></li>
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