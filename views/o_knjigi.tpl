<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<style>
img {
    max-width: 100%;
    height: auto;
}
</style>

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
<div class="row">
<div class="col s4">
<img src="http://www.emka.si/img/product/48t_2011/pac-mulca.jpg"></div>
<div class="col s6">	
<h2>{{knjiga['naslov']}}</h2><br>
Avtor: <b>{{knjiga['avtor']}}</b><br>
<div class="divider"></div>
<i>{{knjiga['zanr']}}</i><br>
<div class="divider"></div>
{{knjiga['opis']}}
</div>
<div class="col s2">
<center>{{knjiga['cena']}} €
			 <form method="post">
			 <input type="hidden" name="knjiga" value="{{knjiga['ID']}}" />
			 <input type="hidden" name="kupec" value="{{ID_upor}}" />
			 <a href="/kosarica"><button class="waves-effect waves-teal btn-flat" type="submit"><i class="material-icons">shopping_cart</i></button></a>
			 </form>
</center>
</div>
</div>



</section>
</body>
</html>