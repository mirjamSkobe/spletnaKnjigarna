<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
</head>

<style>
	ul {
		list-style-type: none;
		margin: 0;
		padding: 0;
		overflow: hidden;
		background-color: #333;
		position: fixed;
		top: 0;
		width: 100%;
	}

	li {
		float: left;
	}

	li a {
		display: block;
		color: white;
		padding: 16px;
		text-decoration: none;
	}

	.bar1, .bar2, .bar3 {
		width: 25px;
		height: 3px;
		background-color: black;
		margin: 3px 0;
	}

	.button {
	  border-radius: 4px;
	  background-color: #f4511e;
	  border: none;
	  color: #FFFFFF;
	  text-align: center;
	  font-size: 28px;
	  padding: 20px;
	  width: 300px;
	  transition: all 0.5s;
	  cursor: pointer;
	  margin: 50px 150px 50px 150px;
	}

	.button span {
	  cursor: pointer;
	  display: inline-block;
	  position: relative;
	  transition: 0.5s;
	}

	.button span:after {
	  content: '\00bb';
	  position: absolute;
	  opacity: 0;
	  top: 0;
	  right: -20px;
	  transition: 0.5s;
	}

	.button:hover span {
	  padding-right: 25px;
	}

	.button:hover span:after {
	  opacity: 1;
	  right: 0;
	}

	.content {
		max-width: 500px;
		margin: auto;
	}
	table {
			font-family: arial, sans-serif;
			border-collapse: collapse;
			margin: 20px 200px;
			overflow-y:scroll;
			height:430px;
			display:block;
	}

	td, th {
		border: 1px solid black;
		text-align: left;
		padding: 8px;
	}

	tr:nth-child(even) {
		background-color: #dddddd;
	}
</style>
</head>

<body>
    <div class="container">
        {{!base}}
    </div>

    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
</body>
</html>
