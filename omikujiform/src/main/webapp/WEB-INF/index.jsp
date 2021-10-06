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
		<div class="container text-light p-3 border border-light rounded" style="max-width: 30vw; min-width: 300px;">
			<h3 class="text-center display-5 mb-2">Send an Omikuji!</h3>
			<form class="form" action="/omikuji/submit" method="POST">
				<label class="form-label" for="number">Pick any number from 5 to 25.</label>
				<input type="number" class="form-control mb-3" name="number" min="5" max="25" style="max-width: 65px;"/>
				<label class="form-label" for="city">Enter the name of any city.</label>
				<input type="text" class="form-control mb-3" name="city"/>
				<label class="form-label" for="person">Enter the name of any person.</label>
				<input type="text" class="form-control mb-3" name="person"/>
				<label class="form-label" for="hobby">Enter a professional endeavor or hobby.</label>
				<input type="text" class="form-control mb-3" name="hobby"/>
				<label class="form-label" for="livingThing">Enter an animal or any living thing.</label>
				<input type="text" class="form-control mb-3" name="livingThing"/>
				<label class="form-label" for="somethingNice">Say something nice to someone.</label>
				<textarea class="form-control mb-3" name="somethingNice" style="height: 150px;"></textarea>
				<p class="fst-italic ">Send and show a friend.</p>
				<button class="btn btn-outline-light">Send</button>
			</form>
		</div>
	</body>
</html>