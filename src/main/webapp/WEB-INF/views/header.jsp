
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Header</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="https://code.jquery.com/jquery-3.3.1.slim.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.bundle.min.js"> -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<!--Google Fonts  -->


<link rel="stylesheet" href="css/header.css" />
</head>
<body>
	<!-- Navbar-->
	<header class="header" style="font-family: Effra, Helvetica, Arial, sans-serif;">
		<nav class="navbar navbar-expand-lg fixed-top py-3">
			<div class="container">
				<a href="index.jsp" class="navbar-brand">Enomy-Finances</a>
				<button type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation"
					class="navbar-toggler navbar-toggler-right">
					<i class="fa fa-bars"></i>
				</button>

				<div id="navbarSupportedContent" class="collapse navbar-collapse">
					<ul class="navbar-nav ml-auto">
						<sec:authorize access="!isAuthenticated()">
							<!-- <li class="nav-item active"><a href="/Assignment3-ZMW/home" class="nav-link text-uppercase ">Home <span class="sr-only">(current)</span></a></li> -->
							<li class="nav-item"><a href="login"
								class="nav-link">Login</a></li>
							<li class="nav-item"><a href="register_form"
								class="nav-link">Register</a></li>

						</sec:authorize>

						<sec:authorize access="isAuthenticated()">

							<sec:authorize access="hasRole('Client')">
								<li class="nav-item"><a href="converter"
									class="nav-link">Currency conversion Module</a></li>
								<li class="nav-item"><a href="save_invest_plan"
									class="nav-link">Savings and investments
										Module</a></li>
							</sec:authorize>

							<sec:authorize access="hasRole('Staff')">
								<!-- <li class="nav-item"><a href="converter" class="nav-link text-uppercase ">Currency conversion Module</a></li> -->
								<li class="nav-item"><a href="users"
									class="nav-link">User Management</a></li>
							</sec:authorize>

							<li class="nav-item">
								<form action="logout" method="post">
									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" /> <input type="submit" name="Logout"
										value="Logout" class="nav-link2"></input>
								</form>
							</li>

						</sec:authorize>

					</ul>
				</div>
			</div>
		</nav>
	</header>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>

	<script>
		$(function() {
			$(window).on('scroll', function() {
				if ($(window).scrollTop() > 10) {
					$('.navbar').addClass('active');
				} else {
					$('.navbar').removeClass('active');
				}
			});
		});
	</script>
</body>
</html>