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

<title>Enomy Finance Apps</title>
<style>
.form-container {
	width:fit-content;
	background-color:#00a7ff;
	padding:50px;
	border-radius:10px;
	color:#fff9ec;
	margin:15% auto 0 auto;
}
</style>
</head>
<body style="font-family: Effra, Helvetica, Arial, sans-serif;">


	<%@ include file="header.jsp"%>

	<div class="container">
		<div class="form-container">
			<h2>Edit User Page</h2>
			<form:form action="save_user" method="post" modelAttribute="user">
			<form:hidden path="id" value="${user.id}" />
				<c:if test="${update_success != null}">

					<div class="alert alert-success">${update_success}</div>
				</c:if>

				<table border="0" cellpadding="5">
					<tr>
						<td>Name:</td>
						<td><form:input path="name" style="border-radius:5px;border:none;padding:4px;"/></td>
					</tr>
					<tr>
						<td>User Name:</td>
						<td><form:input path="userName" style="border-radius:5px;border:none;padding:4px;"/></td>
					</tr>
					<tr>
						<td>Password:</td>
						<td><form:input path="password" style="border-radius:5px;border:none;padding:4px;"/></td>
					</tr>

					<tr>
						<td colspan="2"><input type="submit" value="Update" style="border-radius:5px;border:none;padding:4px;"></td>
					</tr>
				</table>
			</form:form>
		</div>


	</div>
	<div style="margin-top:5%;">
	<%@ include file="footer.jsp"%>
	</div>
	
</body>
</html>