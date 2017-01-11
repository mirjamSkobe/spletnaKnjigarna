% rebase('osnova.tpl')

<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">


<body>

<nav>
  <ul class="w3-navbar w3-black">
	<li><a href="/"><div class="bar1"></div>
					<div class="bar2"></div>
					<div class="bar3"></div></a></li>
    <li><a href="/">Domača stran</a></li>
    <li><a href="javascript:void(0)">Kontakt</a></li>
  </ul>
</nav>

<section>
  <img src="http://allegralaboratory.net/wp-content/uploads/2014/04/Books-05-2000.jpg" width="1600" height="430">
</section>

<section class="container">
  <h3>KNJIGARNA</h3>
  <table class="striped bordered">
  <thead>
	 <tr><th>Avtor</th><th>Naslov knjige</th><th>Žanr</th><th>Cena</th><th>Na zalogi</th></tr>
  </thead>
  <tbody>
	 % for knjiga1 in knjige2:
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