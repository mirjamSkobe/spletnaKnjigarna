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
	<a href="/vstopKnjigarnar/naroci_knjigarnar">Naroči knjige</a>
  </ul>
</div>



<div id="main">

<section class="container">
  <table>
  <thead>
	 <tr><th>Ime podjetja</th><th>Naslov</th><th>Naslov</th></tr>
  </thead>
  <tbody>
	 % for dobavitelj in dobavitelj:
	 <tr>
	 <td>
	 {{dobavitelj['ime_podjetja']}}
	 </td>
	 <td>
	 {{dobavitelj['naslov']}}
	 </td>
	 <td>
	 {{dobavitelj['email']}}
	 </td></tr>
	 % end
  </tbody>
  </table>
 </section>
 
</div>
 
</body>
</html>