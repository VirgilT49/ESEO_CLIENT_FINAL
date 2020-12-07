<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="fr.eseo.Ville"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modification</title>
</head>
<body style="background-color: silver;">

<h1 class="font-weight-light">- Modification de la ville</h1>

Informations � remplir :
<br><br>

<div>
	<div class="card border-0 shadow my-5">
		<div class="card-body p-5">
			<div class="col-sm-5 mx-auto">
				<div class="panel-body">
									
					<form accept-charset="UTF-8" role="form" method="POST"
						action="ModifConfirmation">
						<fieldset>
						<div class="form-group">
							Code Commune : 
							<SELECT name="codeCommune" size="1">
							<%
								ArrayList<Ville> liste = (ArrayList) session.getAttribute("villes");
							for (Ville ville : liste) {
							%>
							<OPTION>
							<%=ville.getCodeCommune()%>
							<%
								}
							%>
											
							</SELECT>
							<br><br>
							
							<div class="form-group">
								<input class="form-control" placeholder="Nom Commune"
									required name="nomCommune" type="text" value="">
							</div>
							<br>
							<div class="form-group">
								<input class="form-control" placeholder="Code Postal"
									required name="codePostal" type="text" value="">
							</div>
							<br>
							<div class="form-group">
								<input class="form-control" placeholder="Linelle Acheminement"
									required name="libelleAcheminement" type="text" value="">
							</div>
							<br>
							<div class="form-group">
								<input class="form-control" placeholder="Ligne" type="text" value="">
							</div>
							<br>
							<div class="form-group">
								<input class="form-control" placeholder="Longitude"
									required name="longitude" type="text" value="">
							</div>
							<br>
							<div class="form-group">
								<input class="form-control" placeholder="Latitude" 
								required name="latitude" type="text" value="">
							</div>
							<br><br>
							<input class="btn btn-lg btn-primary btn-block"
								type="submit" value="Modifier">
						</div>
						</fieldset>
					</form>
					
				</div>		
			</div>
		</div>
	</div>
</div>

</body>
</html>