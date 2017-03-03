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
/* Full-width input fields */
	input[type=text], input[type=password] {
		width: 100%;
		padding: 12px 20px;
		margin: 8px 0;
		display: inline-block;
		border: 1px solid #ccc;
		box-sizing: border-box;
	}

	/* Set a style for all buttons */
	button {
		border: none;
		cursor: pointer;
		width: auto;
	}

	/* Set a style for all buttons */
	button {
		background-color: #4CAF50;
		color: white;
		padding: 14px 20px;
		margin: 8px 0;
		border: none;
		cursor: pointer;
		width: 100px;
	}

	/* Add padding to containers */
	.container {
		padding: 16px;
	}
	
	form {
	margin-left: 150px;
	margin-right: 150px;
	margin-top: 20px;
	margin-bottom: 70px;
	border: 3px solid #e7f5fe;
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
  <li><a href="/vstopKnjigarnar/dobavnice">Vse dobavnice</a></li>
</ul>

<ul id="dropdown3" class="dropdown-content">
	% for dobavitelj in dobavitelji:
		<li><a href="/vstopKnjigarnar/{{dobavitelj['ime_podjetja']}}">{{dobavitelj['ime_podjetja']}}</a></li>
	% end
</ul>

<ul id="dropdown4" class="dropdown-content">
  <li><a href="/vstopKnjigarnar/odprta_narocila">Odprta naročila</a></li>
  <li><a href="/vstopKnjigarnar/zakljucena_narocila">Zaključena naročila</a></li>
</ul>

<nav>
  <div class="nav-wrapper indigo darken-4">
    <a class="brand-logo" style="margin-left: 15px">Stran za lastnika</a>
    <ul class="right hide-on-med-and-down">
		<li><a href="/">Domača stran</a></li>
		<!-- Dropdown Trigger -->
		<li><a class="dropdown-button" href="#!" data-activates="dropdown1">Knjige<i class="material-icons right">arrow_drop_down</i></a></li>
		<li><a class="dropdown-button" href="#!" data-activates="dropdown2">Dobavitelji<i class="material-icons right">arrow_drop_down</i></a></li>
		<li><a class="dropdown-button" href="#!" data-activates="dropdown3">Naroči pri dobavitelju<i class="material-icons right">arrow_drop_down</i></a></li>
		<li><a class="dropdown-button" href="#!" data-activates="dropdown4">Naročila<i class="material-icons right">arrow_drop_down</i></a></li>
		<li><a href="/vstopKnjigarnar/izpis" style="margin-right: 15px">Izpis</a></li>
	</ul>
  </div>
</nav>

<form action="/vstopKnjigarnar/{{ime}}" method="post">
	<label><h6><b>Knjiga</b></h6></label>
	<input list="text" placeholder="Naslov knjige" name="knjiga" required>
	<datalist id="text">
		% for knjiga in knjige:
			<option value="{{knjiga['naslov']}}"/>
			<input type="hidden" name="id_knjiga" value="{{knjiga['ID']}}" />
			<input type="hidden" name="cena" value="{{knjiga['cena']}}" />
		% end
	</datalist>

	<br></br>
	<label><h6><b>Količina</b></h6></label>
	<input type="number" placeholder="Količina" name="kolicina" min="1" max="50" required>

	<button class="waves-effect waves-light btn indigo darken-4" style="text-align: center; float: right;">Naroči</button>



</form>

<div><h3 style="font-family:courier; text-align: center;">
	Dobavitelj:  {{ime}}</h3>
</div>

<div id="main">

<section class="container">
  <table class="bordered">
  <thead>
	 <tr><th>Avtor</th><th>Naslov knjige</th><th>Na zalogi</th></tr>
  </thead>
  <tbody>
	% for knjiga in knjige:
	<tr>
	<td>
	{{knjiga['avtor']}}
	</td>
	<td>
	{{knjiga['naslov']}}
	</td>
	<td>
	{{knjiga['st_naZalogi']}}
	</td>
	</tr>
	 % end
  </tbody>
  </table>
  </section>
 
</div>

</body>
</html>