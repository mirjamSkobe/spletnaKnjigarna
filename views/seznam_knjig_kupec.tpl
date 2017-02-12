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
</style>
<!--<body bgcolor="#000000"> ampak spremeniti barvo črk-->
<body>

<nav>
    <div class="nav-wrapper indigo darken-4">
	<a class="brand-logo left">Pozdravljeni, {{ime_uporabnika}}!</a>
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

        <div class="col s8-push-s4">
	<table>
		<tr>
			<th>Avtor</th>
			<th>Naslov knjige</th>
			<th>Žanr</th>
			<th>Dodaj v košarico</th>
		</tr>
		<tbody>
			% for knjiga in knjige:
			 <tr>
			 <td>
			 {{knjiga['avtor']}}
			 </td>
			 <td>
				<a href="/stran_za_kupca/o_knjigi/{{knjiga['ID']}}">
				{{knjiga['naslov']}}
				</a>
			 </td>
			 <td>
			 {{knjiga['zanr']}}
			 </td>
			 <td style="text-align: center; vertical-align: middle;">
			 {{knjiga['cena']}} €
			 <form method="post">
			 <input type="hidden" name="knjiga" value="{{knjiga['ID']}}" />
			 <input type="hidden" name="kupec" value="{{ID_upor}}" />
			 <a href="/kosarica"><button class="waves-effect waves-teal btn-flat type="submit">
			     <i class="material-icons">shopping_cart</i></button></a>
			 </form>
			 </td>
			 </tr>
			 % end
	  </tbody>
	</table>
      </div>
	
</body>
</html>