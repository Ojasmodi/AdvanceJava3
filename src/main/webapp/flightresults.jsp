<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>Flight results</title>
</head>
<body class="container">

	<h2 class="text-center text-info mt-2">
		<u>Flight portal</u>
	</h2>

	<form action="/logout" method="post">
		<button type="submit"
			class="btn btn-outline-primary btn-sm float-right">Log out</button>
	</form>
	<c:if test="${!flights.isEmpty()}">
		<button type="button" onclick='window.history.back()'
			class="btn btn-info btn-sm">Go back</button>



		<h2>Your search result-</h2>

		<table class="table table-bordered table-dark">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Flight Number</th>
					<th scope="col">Flight time(24:00)</th>
					<th scope="col">Duration</th>
					<th scope="col">Fare(Rs)</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="flight" items="${flights}">
					<tr>
						<th scope="row">#</th>
						<td>${flight.flightNo}</td>
						<td>${flight.flightTime}</td>
						<td>${flight.flightDur}</td>
						<td>${flight.fare}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>
	<c:if test="${flights.isEmpty()}">
		<h2>No flights available for the selected choices.</h2>
	</c:if>
	<a type="button" href='home.jsp' class="btn btn-success btn-sm">Search
		another result</a>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>