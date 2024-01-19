<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!--  Enable Bootstrap 
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>-->

<style type="text/css">
.Welcome-Message{
	margin-top:200px;
	text-align:center;
}
h1{
color:#fff7ec;

}
</style>

<title>Enomy Finance Apps </title>
</head>
<body>
	<div class="container">
	
		<%@ include file="header.jsp"%>

		<!--  <form method="get" action="search">
			<input type="text" name="keyword" /> &nbsp; 
			<input type="submit" value="Search" />
		</form>

		

	    <br/>

		<table  class="table table-striped table-bordered">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Phone Number</th>
				<th>Localities</th>
				<th>Action</th>
			</tr>
			<c:forEach items="${allStore}" var="store">
				<tr>
					<td>${store.id}</td>
					<td>${store.name}</td>
					<td>${store.phone_number}</td>
					<td>${store.localities}</td>
					<td><a href="edit?id=${store.id}">Edit</a> &nbsp;&nbsp;&nbsp;
						<a href="delete?id=${store.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</table> -->
		
		<div class="Welcome-Message">
			<h1>
			Welcome again!
			</h1>
		</div>
		
		<%@ include file="footer.jsp"%>
		
	</div>
</body>
</html>