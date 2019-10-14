<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="org.apache.commons.lang3.StringUtils"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="https://www.thymeleaf.org"
	xmlns:sec="https://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>Flight Mgmt.</title>
</head>
<body class="container">
	<h2 class="text-center text-info mt-2">
		<u>Flight portal</u>
	</h2>
	<c:if test="${!StringUtils.isBlank(error)}">
		<div class="alert alert-danger text-center">${error}</div>
	</c:if>
	<c:if test="${!StringUtils.isBlank(msg)}">
		<div class="alert alert-success text-center">${msg}</div>
	</c:if>

	<!--     the post mapping is given by AuthenticationProvider if user details are verified -->
	<form action="/login" method="post" class="p-4 border border-info">
		<h4>Please login to continue:</h4>
		<div class="form-group">
			<label>Email address</label> <input type="text" class="form-control"
				name="username" placeholder="Enter email" required>
		</div>
		<div class="form-group">
			<label>Password</label> <input type="password" name="password"
				class="form-control" placeholder="Password" required>
		</div>
		<div class="text-center">
			<button type="submit" class="btn btn-success btn-sm">Login</button>
			<button type="reset" class="btn btn-danger btn-sm">Reset</button>
		</div>

	</form>

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