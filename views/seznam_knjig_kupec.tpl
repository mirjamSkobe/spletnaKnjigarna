<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<style>
	table{
		font-family: arial, sans-serif;
			border-collapse: collapse;
			margin: 100px 100px;
			overflow-y:scroll;
			height:430px;
			display:block;
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

<section class="container">
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
			 <a href="/kosarica"><button class="waves-effect waves-teal btn-flat type="submit"><i class="material-icons">shopping_cart</i></button></a>
			 </form>
			 </td>
			 </tr>
			 % end
	  </tbody>
	</table>
 </section> 
<!--<footer class="w3-container w3-padding-64 w3-center w3-black w3-xlarge">
  <a href="#"><i class="fa fa-facebook-official"></i></a>
  <a href="#"><i class="fa fa-pinterest-p"></i></a>
  <a href="#"><i class="fa fa-twitter"></i></a>
  <a href="#"><i class="fa fa-flickr"></i></a>
  <a href="#"><i class="fa fa-linkedin"></i></a>
</footer>-->
</body>
</html>