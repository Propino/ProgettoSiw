<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script type="text/javascript" src="js/xdropdown.js"></script>
<script type="text/javascript" src="js/xdropdown2.js"></script>

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

			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#nav_collassata">
				<span class="sr-only"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>

			<div class="collapse navbar-collapse" id="nav_collassata">
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
						<div class="nav navbar-nav navbar-right">
							<div class="dropdown">
								<button class="btn btn-primary dropdown-toggle" type="button"
									data-toggle="dropdown" aria-expanded="true">
									Benvenuto,${user.getUsername()}! <span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a id="wel" href="ProfiloServlet">Vai al profilo
											utente</a><i class="fa fa-caret-right"></i></li>
									<li><a href="#">CSS</a></li>
									<li><form method="get" action="LogoutServlet">
											<input type="submit" id="logout" value="LOGOUT"><i
												class="fa fa-sign-out-alt"></i>
										</form></li>
								</ul>
							</div>

						</div>
					</c:if>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>