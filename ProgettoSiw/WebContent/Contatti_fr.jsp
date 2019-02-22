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

<!-- Favicons
    ================================================== -->
<!-- Bootstrap -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome/css/font-awesome.css">

<!-- Stylesheet
    ================================================== -->
<link rel="stylesheet" type="text/css" href="css/style.css">
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

	<nav id="menu" class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="nav_text_button"><a href="index_fr.jsp">Home</a></li>
				<li><a class="nav_text_button" href="LaStruttura_fr.jsp">La
						structure</a></li>
				<li><a class="nav_text_button" href="Prenota_fr.jsp">Réserve</a></li>
				<li class="active"><a href="#">Contacts</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<c:if test = "${user == null}">
					<li><a class="nav_bar_button_text_login" href="Login.jsp">Login</a></li>
					<li><a class="nav_bar_button_text_login" href="Registrati.jsp">Inscrivez-vous!</a></li>
				</c:if>
				<c:if test = "${user != null}">
				<li><h5 id="welcome" class="nav_text_button">Bienvenue,${user.getUsername()}!</h5>
				<li><form method="get" action="LogoutServlet">
						<input type="submit" id="logout" value="LOGOUT">
					</form></li>
				</c:if>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	</nav>
	<div id="about">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-12 col-md-6 about-img">
					<iframe id="mappa_contatti"
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6208.682611697249!2d16.219582126352055!3d38.91617576827061!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x133fe13425aa53db%3A0x260b95af845a7ac1!2s88046+Cafarone+CZ!5e0!3m2!1sit!2sit!4v1547830848867"></iframe>
				</div>
				<div class="col-xs-12 col-md-3 col-md-offset-1">
					<div class="about-text">
						<h2>Venez nous rendre visite!</h2>
						<p>Contactez les hôtels associés sur la liste pour Découvrez
							le service de navette qui vous transportera à établissement!</p>
						<p onclick="showHotel()" style="cursor: pointer;">
							<strong>Cliquez pour la liste des hôtels associés!</strong>
						</p>
						<div id="hotel" name="hotel">
							<ul>
								<li>Ashley Hotel,Cafarone 31, 340123456.
								<li>B&B San Carlo,Scolastico 17, 333444555.
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!-- Contact Section -->
	<div id="contact" class="text-center">
		<div class="container text-center">
			<div class="col-md-4"
				style="border: 2px solid grey; margin-right: 3%; width: 30%;">
				<h3>Reservation</h3>
				<div class="contact-item">
					<p>Appeler</p>
					<p>(+39) 348100****</p>
				</div>
			</div>
			<div class="col-md-4"
				style="border: 2px solid grey; margin-right: 3%; width: 30%;">
				<h3>Adresse</h3>
				<div class="contact-item">
					<p>Cafarone</p>
					<p>Lamezia Terme, Catanzaro</p>
				</div>
			</div>
			<div class="col-md-4" style="border: 2px solid grey; width: 30%;">
				<h3>Période d'ouverture</h3>
				<div class="contact-item">
					<p>Dal 15/05</p>
					<p>Al 30/09</p>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="footer_fr.jsp"></jsp:include>


	<script type="text/javascript" src="js/jquery.1.11.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/SmoothScroll.js"></script>
	<script type="text/javascript" src="js/jqBootstrapValidation.js"></script>
	<script type="text/javascript" src="js/contact_me.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
	<script src="js/global.js"></script>

</body>
</html>