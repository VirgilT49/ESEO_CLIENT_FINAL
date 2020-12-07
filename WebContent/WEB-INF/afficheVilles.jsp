<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="fr.eseo.Ville"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Affichage Villes</title>
</head>
<body style="background-color: silver;">

<h1 class="font-weight-light">- Liste des villes :</h1>

<div>

	<div>
		<div class="card border-0 shadow my-5">
			<div class="card-body p-5">
				<br>
				<div style="height: 2750px">
					<form action="ModificationVille" method="POST">
						<%
							ArrayList<Ville> liste3 = (ArrayList) request.getAttribute("villesPage");
						for (Ville ville : liste3) {
						%>
						<%=ville.getNomCommune()%>
						<br>
						<a href="ModificationVille?ville=<%=ville.getNomCommune()%>">MODIFIER</a>
						<a href="SupprConfirmation?ville=<%=ville.getNomCommune()%>">SUPPRIMER</a>
						<br><br>
						<%
							}
						%>

					</form>
				</div>
			</div>
		</div>
		<nav aria-label="Footer">
		<ul class="pagination">
			<li class="page-item"><a class="page-link" href="AfficheVilles?page=
				<%Integer pages = (Integer) request.getAttribute("numPage");%>
				<%=pages - 50%>">Page précédente</a></li>
			<li class="page-item"><a class="page-link" href="AfficheVilles?page=
				<%Integer pagesSui = (Integer) request.getAttribute("numPage");%>
				<%=pagesSui + 50%>">Page suivante</a></li>
		</ul>
		</nav>
	</div>

</div>

</body>
</html>