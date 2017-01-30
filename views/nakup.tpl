% rebase('osnova.tpl')

<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<style>
	table {
		font-family: arial, sans-serif;
		border-collapse: collapse;
		
		display:block;
	}
</style>

<body>
<nav>
    <div class="nav-wrapper">      
      <ul id="nav-mobile" class="right hide-on-med-and-down">
	    <li><a href="/"><i class="material-icons">navigation</i></a></li><!--Vhodna stan-->
		<li><a href="/stran_za_kupca">Knjigarna</a></li>
        <li><a href="/stran_za_kupca/vpis?">Vpis</a></li>
        <li><a href="/stran_za_kupca/registracija?">Registracija</a></li>
        <li><a href="/stran_za_kupca/moja_kosarica"><i class="material-icons">shopping_cart</i></a></li>
      </ul>
    </div>
  </nav>
    
<section>
  <!--<img src="http://marthaslibrary.com/wp-content/uploads/2015/06/book.png" width=screen.availWidth height="500">-->
</section>

<section class="container">

      <div class="row">
        <div class="col s12 m6">
          <div class="card blue-grey darken-1">
            <div class="card-content white-text">
              <span class="card-title">Račun</span>
  <table class="striped bordered">
    <thead>
	  <tr><th>Število izvodov</th><th>Knjiga</th><th>Za plačilo</th></tr>
    </thead>
    <tbody>
	 % for knjiga in knjige:
	 <tr>
	 <td style="text-align: center;">
	 {{knjiga['stevilo_izvodov']}}
	 </td>
	 <td>
	 {{knjiga['avtor']}}: <i>{{knjiga['naslov']}}</i>
	 </td>
	 <td nowrap>
	 {{knjiga['cena_vseh_izvodov']}} €
	 </td>
	 </tr>
	 % end
  </tbody>  
  </table>
			  
            </div>
            <div class="card-action">
			<center>Skupaj za plačilo: {{knjiga['cena_vseh_izvodov']}} €<br>
			<form method="post">
			<input type="hidden" name="kupec" value="{{knjiga['id_kupca']}}" />
			<button type="submit">Pošlji račun</button>
			</form>
			</center>
            </div>
          </div>
        </div>
      </div>
</section>
 <!--<footer class="w3-container w3-padding-64 w3-center w3-black w3-xlarge">
  <a href="#"><i class="fa fa-facebook-official"></i></a>
  <a href="#"><i class="fa fa-pinterest-p"></i></a>
  <a href="#"><i class="fa fa-twitter"></i></a>
  <a href="#"><i class="fa fa-flickr"></i></a>
  <a href="#"><i class="fa fa-linkedin"></i></a>
</footer>-->
</body>
</html>