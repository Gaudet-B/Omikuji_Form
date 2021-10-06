<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<meta charset="ISO-8859-1">
		<title>Omikuji Form</title>
	</head>
	<body class="bg-primary p-2">
		<h3 class="text-center text-light display-5 mb-2">Here's Your Omikuji!</h3>
		<div class="container text-primary bg-light p-3 border border-light rounded" style="max-width: 30vw; min-width: 300px;">
			<h5>
				In <c:out value="${ number }"/> years, you will live in <c:out value="${ city }"/> with <c:out value="${ person }"/> as your roommate, <c:out value="${ hobby }"/> for a living. The next time you see a <c:out value="${ livingThing }"/>, you will have good luck. Also, <c:out value="${ somethingNice }"/>.
			</h5>
		</div>
	</body>
</html>