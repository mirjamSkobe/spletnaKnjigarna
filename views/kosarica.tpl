% rebase('osnova.tpl')

<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<style>
	table {
		font-family: arial, sans-serif;
		border-collapse: collapse;
		margin: 100px 150px;
		overflow-y:scroll;
		height:300px;
		display:block;
	}
</style>

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
  <img src="http://marthaslibrary.com/wp-content/uploads/2015/06/book.png" width=screen.availWidth height="500">
</section>

<section class="container">
<form method="post">
  <button type="submit">Posodobi košarico</button>
  <button type="submit">Opravi nakup</button>
  <table class="striped bordered">
  <thead>
	 <tr><th>Knjiga</th><th>Avtor</th><th>Število izvodov</th><th>Cena (cena za 1 izvod)</th><th>Odstrani iz košarice</th></tr>
  </thead>
  <tbody>
	 % for knjiga in knjige:
	 <tr>
	 <td>
	 {{knjiga['naslov']}}
	 </td>
	 <td>
	 {{knjiga['avtor']}}
	 </td>
	 <td>
	 <input type="number" name="izvodov" value={{knjiga['stevilo_izvodov']}}>
	 </td>
	 <td>
	 {{knjiga['stevilo_izvodov']}} * ({{knjiga['cena']}} €)
	 </td>
	 <td style="text-align: center; vertical-align: middle;">
	 <input type="checkbox" name="odstrani" value="{{knjiga['ID']}}">
	 </td>
	 </tr>
	 % end
  </tbody>
  </table>
 </form>
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