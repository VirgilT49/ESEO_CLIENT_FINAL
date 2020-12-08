<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TWIC</title>
</head>
<body style="background-color: silver;">
<div>
	<div class="row justify-content-md-center">
		<div class="col-md-auto">
			
			<h1 class="mt-5">Informations sur "Ville de France"</h1>

			<hr>
			<br><br>

			Actions disponibles :

			<ul>
    			<li>Distance entre deux villes</li>
   				<li>Modifier/Supprimer infos d'une ville</li>
    			<li>Température d'une ville</li>
			</ul>
		
			<br>

			<form class="user" action="ConnexionServlet" method="POST">
				<input class="btn btn-lg btn-primary btn-block" type="submit"
					value="Informations/Modifications" name="action">
			</form>
			
		</div>
	</div>
</div>
<br>

</body>

<!-- Bootstrap core JavaScript -->
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
		crossorigin="anonymous">
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

</html>