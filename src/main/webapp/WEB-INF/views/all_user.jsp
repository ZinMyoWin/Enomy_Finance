<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>currency converter</title>


<style type="text/css">
.table-container{
	margin-top:15%;
}
h2{
text-align:center;
font-size:50px;
color:#00000;
}
</style>

<%@ page isELIgnored="false"%>
</head>

<body style="font-family: Effra, Helvetica, Arial, sans-serif;
background-image:url('images/user-management.jpg'); background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;">

	<%@ include file="header.jsp"%>


	<!-- First Container -->
	<div class="container">
		<div class="table-container">
			<h2 style="color:#fff9ec;font-weight:bold;">User List</h2>

				
				<c:if test="${not empty userlists}">
					
					<table style="margin-top:5%;" class="table table-striped table-bordered">

						<thead style="background-color:#00a7ff;color:#fff9ec;">
							<tr>
								<th>No.</th>
								<th>Full Name</th>
								<th>User Name </th>
								<th>Password</th>
								<th>Actions</th>
							</tr>
						</thead>
						
						<tbody>
						
						<% int i=1; %>
						<c:forEach var="user" items="${userlists}">
						
							<tr style="background-color:#fff9ec;">
								<td><%=i %></td>
								<td>${user.name}</td>
								<td>${user.userName}</td>
								<td>${user.password}</td>

								
								<td>
								<a href="user_edit?id=${user.id}">Edit</a> &nbsp;&nbsp;&nbsp;
						<a href="user_delete?id=${user.id}">Delete</a></td>
								
							</tr>
							<% i++; %>
						</c:forEach>

						</tbody>
					</table>
					
					</c:if>
					
				</div>
			</div>

<%@ include file="footer.jsp"%>
	
	</body>
	</html>