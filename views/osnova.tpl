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
		background-color: #111;
		position: fixed;
		left: 0;
		top: 0;
		width: 100%;
		height: 60px
	}

	li {
		float: left;
	}

	li a {
		padding: 8px 8px 8px 32px;
		text-decoration: none;
		font-size: 25px;
		color: #818181;
		display: block;
		transition: 0.3s
	}

	.bar1, .bar2, .bar3 {
		width: 25px;
		height: 3px;
		background-color: #818181;
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
	  margin: 50px 100px 50px 100px;
	}

	.content {
		max-width: 500px;
		margin: auto;
	}	

	td, th {
		border: 1px solid black;
		text-align: left;
		padding: 8px;
	}

	tr:nth-child(even) {
		background-color: #dddddd;
	}
	
	
	
	/* The side navigation menu */
	.sidenav {
		height: 100%; /* 100% Full-height */
		width: 200px; /* 0 width - change this with JavaScript */
		position: fixed; /* Stay in place */
		z-index: 1; /* Stay on top */
		top: 0;
		left: 0;
		background-color: #111; /* Black*/
		overflow-x: hidden; /* Disable horizontal scroll */
		padding-top: 60px; /* Place content 60px from the top */
		transition: 0.5s; /* 0.5 second transition effect to slide in the sidenav */
	}

	/* The navigation menu links */
	.sidenav a {
		padding: 6px 6px 6px 20px;
		text-decoration: none;
		font-size: 25px;
		color: #818181;
		display: block;
		transition: 0.3s
	}

	/* When you mouse over the navigation links, change their color */
	.sidenav a:hover, .offcanvas a:focus{
		color: #f1f1f1;
	}

	/* Style page content - use this if you want to push the page content to the right when you open the side navigation */
	#main {
		margin-left: 100px;
		padding: 20px;
	}

	/* On smaller screens, where height is less than 450px, change the style of the sidenav (less padding and a smaller font size) */
	@media screen and (max-height: 450px) {
		.sidenav {padding-top: 15px;}
		.sidenav a {font-size: 18px;}
	}

	.bg {
		margin: 0 100px 0 100px;
		position: center;
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
