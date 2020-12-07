<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Résultat Distance</title>
</head>
<body style="background-color: silver;">

<h1 class="mt-5">- Résultat Distance</h1>

<div>
	<div class="container">
		<div class="card border-0 shadow my-5">
			<div class="card-body p-5">
				<p class="lead">
					Distance entre <%=session.getAttribute("ville1")%> et <%=session.getAttribute("ville2")%>
					: <%=session.getAttribute("distance")%> km.
					<br><br><br>
					<a href=index.jsp>Retour au menu</a>
				</p>
			</div>
		</div>
	</div>
</div>

</body>
</html>