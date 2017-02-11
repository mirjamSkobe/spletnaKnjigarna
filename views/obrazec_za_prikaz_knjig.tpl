<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">


<style>
</style>
<!--<body bgcolor="#000000"> ampak spremeniti barvo črk-->
<body>

<nav>
    <div class="nav-wrapper">
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

<form method="post">
<div class="row">
        <div class="col s4-pull-s8">
          <div class="card blue-grey darken-1">
            <div class="card-content white-text">
              <span class="card-title">Prikaži žanre:</span>
              <p>
      <input type="checkbox" class="filled-in" id="zanr1" name = "zanri" value=1 checked="checked" />
      <label for="zanr1">Kriminalni roman</label>
    </p>
	<p>
      <input type="checkbox" class="filled-in" id="zanr2" name = "zanri" value=2 checked="checked" />
      <label for="zanr2">Biografski roman</label>
    </p>
	<p>
      <input type="checkbox" class="filled-in" id="zanr3" name = "zanri" value=3 checked="checked" />
      <label for="zanr3">Družbeni roman</label>
    </p>
	<p>
      <input type="checkbox" class="filled-in" id="zanr4" name = "zanri" value=4 checked="checked" />
      <label for="zanr4">Potopisni roman</label>
    </p>
	<p>
      <input type="checkbox" class="filled-in" id="zanr5" name = "zanri" value=5 checked="checked" />
      <label for="zanr5">Zgodovinski roman</label>
    </p>
            
			<br>
              <span class="card-title">Razvrsti po:</span>
              <p>
      <input name="prikaz" type="radio" id="avtor-narascajoce" value="avtor_n" checked="checked" />
      <label for="avtor-narascajoce">Razvrsti po avtorju - naraščajoče</label>
    </p>
	<p>
      <input name="prikaz" type="radio" id="avtor-padajoce" value="avtor_p" />
      <label for="avtor-padajoce">Razvrsti po avtorju - padajoče</label>
    </p>
	<p>
      <input name="prikaz" type="radio" id="naslov-narascajoce" value="naslov_n" />
      <label for="naslov-narascajoce">Razvrsti po naslovu - naraščajoče</label>
    </p>
	<p>
      <input name="prikaz" type="radio" id="naslov-padajoce" value="naslov_p" />
      <label for="naslov-padajoce">Razvrsti po naslovu - padajoče</label>
    </p>
	<p>
      <input name="prikaz" type="radio" id="cena-narascajoce" value="cena_n" />
      <label for="cena-narascajoce">Razvrsti po ceni - naraščajoče</label>
    </p>
	<p>
      <input name="prikaz" type="radio" id="cena-padajoce" value="cena_p" />
      <label for="cena-padajoce">Razvrsti po ceni - padajoče</label>
    </p>
            </div>
            <div class="card-action">
              <button type="submit">Upoštevaj spremembe</button> 
            </div>
          </div>
        </div>
      </div>
 </form>
 
 </body>
</html>