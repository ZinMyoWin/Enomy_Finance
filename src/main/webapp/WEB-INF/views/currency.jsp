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
<link rel="stylesheet" href="css/currency.css" />
<%@ page isELIgnored="false"%>

</head>
<body style="font-family: Effra, Helvetica, Arial, sans-serif;background-image:url('images/exchange.jpg'); background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;">


	<%@ include file="header.jsp"%>
	<!-- <img src="images/exchange.jpg"> -->
	<div>
		<div class="form-container">
			<form:form action="converter" method="post" class="card1">
				<h3>Converter</h3>
				<div class="form" style="margin-top: 20px;">
					<div class="form1">
						<label for="fromCurrency" >From Currency</label> <select
							name="fromCurrency" id="fromCurrency" required>
							<option value="GBP">Pounds Sterling (GBP)</option>
							<option value="USD">American Dollars (USD)</option>
							<option value="EUR">Euro (EUR)</option>
							<option value="BRL">Brazilian Real (BRL)</option>
							<option value="JPY">Japanese Yen (JPY)</option>
							<option value="TRY">Turkish Lira (TRY)</option>
						</select>
					</div>
					<div class="form2">
						<label for="toCurrency">To Currency</label> <select
							name="toCurrency" id="toCurrency" required>
							<option value="GBP">Pounds Sterling (GBP)</option>
							<option value="USD">American Dollars (USD)</option>
							<option value="EUR">Euro (EUR)</option>
							<option value="BRL">Brazilian Real (BRL)</option>
							<option value="JPY">Japanese Yen (JPY)</option>
							<option value="TRY">Turkish Lira (TRY)</option>
						</select>
					</div>


				</div>


				<div
					style="display: flex; flex-direction: column; margin-top: 20px;">
					<label>Amount</label> <input type="number" name="amount"
						placeholder="Enter amount" required>
				</div>
				<input type="submit" id="submit" value="Converter">
			</form:form>


			<c:if test="${not empty convertedAmount}">
				<div class="conversion-result">
					<h4>Conversion Result</h4>
					<p>Amount: ${amount} ${fromCurrency}</p>
					<p>Converted Amount: ${String.format('%.2f', convertedAmount)}
						${toCurrency}</p>
					<p>Fee: ${String.format('%.2f', fee)} ${fromCurrency}</p>
					<p>Total Amount: ${String.format('%.2f', totalAmount)}
						${fromCurrency}</p>
				</div>
			</c:if>

		</div>

	</div>
	<div style="margin-top: 10%;">
		<%@ include file="footer.jsp"%>
	</div>
	<script type="text/javascript">
		function onchangeDropdown() {
			var from = document.getElementById("from").value;
			var to = document.getElementById("to").value;
			document.getElementById("fromto").innerHTML = "From " + from
					+ " To " + to;
			document.getElementById("from_label").innerHTML = from;
		}
	</script>

</body>
</html>
