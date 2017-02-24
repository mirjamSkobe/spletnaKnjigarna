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
	/* The Modal (background) */
	.modal {
		display: none; /* Hidden by default */
		position: fixed; /* Stay in place */
		z-index: 1; /* Sit on top */
		left: 0;
		top: 0;
		width: 100%; /* Full width */
		height: 100%; /* Full height */
		overflow: auto; /* Enable scroll if needed */
		background-color: rgb(0,0,0); /* Fallback color */
		background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
		padding-top: 80px;
	}

	/* Modal Content/Box */
	.modal-content {
		background-color: #fefefe;
		margin: auto;
		border: 1px solid #888;
		width: 50%;
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

<ul id="dropdown3" class="dropdown-content">
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
		<li><a class="dropdown-button" href="#!" data-activates="dropdown3">Naročila<i class="material-icons right">arrow_drop_down</i></a></li>
		<li><a href="/vstopKnjigarnar/izpis" style="margin-right: 15px">Izpis</a></li>
	</ul>
  </div>
</nav>

<div><h3 style="font-family:courier; text-align: center;">
	Urejanje naročila št. {{narocilo['id']}}</h3>
</div>
<div class="container">
	
	
<section class="container">

      <div class="row">
        <div class="col s12 m6">
          <div class="card blue-grey darken-1">
            <div class="card-content white-text">
              <span class="card-title"><center>Naročene knjige</center></span>
			    <table>
	        	  <tr>
			        <th>Knjiga (ID)</th>
			        <th>Število izvodov</th>
		          </tr>
	       	      <tbody>
			% for knjiga in narocene_knjige:
			 <tr>
			 <td>
			 {{knjiga['id_knjige']}}
			 </td>
			 <td>
			 {{knjiga['stevilo_izvodov']}}
			 </td>
			 </tr>
			 % end
	             </tbody>
	             </table>
            </div>
          </div>
        </div>
		<div class="col s12 m6">
          <div class="card blue-grey darken-1">
            <div class="card-content white-text">
              <span class="card-title"><center>Podatki o naročniku</center></span>
			  <b>Naslov:</b><br>{{narocilo['naslov']}}<br><br>
			  <b>e-pošta:</b><br>{{narocilo['email']}}<br><br>
			  <b>Telefon:</b><br>{{narocilo['telefon']}}
            </div>
            <div class="card-action">
			<center>
			Zaključi naročilo<br>
			<button class="waves-effect waves-light btn-large indigo darken-4 modal-trigger" href="#modal1">
			<i class="material-icons">done</i></button>
			</center>
            </div>
          </div>
        </div>
      </div>
 </div>
 
<!-- pop-up okno za gumb Zaključi naročilo -->
<div id="modal1" class="modal">
    <form class="modal-content animate" action="/stran_za_kupca/o_knjigi/<narocilo>" method="post">
	<div class="container"><center>
	    <i class="material-icons">warning</i><br>
		Ali ste prepričani, da želite zaključiti naročilo?<br><br>
		Zaključitev naročila bo spremenila status pošiljke na <i>odposlana</i> in
		zmanjšala število knjig na zalogi.<br><br>
		<input type="hidden" name="stevilka_racuna" value="{{narocilo['id']}}" />
		<button class="waves-effect waves-light btn indigo darken-4" type="submit">Zaključi naročilo</button>
		</center>
	</div>
  </form>
</div>

<script>
  $(document).ready(function(){
    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
    $('.modal-trigger').leanModal();
  });
</script>
</body>
</html>