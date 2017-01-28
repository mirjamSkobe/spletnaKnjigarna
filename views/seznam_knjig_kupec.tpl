% rebase('osnova.tpl')

<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
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

<nav><!--http://stackoverflow.com/questions/30689541/simple-nav-left-and-right-alignment-->
    <div class="nav-wrapper">      
      <ul id="nav-mobile" class="right hide-on-med-and-down">
	    <li><a href="/"><i class="material-icons">navigation</i></a></li><!--Vhodna stan-->
		<li><a href="/stran_za_kupca">Knjigarna</a></li>
        <li><a href="/stran_za_kupca/vpis?">Vpis</a></li>
        <li><a href="/stran_za_kupca/registracija?">Registracija</a></li>
        <li><a href="/stran_za_kupca/moja_kosarica"><i class="material-icons">shopping_cart</i></a></li>
      </ul>
    </div>
  </nav>

<!--slika & 2 gumba, ki sta zdaj v navbar
<section>
	<img src="http://scholarschoice.com/Portals/35/Images/The-Scholars-Choice-Books.jpg" width=screen.availWidth height="350">
	<a href="/stran_za_kupca/registracija?"><button class="button">
	<span>
		<div align = center class="card-panel black"><h3>REGISTRIRAJ SE</h3></div>
		</span></button></a>
	<a href="/stran_za_kupca/vpis?"><button class="button">
	<span>
		<div align = center class="card-panel black"><h3>VPIŠI SE</h3></div>
		</span></button></a>
</section>
-->

<section class="container">
	<table>
		<tr>
			<th>Avtor</th>
			<th>Naslov knjige</th>
			<th>Žanr</th>
			<th>Dodaj v košarico</th>
		</tr>
		<tbody>
			% for knjiga1 in knjige1:
			 <tr>
			 <td>
			 {{knjiga1['avtor']}}
			 </td>
			 <td>
				<a href="/stran_za_kupca/o_knjigi/{{knjiga1['ID']}}">
				{{knjiga1['naslov']}}
				</a>
			 </td>
			 <td>
			 {{knjiga1['zanr']}}
			 </td>
			 <td style="text-align: center; vertical-align: middle;">
			 {{knjiga1['cena']}} €
			 <form method="post">
			 <input type="hidden" name="knjiga" value="{{knjiga1['ID']}}" />
			 <input type="hidden" name="kupec" value="1" /><!--kupec['ID']-->
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