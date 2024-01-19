<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<%@ page isELIgnored="false"%>
<title>Save and Invest Plan</title>

<style>

.container1, .container2 {
	display: flex;
	flex-direction: row;
	justify-content: space-around;
}

.container2 {
	background-color: #fff9ec;
}

.form-container1 {
	opacity: 0.95;
	margin: 10% auto 0 auto;
	width: 30%;
	background-color: #00a7ff;
	padding: 20px;
	border-radius: 10px;
	color: #fff9ec;
}

.form-container1 h4 {
background-color:#fff9ec;
color:#0061ff;
border-radius:4px;
	font-size: 30px;
	text-align: center;
}

.invest-result h3{
border-radius:4px;
background-color:#fff9ec;
color:#0061ff;
font-size: 30px;
	text-align: center;
}

.form-container1 .calculate {
	margin-left: 5%;
}

.plan-form {
	display: flex;
	flex-direction: row;
	justify-content: space-between;
	flex-wrap: wrap;
	padding: 20px;
	width: fit-content;
	height: auto;
	border-radius: 20px;
	padding: 20px;
	flex-wrap: wrap;
}

.invest-result {
opacity:0.95;
	margin: 10% auto 0 auto;
	width: 30%;
	background-color: #00a7ff;
	padding: 20px;
	border-radius: 10px;
	color: #fff9ec;
}

.form {
	display: flex;
	flex-direction: row;
	border: 5px solid #379e90;
	border-radius: 20px;
	margin-top: 20px;
	background-color: #379e90;
	margin right: 10px;
	padding: 20px;
}

table {
	opacity: 0.95;
	width: 80%;
	margin: 4% auto;
	border-collapse: collapse;
}

th, td {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

th {
	background-color: #00a7ff;
	color: #fff9ec;
}

tr td:first-child {
	font-weight: bold; /* For example, make the text bold */
}
</style>
</head>
<body
	style="font-family: Effra, Helvetica, Arial, sans-serif; background-image: url('images/saveandinvest.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">

	<%@ include file="header.jsp"%>

	<div class="container1"
		style="font-family: Effra, Helvetica, Arial, sans-serif;">
		<div class="form-container1">
			<h4>Save and Investment Plan</h4>


			<form:form action="save_invest_plan" method="post">
				<div class="plan-form">
					<div style="display: flex; flex-direction: column;">
						<label>Year</label> <select name="year"
							style="border-radius: 5px;">
							<option value="1">1 Year Plan</option>
							<option value="2">2 Year Plan</option>
							<option value="3">3 Year Plan</option>
							<option value="4">4 Year Plan</option>
							<option value="5">5 Year Plan</option>
							<option value="6">6 Year Plan</option>
							<option value="7">7 Year Plan</option>
							<option value="8">8 Year Plan</option>
							<option value="9">9 Year Plan</option>
							<option value="10">10 Year Plan</option>
						</select>
					</div>

					<div style="display: flex; flex-direction: column;">
						<label>Investment Type</label> <select name="investment_type"
							style="border-radius: 5px;">
							<option value="1">Basic Savings Plan</option>
							<option value="2">Savings Plan Plus</option>
							<option value="3">Managed Stock Investments</option>
						</select>
					</div>
					<div style="display: flex; flex-direction: column;">
						<label>Monthly Amount To Be Invested</label> <input type="number"
							name="month_amount" placeholder="Enter Monthly Amount"
							style="border-radius: 5px" ; required>
					</div>
				</div>
				<input class="calculate" type="submit" id="submit" value="Calculate"
					style="border-radius: 5px; border: none;" />
			</form:form>

		</div>

		<c:if test="${not empty investResult}">
			<div class="invest-result">
				<h3>Investment Results For ${year} Year</h3>
				<br>
				<p>Predicted returns for ${year} year: ${String.format('%.2f', minPredictReturns)}%
					to ${String.format('%.2f', maxPredictReturns)}%.</p>
				<p>Estimated tax: ${String.format('%.2f', taxes)}%.</p>
				<p>RBSX group fees per month: ${String.format('%.2f', fees)}%.</p>

				<c:choose>
					<c:when test="${minPredictReturns == -1}">
						<p style="color: red; font-weight: bold;">Monthly amount
							exceeds the maximum allowed for the selected plan.</p>
					</c:when>
				</c:choose>
			</div>
		</c:if>
	</div>

	<table class="container2">
		<tr>
			<th>Plan</th>
			<th>Maximum Investment per Year</th>
			<th>Minimum Monthly Investment</th>
			<th>Minimum Initial Investment Lump Sum</th>
			<th>Predicted Returns per Year</th>
			<th>Estimated Tax</th>
			<th>RBSX Group Fees per Month</th>
		</tr>
		<tr>
			<td>Basic Savings Plan</td>
			<td>20,000</td>
			<td>50</td>
			<td>N/A</td>
			<td>1.2% to 2.4%</td>
			<td>0%</td>
			<td>0.25%</td>
		</tr>
		<tr>
			<td>Savings Plan Plus</td>
			<td>30,000</td>
			<td>50</td>
			<td>300</td>
			<td>3% to 5.5%</td>
			<td>10% on profits above 12,000</td>
			<td>0.3%</td>
		</tr>
		<tr>
			<td>Managed Stock Investments</td>
			<td>Unlimited</td>
			<td>150</td>
			<td>1,000</td>
			<td>4% to 23%</td>
			<td>10% on profits above 12,000, 20% on profits above 40,000</td>
			<td>1.3%</td>
		</tr>
	</table>

	<%@ include file="footer.jsp"%>
</body>
</html>
