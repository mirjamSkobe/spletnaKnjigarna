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
	/* Bordered form */
	form {
		margin-left: 40px;
		margin-right: 100px
		border: 3px solid #f1f1f1;
	}

	input[type=text], input[type=password], input[type=number] {
		width: 100%;
		padding: 12px 20px;
		margin: 8px 0px;
		display: inline-block;
		border: 1px solid #ccc;
		box-sizing: border-box;
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


<div><h3 style="font-family:courier; text-align: center;">
	Stran za dodajanje knjig </h3>
</div>

<form method="post" action="/vstopKnjigarnar/dodaj_knjigo">
<div class="container">
	<label><h6><b>Naslov</b></h6></label>
	<input type="text" placeholder="Naslov" name="naslov" required>
	
	<label><h6><b>Avtor</b></h6></label>
	<input type="text" placeholder="Ime in priimek avtorja" name="avtor" required>
	
	<label><h6><b>Žanr</b></h6></label>
	<input type="number" placeholder="Žanr" name="zanr" min="1" max="5" required>
	
	<label><h6><b>Dobavitelj</b></h6></label>
	<input list="text" placeholder="Dodaj dobavitelja" name="dobavitelj" required>
	<datalist id="text">
		% for dobavitelj in dobavitelji:
			<option value="{{dobavitelj['ime_podjetja']}}">
		% end
	</datalist>
	
	<br></br>
	
	<label><h6><b>Leto izdaje</b></h6></label>
	<input type="number" placeholder="Leto izdaje" name="leto_izdaje" min="0" max="2018" required>
	
	<label><h6><b>Format knjige</b></h6></label>
	<input type="number" placeholder="Format knjige" name="format" min="1" max="5" required>
	
	<label><h6><b>Cena</b></h6></label>
	<input type="number" placeholder="Cena" name="cena" min="0" max="500" required>
	
	<label><h6><b>Opis</b></h6></label>
	<input type="text" placeholder="Opis" name="opis" required>
	<br></br>
  
	<button class="waves-effect waves-light btn indigo darken-4" type="submit" style="float: right;">Dodaj</button>
	
</div>
</form>
</body>
</html>