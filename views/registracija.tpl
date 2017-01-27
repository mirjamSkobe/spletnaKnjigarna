<html>
<head>
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>

<body>
<div class="container">
  <form method="post">
    <div class="input-field">
        <input placeholder="Uporabniško ime" name="uporabnik" type="text" class="validate">
        <label for="uporabnik">Uporabniško ime</label>
    </div>
	<div class="input-field">
        <input placeholder="********" name="geslo" type="text" class="validate">
        <label for="geslo">Geslo</label>
    </div>
	<div class="input-field">
        <input placeholder="jaka.novak@gmail.com" name="email" type="text" class="validate">
        <label for="email">Email</label>
    </div>
	<div class="input-field">
        <input placeholder="Jaka Novak, Tržaška 12, 1000 Ljubljana" name="naslov" type="text" class="validate">
        <label for="naslov">Naslov</label>
    </div>
	<div class="input-field">
        <input placeholder="040123456" name="telefon" type="text" class="validate">
        <label for="telefon">Telefon</label>
    </div>
    <button class="btn waves-effect waves-light" type="submit">Pošlji podatke</button>
  </form>
</div>

    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
</body>
</html>