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
					<li class="nav_text_button"><a href="indexServlet">Home</a></li>
					<li><a class="nav_text_button" href="LaStruttura.jsp">La
							Struttura</a></li>
					<li><a class="nav_text_button" href="Prenota.jsp">Prenota</a></li>
					<li class="active"><a href="#">Contatti</a></li>
				</ul>
				<c:if test="${user == null}">
					<ul class="nav navbar-nav navbar-right">
						<li><a class="nav_bar_button_text_login" href="Login.jsp">Login</a></li>
						<li><a class="nav_bar_button_text_login"
							href="Registrati.jsp">Registrati</a></li>
					</ul>
				</c:if>
				<c:if test="${user != null}">
					<div class="nav navbar-nav navbar-right">
						<div class="dropdown">
							<button id="welcome" class="btn btn-primary dropdown-toggle"
								type="button" data-toggle="dropdown" aria-expanded="true">
								Benvenuto,${user.getUsername()}! <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a id="to_profilo" href="ProfiloServlet">Vai al
										profilo utente</a></li>
										<li class="divider"></li>
								<li><form method="get" action="LogoutServlet">
										<input id="logout" type="submit" value="Logout"><i
											class="fa fa-sign-out-alt"></i>
									</form></li>
							</ul>
						</div>
					</div>
				</c:if>
			</div>
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
						<h2>Vienici a trovare!</h2>
						<p>Contatta gli hotel associati presenti nella lista per
							scoprire del servizio navetta che ti trasporterà nello
							stabilimento!</p>
						<p onclick="showHotel()" style="cursor: pointer;">
							<strong>Clicca per la lista di Hotel associati!</strong>
						</p>
						<div id="hotel" name="hotel">
							<ul>
								<li style ="list-style-type:none;">&#8226 Ashley Hotel, via Cafarone 31, 340123456.
								<li style ="list-style-type:none;">&#8226 B&B San Carlo, via Scolastico 17, 333444555.
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
			<div class="riquadri_contatti">
				<h3>Prenotazioni</h3>
				<div class="contact-item">
					<p>Per telefonare</p>
					<p>(+39) 348100****</p>
				</div>
			</div>
			<div class="riquadri_contatti">
				<h3>Indirizzo</h3>
				<div class="contact-item">
					<p>Cafarone</p>
					<p>Lamezia Terme, Catanzaro</p>
				</div>
			</div>
			<div class="riquadri_contatti">
				<h3>Periodo di Apertura</h3>
				<div class="contact-item">
					<p>Dal 15/05</p>
					<p>Al 30/09</p>
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
	<script src="js/global.js"></script>

</body>
</html>