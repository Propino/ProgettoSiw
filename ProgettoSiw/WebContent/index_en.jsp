<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Flamingo Beach Club</title>
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome/css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="css/style.css">

<!-- Stylesheet
    ================================================== -->
<link
	href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Rochester"
	rel="stylesheet">

</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

	<%@ page import="model.Utente"%>
	<nav id="menu" class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle Navigation</span> <span class="icon-bar"></span>
				<span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-left">
				<li class="active"><a href="#">Home</a></li>
				<li><a class="nav_text_button" href="LaStruttura_en.jsp">The
						structure</a></li>
				<li><a class="nav_text_button" href="Prenota_en.jsp">Booking</a></li>
				<li><a class="nav_text_button" href="Contatti_en.jsp">Contacts</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<c:if test = "${user == null}">
					<li><a class="nav_bar_button_text_login" href="Login.jsp">Login</a></li>
					<li><a class="nav_bar_button_text_login" href="Registrati.jsp">Sing-Up</a></li>
				</c:if>
				<c:if test = "${user != null}">
				<li><h5 id="welcome" class="nav_text_button">Welcome,${user.getUsername()}!</h5>
				<li><form method="get" action="LogoutServlet">
						<input type="submit" id="logout" value="LOGOUT">
					</form></li>
				</c:if>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	</nav>
	<!-- Header -->
	<header id="header">
	<div class="intro">
		<div class="overlay">
			<div class="container">
				<div class="row">
					<div class="intro-text">
						<h1>Flamingo</h1>
						<h1>Beach Club</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	</header>
	<!-- Features Section -->
	<div id="features" class="text-center">
		<div class="container">
			<div class="section-title">
				<h2>The new way to book your place under the sun!</h2>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-4">
					<div class="features-item">
						<h3>EASY</h3>
						<img src="img/ombrellone1.png" class="img-responsive" alt="">
						<p>Choose directly from the map the place you like!</p>
					</div>
				</div>
				<div class="col-xs-12 col-sm-4">
					<div class="features-item">
						<h3>FAST</h3>
						<img src="img/ombrellone2.jpg" class="img-responsive" alt="">
						<p>Your place on the shore just a click away.</p>
					</div>
				</div>
				<div class="col-xs-12 col-sm-4">
					<div class="features-item">
						<h3>SAFE</h3>
						<img src="img/ombrellone3.jpg" class="img-responsive" alt="">
						<p>Your payments will be safe thanks to the new wallet
							VirtualWallet.</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="footer_en.jsp"></jsp:include>


	<script type="text/javascript" src="js/jquery.1.11.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/SmoothScroll.js"></script>
	<script type="text/javascript" src="js/jqBootstrapValidation.js"></script>
	<script type="text/javascript" src="js/contact_me.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>