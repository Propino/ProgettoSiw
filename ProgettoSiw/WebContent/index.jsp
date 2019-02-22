<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel='icon' href='img/favicon.ico' type='image/x-icon'/ >
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Flamingo Beach Club</title>
<!-- Bootstrap -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome/css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="css/style.css">

<!-- Font ================================================== -->
<link
	href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Rochester"
	rel="stylesheet">

</head>
<body>

	<nav id="menu" class="navbar navbar-default navbar-fixed-top">
		<div class="container">

			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nav_collassata">
				<span class="sr-only"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>

			<div class="collapse navbar-collapse" id ="nav_collassata">
				<ul class="nav navbar-nav navbar-left">
					<li class="active"><a href="#">Home</a></li>
					<li><a class="nav_text_button" href="LaStruttura.jsp">La
							Struttura</a></li>
					<li><a class="nav_text_button" href="Prenota.jsp">Prenota</a></li>
					<li><a class="nav_text_button" href="Contatti.jsp">Contatti</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<c:if test="${user == null}">
						<li><a class="nav_bar_button_text_login" href="Login.jsp">Login</a></li>
						<li><a class="nav_bar_button_text_login"
							href="Registrati.jsp">Registrati</a></li>
					</c:if>
					<c:if test="${user != null}">
						<li><h5 id="welcome"class="nav_text_button"><a id ="wel" href ="Profilo.jsp">Benvenuto,${user.getUsername()}!</a></h5>
						<li><form method="get" action="LogoutServlet">
								<input type="submit" id="logout" value="LOGOUT">
							</form></li>
					</c:if>
				</ul>
			</div>
		</div>
	</nav>

	<div id="img_iniziale">
		<h1>Flamingo</h1>
		<h1>Beach Club</h1>
	</div>
	<!-- Features Section -->
	<div id="features">
		<div class="container">
			<div id="intestazione">
				<h2>Il nuovo modo di prenotare il tuo posto al mare</h2>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-4">
					<div class="features-item">
						<h3>FACILE</h3>
						<img src="img/ombrellone1.png" class="img-responsive" alt="">
						<p>Scegli direttamente dalla mappa il posto che più ti piace.</p>
					</div>
				</div>
				<div class="col-xs-12 col-sm-4">
					<div class="features-item">
						<h3>VELOCE</h3>
						<img src="img/ombrellone2.jpg" class="img-responsive" alt="">
						<p>Il tuo posto in riva al mare a portata di click.</p>
					</div>
				</div>
				<div class="col-xs-12 col-sm-4">
					<div class="features-item">
						<h3>SICURO</h3>
						<img src="img/ombrellone3.jpg" class="img-responsive" alt="">
						<p>Pagamenti rapidi e sicuri.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>


	<script type="text/javascript" src="js/jquery.1.11.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/SmoothScroll.js"></script>
	<script type="text/javascript" src="js/jqBootstrapValidation.js"></script>
	<script type="text/javascript" src="js/contact_me.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>