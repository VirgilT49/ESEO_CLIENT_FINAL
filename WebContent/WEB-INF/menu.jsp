<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="fr.eseo.Ville"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu</title>
</head>
<body style="background-color: silver;">

<h1 class="mt-5">- Calcul Distance</h1>

<br><br>

<div>
	<form method="POST" action="CalculDistanceServlet">
		<fieldset>
			<div class="form-group">
				<div>
					<div class="row justify-content-md-center">
						<div class="col-md-auto">
						
						<SELECT name="ville1" size="1">
							<%
								ArrayList<Ville> liste1 = (ArrayList) session.getAttribute("villes");
							for (Ville ville : liste1) {
							%>
							<OPTION>
							<%=ville.getNomCommune()%>
							<%
								}
							%>
													
						</SELECT> <SELECT name="ville2" size="1">
							<%
								ArrayList<Ville> liste2 = (ArrayList) session.getAttribute("villes");
							for (Ville ville : liste2) {
							%>
							<OPTION>
							<%=ville.getNomCommune()%>
							<%
								}
							%>
														
						</SELECT>
						<br><br>
				
						<input class="btn btn-lg btn-primary btn-block" type="submit"
							value="Calcul distance" name="action">
						
						</div>
					</div>
				</div>
			</div>
		</fieldset>
	</form>
</div>

<hr>

<h1 class="mt-5">- Sélection Ville</h1>

<br><br>

<form class="user" action="AfficheVilles" method="POST">
	<div class="row justify-content-md-center">
		<div class="col-md-auto">
			<input class="btn btn-lg btn-success btn-block" type="submit"
				value="Modifier/Supprimer Ville" name="action">
		</div>
	</div>
</form>

<hr>

<h1 class="mt-5">- Calcul Température</h1>

<br><br>

<div>
	<form method="POST" action="CalculTemperatureServlet">
		<fieldset>
			<div class="form-group">
				<div>
					<div class="row justify-content-md-center">
						<div class="col-md-auto">
				
						<SELECT name="villeTemp" size="1">
							<%
								ArrayList<Ville> listeTemp = (ArrayList) session.getAttribute("villes");
							for (Ville ville : listeTemp) {
							%>
							<OPTION>
							<%=ville.getNomCommune()%>
							<%
								}
							%>
													
						</SELECT>
						<br><br>
				
						<input class="btn btn-lg btn-primary btn-block" type="submit"
							value="Calcul température" name="action">
						
						</div>
					</div>
				</div>
			</div>
		</fieldset>
	</form>
</div>

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