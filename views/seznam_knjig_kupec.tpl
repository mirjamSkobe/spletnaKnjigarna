% rebase('osnova.tpl')

<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">


<body>

<nav>
  <ul>
	<li><a href="/"><div class="bar1"></div>
					<div class="bar2"></div>
					<div class="bar3"></div></a></li>
    <li><a href="/">Domača stran</a></li>
    <li><a href="javascript:void(0)">Kontakt</a></li>
  </ul>
</nav>

<section>
  <img src="http://scholarschoice.com/Portals/35/Images/The-Scholars-Choice-Books.jpg" width=screen.availWidth height="350">
</section>

<section class="container">
	<table>
		<tr>
			<th>Avtor</th>
			<th>Naslov knjige</th>
			<th>Žanr</th>
			<th>Cena</th>
			<th>Na zalogi</th>
		</tr>
		<tbody>
			% for knjiga1 in knjige1:
			 <tr>
			 <td>
			 {{knjiga1['avtor']}}
			 </td>
			 <td>
			 {{knjiga1['naslov']}}
			 </td>
			 <td>
			 {{knjiga1['zanr']}}
			 </td>
			 <td>
			 {{knjiga1['cena']}} €
			 </td>
			 <td>
			 {{knjiga1['st_naZalogi']}}
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