<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>R�sultat Temp�rature</title>
</head>
<body style="background-color: silver;">

<h1 class="mt-5">- R�sultat Temp�rature</h1>

<div>
	<div class="container">
		<div class="card border-0 shadow my-5">
			<div class="card-body p-5">
				<p class="lead">
					Temp�rature � <%=session.getAttribute("villeTemp")%>
					: <%=session.getAttribute("tempsVilleTemp")%> �C.
					<br><br><br> 
					<a href=index.jsp>Retour au menu</a>
				</p>
			</div>
		</div>
	</div>
</div>

</body>
</html>