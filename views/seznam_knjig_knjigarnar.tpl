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
		margin: 100px 200px;
		overflow-y:scroll;
		height:500px;
		display:block;
	}
</style>

<body>

<div id="mySidenav" class="sidenav">
	<a href="/">Domača stran</a>
	<a href="/vstopKnjigarnar/seznam_knjig_knjigarnar?">Seznam knjig</a>
	<a href="/vstopKnjigarnar/dodaj_knjigo?">Dodaj knjigo</a>
	<a href="/vstopKnjigarnar/seznam_dobavitelji?">Seznam dobaviteljev</a>
	<a href="/vstopKnjigarnar/dodaj_dobavitelja">Dodaj dobavitelja</a>
  </ul>
</div>



<div id="main">

<section class="container">
  <table>
  <thead>
	 <tr><th>Avtor</th><th>Naslov knjige</th><th>Na zalogi</th></tr>
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
	 {{knjiga1['st_naZalogi']}}
	 </td></tr>
	 % end
  </tbody>
  </table>
 </section>
 
</div>
 
</body>
</html>