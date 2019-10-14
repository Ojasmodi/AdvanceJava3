<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script type="text/javascript" language="JavaScript">
	function My_Date() {
		document.getElementById("date").min = new Date().toISOString().split("T")[0];;

	}
	function checkValues(Form) {
		if (Form.departureLocation.value != Form.arrivalLocation.value) {
			return true;
		} else {
			alert("Destination and departure location can't be same.");
			return false;
		}
	}
</script>
</head>
<body class="container" onload="My_Date()" >
	<h2 class="text-center text-info mt-2">
		<u>Flight Portal</u>
	</h2>

	<form action="/logout" method="post">
		<button type="submit"
			class="btn btn-outline-primary btn-sm float-right">Log out</button>
	</form>
	<br>
	<br>

	<form name="Form" action="/search" method="post"
		onsubmit="return checkValues(this)">
		<div class="form-row">

			<div class="form-group col-md-6">
				<label for="inputState">Departure Location</label> <select
					name="departureLocation" class="form-control" required>
					<option selected disabled value="">Select here</option>
					<option value="del">Delhi</option>
					<option value="mub">Mumbai</option>
					<option value="bgr">Bangalore</option>
				</select>
			</div>

			<div class="form-group col-md-6">
				<label for="inputState">Arrival Location</label> <select
					name="arrivalLocation" class="form-control" required>
					<option selected disabled value="">Select here</option>
					<option value="mub">Mumbai</option>
					<option value="del">Delhi</option>
					<option value="bgr">Bangalore</option>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label for="journeyDate">Journey date:</label> <input type="date"
				class="form-control" id="date" name="dateOfJourney" placeholder="date"
				min="<script></script>" required>
		</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputState">Flight class</label> <select
					name="flightClass" class="form-control">
					<option selected value="E">Economy</option>
					<option value="B">Business</option>
				</select>
			</div>
			<div class="form-group col-md-6">
				<label for="inputState">Sort By</label> <select name="sortingType"
					class="form-control">
					<option selected value="Fare">Fare</option>
					<option value="FareAndDuration">Fare and Flight Duration</option>
				</select>
			</div>
		</div>
		<button type="submit" class="btn btn-primary btn-sm">Search
			flights</button>
		<button type="reset" class="btn btn-danger btn-sm">Reset</button>
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