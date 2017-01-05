<!DOCTYPE html>
<html>
   <head>
      <title>Knjigarna</title>
      <meta name="viewport" content="width=device-width, initial-scale=1">      
      <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css">
      <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>           
      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/js/materialize.min.js"></script>             
      <style>
         div {
            width : 200px;	
            height : 200px;				
         } 
      </style>
   </head>
   <body class="container">
      <h3>Knjigarna</h3>
      <table class="striped bordered">
      <thead>
         <tr><th>ID</th><th>Naslov knjige</th><th>Avtor</th><th>Žanr</th><th>Cena</th><th>Na zalogi</th></tr>
      </thead>
      <tbody>
		 % for knjiga in knjige:
         <tr><td>
	     {{knjiga['ID']}}
		 </td>
		 <td>
	     {{knjiga['naslov']}}
		 </td>
		 <td>
	     {{knjiga['avtor']}}
		 </td>
		 <td>
	     {{knjiga['zanr']}}
		 </td>
		 <td>
	     {{knjiga['cena']}} €
		 </td>
		 <td>
	     {{knjiga['st_naZalogi']}}
		 </td></tr>
	     % end
      </tbody>
      </table>
   </body>