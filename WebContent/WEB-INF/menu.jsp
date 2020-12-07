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

<div>

	<form method="POST" action="CalculDistanceServlet">
		<fieldset>
			<div class="form-group">
			
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
		</fieldset>
	</form>

</div>

<br><br>
<hr>
<br>

<h1 class="mt-5">- Selection Ville</h1>

<form class="user" action="AfficheVilles" method="POST">
	<button type="submit">Modifier/Supprimer Ville</button>
</form>

<br><br>
<hr>
<br>

<h1 class="mt-5">- Calcul Temperature</h1>

<div>

	<form method="POST" action="CalculTemperatureServlet">
		<fieldset>
			<div class="form-group">
			
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
					value="Calcul temperature" name="action">
			
			</div>
		</fieldset>
	</form>

</div>

</body>
</html>