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
<style>
	table {
		font-family: arial, sans-serif;
		border-collapse: collapse;
		
		display:block;
	}
</style>

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
    
<section>
  <!--<img src="http://marthaslibrary.com/wp-content/uploads/2015/06/book.png" width=screen.availWidth height="500">-->
</section>

<section class="container">

      <div class="row">
        <div class="col s12 m6">
          <div class="card blue-grey darken-1">
            <div class="card-content white-text">
              <span class="card-title"><center>Račun</center></span>
  <table>
    <thead>
	  <tr><th>Število izvodov</th><th>Knjiga</th><th>Za plačilo</th></tr>
    </thead>
    <tbody>
	 % for knjiga in knjige:
	 <tr>
	 <td style="text-align: center;">
	 {{knjiga['stevilo_izvodov']}}
	 </td>
	 <td>
	 {{knjiga['avtor']}}: <i>{{knjiga['naslov']}}</i>
	 </td>
	 <td nowrap>
	 {{knjiga['cena_vseh_izvodov']}} €
	 </td>
	 </tr>
	 % end
  </tbody>  
  </table>
			  
            </div>
            <div class="card-action">
			<center>Skupaj za plačilo: {{cena}} €<br>
			<form method="post">
			<input type="hidden" name="kupec" value="{{kupec}}" />
			<button type="submit">Pošlji račun</button>
			</form>
			</center>
            </div>
          </div>
        </div>
      </div>
</section>
</body>
</html>