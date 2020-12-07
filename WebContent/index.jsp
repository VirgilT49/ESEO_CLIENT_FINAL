<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TWIC</title>
</head>
<body style="background-color: silver;">

<h1 class="mt-5">- Informations sur "Ville de France"</h1>

<ul>
    <li>Distance entre deux villes</li>
    <li>Modifier/Supprimer infos d'une ville</li>
    <li>Température d'une ville</li>
</ul>

Cliquez ici :
<br><br>

<section>
    <div class="container">
      	<div class="row">
        	<div class="col-lg-6">

				<form class="user" action="ConnexionServlet" method="POST">
					<button type="submit">Informations/Modifications</button>
				</form>
		
			</div>
		</div>
	</div>
</section>

</body>
</html>