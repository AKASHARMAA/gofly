<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Make A person</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
#center-inside {
	display: flex;
	flex-direction: column;
	justify-content: center;
}

.center-text {
	text-align: center;
}
</style>
</head>
<body>
	<form method="get" action="savePerson" class="w3-center">
		<input type="text" name="personName" class="w3-input" />
		<br> 
		<input type="text" name="personAddress" class="w3-input" />
		<br> 
		<input type="submit" value="submit" class="w3-btn w3-teal" />
	</form>

</body>
</html>