% rebase('osnova.tpl')

<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<style>
	img {
    max-width:300px; 
    height:auto
  }
</style>

<body>

<nav><!--http://stackoverflow.com/questions/30689541/simple-nav-left-and-right-alignment-->
    <div class="navbar-wrapper container">      
      <ul id="nav-mobile" class="right hide-on-med-and-down">
	    <li><a href="/"><i class="material-icons">navigation</i></a></li><!--Vhodna stan-->
		<li><a href="/stran_za_kupca">Knjigarna</a></li>
        <li><a href="/stran_za_kupca/vpis?">Vpis</a></li>
        <li><a href="/stran_za_kupca/registracija?">Registracija</a></li>
        <li><a href="/stran_za_kupca/moja_kosarica"><i class="material-icons">shopping_cart</i></a></li>
      </ul>
    </div>
  </nav>

<div class="container">
<div class="row">
<div class="col s5">
<img src="http://www.emka.si/img/product/48t_2011/pac-mulca.jpg"></div>
<div class="col s5">
<h2>{{knjiga['naslov']}}</h2><br>
{{knjiga['avtor']}}<br>
{{knjiga['zanr']}}<br>
{{knjiga['opis']}}
</div>
<div class="col s2">
{{knjiga['cena']}} €
			 <form method="post">
			 <input type="hidden" name="knjiga" value="{{knjiga['ID']}}" />
			 <input type="hidden" name="kupec" value="1" /><!--kupec['ID']-->
			 <a href="/kosarica"><button class="waves-effect waves-teal btn-flat" type="submit"><i class="material-icons">shopping_cart</i></button></a>
			 </form>
</div>
</div>



</section>
</body>
</html>