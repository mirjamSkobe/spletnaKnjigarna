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
	Stran za dodajanje knjig </h3>
</div>

<form method="post" action="/vstopKnjigarnar/dodaj_knjigo">
<div class="container">
	<label><b>Naslov</b></label>
	<input type="text" placeholder="Naslov" name="naslov" required>
	
	<label><b>Avtor</b></label>
	<input type="text" placeholder="Ime in priimek avtorja" name="avtor" required>
	
	<label><b>Žanr</b></label>
	<input type="number" placeholder="Žanr" name="zanr" required>
	
	<label><b>Leto izdaje</b></label>
	<input type="number" placeholder="Leto izdaje" name="leto_izdaje" required>
	
	<label><b>Format knjige</b></label>
	<input type="number" placeholder="Format knjige" name="formatK" required>
	
	<label><b>Cena</b></label>
	<input type="number" placeholder="Cena" name="cena" required>
	
	<label><b>Opis</b></label>
	<input type="text" placeholder="Opis" name="opis" required>
	
	<label><b>Na zalogi</b></label>
	<input type="number" placeholder="Koliko knjig je trenutno na zalogi." name="st_naZalogi" required>

	<button type="submit">Dodaj</button>
	
</div>
</form>
</body>
</html>