% rebase('osnova.tpl')

<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<style>
	table{
		font-family: arial, sans-serif;
			border-collapse: collapse;
			margin: 20px 100px;
			overflow-y:scroll;
			height:430px;
			display:block;
	}
</style>

<body>

<nav>
  <ul>
    <li><a href="/">Domača stran</a></li>
    <li><a href="javascript:void(0)">Kontakt</a></li>
  </ul>
</nav>

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

<section class="container">
	<table>
		<tr>
			<th>Avtor</th>
			<th>Naslov knjige</th>
			<th>Žanr</th>
			<th>Cena</th>
		</tr>
		<tbody>
			% for knjiga1 in knjige1:
			 <tr>
			 <td>
			 {{knjiga1['avtor']}}
			 </td>
			 <td>
				<a href="/stran_za_kupca/naslov=knjiga1['id']">
				{{knjiga1['naslov']}}
				</a>
			 </td>
			 <td>
			 {{knjiga1['zanr']}}
			 </td>
			 <td>
			 {{knjiga1['cena']}} €
			 </td></tr>
			 % end
	  </tbody>
	</table>
 </section>
 
 <footer class="w3-container w3-padding-64 w3-center w3-black w3-xlarge">
  <a href="#"><i class="fa fa-facebook-official"></i></a>
  <a href="#"><i class="fa fa-pinterest-p"></i></a>
  <a href="#"><i class="fa fa-twitter"></i></a>
  <a href="#"><i class="fa fa-flickr"></i></a>
  <a href="#"><i class="fa fa-linkedin"></i></a>
</footer>

</body>
</html>