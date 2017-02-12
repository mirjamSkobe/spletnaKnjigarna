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
		margin: 100px 150px;
		display:block;
	}
</style>

<body>
<nav>
    <div class="nav-wrapper indigo darken-4">
	<a href="#" class="brand-logo c">Pozdravljeni, {{ime_uporabnika}}!</a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
	    <li><a href="/">Vhodna stran</a></li>
		<li><a href="/stran_za_kupca">Knjigarna</a></li>
		<li><a href="/stran_za_kupca/filtriraj_knjige">Filtriraj knjige</a></li>
        <li><a href="/stran_za_kupca/registracija?">Registracija</a></li>
        <li><a href="/stran_za_kupca/moja_kosarica"><i class="material-icons">shopping_cart</i></a></li>
		<li><a href="/stran_za_kupca/vpis?">Vpis</a></li>
		<li><a href="/stran_za_kupca/izpis">Izpis</a></li>
      </ul>
    </div>
  </nav>
    
<section>
     <!--<img src="http://marthaslibrary.com/wp-content/uploads/2015/06/book.png" width=screen.availWidth height="500">-->
</section>

<section class="container">
     <table class="striped bordered">
         <thead>
	         <tr><th>Knjiga</th><th>Avtor</th><th>Število izvodov</th><th>Cena na izvod</th><th>Odstrani iz košarice</th></tr>
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
	 	 	 	 <td style="text-align: center;">
	 	 	 	 	 {{knjiga['stevilo_izvodov']}}
	 	 	 	 </td>
	 	 	 	 <td nowrap>
	 	 	 	 	 {{knjiga['cena']}} €
		 	 	 </td>
		 	 	 <td style="text-align: center; vertical-align: middle;">
		 	 	     <form method="post">
				 	     <input type="hidden" name="knjiga" value="{{knjiga['id_knjige']}}" />
				 	     <input type="hidden" name="kupec" value="{{ID_uporabnika}}" />
				 	     <button class="waves-effect waves-teal btn-flat type="submit">Odstrani</button>
	 	 	 	 	 </form>
		 	 	 </td>
		 	 </tr>
		 	 % end
  	 	 </tbody>
  	 </table>
 <center><a href="/stran_za_kupca/nakup"><button type="submit">Opravi nakup</button></a></center>
 </section>
</body>
</html>