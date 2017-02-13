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
	table {
		font-family: arial, sans-serif;
		border-collapse: collapse;
		overflow-y:scroll;
		height:700px;
		width:auto;
		display:block;
	}
</style>

<body>
<!-- Dropdown Structure -->
<ul id="dropdown1" class="dropdown-content">
  <li><a href="/vstopKnjigarnar/seznam_knjig_knjigarnar?">Seznam knjig</a></li>
  <li><a href="/vstopKnjigarnar/dodaj_knjigo?">Dodaj knjigo</a></li>
</ul>

<ul id="dropdown2" class="dropdown-content">
  <li><a href="/vstopKnjigarnar/seznam_dobavitelji?">Seznam dobaviteljev</a></li>
  <li><a href="/vstopKnjigarnar/dodaj_dobavitelja">Dodaj dobavitelja</a></li>
</ul>

<nav>
  <div class="nav-wrapper indigo darken-4">
    <a class="brand-logo" href="/vstopKnjigarnar" style="margin-left: 15px">Stran za lastnika</a>
    <ul class="right hide-on-med-and-down">
		<li><a href="/">Domača stran</a></li>
		<!-- Dropdown Trigger -->
		<li><a class="dropdown-button" href="#!" data-activates="dropdown1">Knjige<i class="material-icons right">arrow_drop_down</i></a></li>
		<li><a class="dropdown-button" href="#!" data-activates="dropdown2">Dobavitelji<i class="material-icons right">arrow_drop_down</i></a></li>
		<li><a href="/vstopKnjigarnar/izpis" style="margin-right: 15px">Izpis</a></li>
	</ul>
  </div>
</nav>

<div><h3 style="font-family:courier; text-align: center;">
	Seznam knjig </h3>
</div>

<div id="main">

<section class="container">
  <table class="bordered">
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
	 <a href="/o_knjigi/{{knjiga1['ID']}}">
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