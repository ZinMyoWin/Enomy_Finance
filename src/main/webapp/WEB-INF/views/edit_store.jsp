<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!--  Enable Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<title>Enomy Finance Apps </title>
</head>
<body>
	<div class="container">
	
		<%@ include file="header.jsp"%>
		
		
		
		<h2>Edit Store Page</h2>
		<form:form action="save" method="post" modelAttribute="store">
			<table border="0" cellpadding="5">
				<tr>
					<td>ID: </td>
					<td>${store.id}
						<form:hidden path="id"/>
					</td>
				</tr>			
				<tr>
					<td>Name: </td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td>Phone Number: </td>
					<td><form:input path="phone_number" /></td>
				</tr>	
				<tr>
					<td>Localities: </td>
					<td><form:input path="localities" /></td>
				</tr>

				<tr>
					<td colspan="2"><input type="submit" value="Update"></td>
				</tr>						
			</table>
		</form:form>
		
			<%@ include file="footer.jsp"%>
		
		
	</div>
</body>
</html>