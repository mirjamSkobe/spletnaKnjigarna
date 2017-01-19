% rebase('osnova.tpl')

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
</head>

<style>
	/* Bordered form */
	form {
		margin-left: 200px;
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

<div id="mySidenav" class="sidenav">
	<a href="/">Domača stran</a>
	<a href="/vstopKnjigarnar/seznam_knjig_knjigarnar?">Seznam knjig</a>
	<a href="/vstopKnjigarnar/dodaj_knjigo?">Dodaj knjigo</a>
	<a href="/vstopKnjigarnar/seznam_dobavitelji?">Seznam dobaviteljev</a>
	<a href="/vstopKnjigarnar/dodaj_dobavitelja">Dodaj dobavitelja</a>
	<a href="/vstopKnjigarnar/naroci_knjigarnar">Naroči knjige</a>
  </ul>
</div>



<div class="main">

<form method="post" action="/vstopKnjigarnar/dodaj_dobavitelja">
<div class="container">
	<label><b>Ime podjetja</b></label>
	<input type="text" placeholder="Ime podjetja" name="ime_podjetja" required>
	<label><b>Naslov</b></label>
	<input type="text" placeholder="Naslov" name="naslov" required>
	<label><b>E-mail</b></label>
	<input type="text" placeholder="E-mail" name="email" required>

	<button type="submit">Dodaj</button>
</div>
</form>

</div>	
</body>
</html>