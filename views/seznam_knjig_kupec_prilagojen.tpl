<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">


<style>
</style>

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

        <div>
	<table>
		<tr>
			<th>Avtor</th>
			<th>Naslov knjige</th>
			<th>Žanr</th>
			<th>Cena</th>
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
			 <td>
			 {{knjiga['cena']}} €
			 </td>
			 </tr>
			 % end
	  </tbody>
	</table>
      </div>

</body>
</html>