<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Résultat Distance</title>
</head>
<body style="background-color: silver;">

<div>
	<div class="row justify-content-md-center">
		<div class="col-md-auto">
			<h1 class="mt-5">Résultat Distance</h1>
		</div>
	</div>
</div>

<hr>

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