<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<title> HOME </title>

<style>
.title {
  margin-top: 9%;
  font-family: Effra, Helvetica, Arial, sans-serif;
  width: fit-content;
  position: absolute;
  text-align: center;
  top: 50%; /* Center vertically */
  left: 50%; /* Center horizontally */
  transform: translate(-50%, -70%); /* Center both vertically and horizontally */
  background-color: rgba(255, 255, 255, 0.5);
}

.title h2 {
  color: #050708;
  font-size: 50px;
  font-weight: bold;
}
</style>
</head>

<body style="background-image:url('images/enomy-homepage2.jpg'); background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;">


<%@ include file="/WEB-INF/views/header.jsp"%>
<div class="title">
<h2> Welcome to Enomy-Finances Application </h2>
</div>




</body>
</html>
