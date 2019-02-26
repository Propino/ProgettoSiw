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

<!-- Font ================================================== -->
<link
	href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Rochester"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdn.materialdesignicons.com/2.4.85/css/materialdesignicons.min.css">
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
					<li class="nav_text_button"><a href="indexServlet">Home</a></li>
					<li><a class="nav_text_button" href="StrutturaServlet">La
							Struttura</a></li>
					<li><a class="nav_text_button" href="Prenota.jsp">Prenota</a></li>
					<li><a class="nav_text_button" href="Contatti.jsp">Contatti</a></li>
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


	<h2 id="whatguestthink">Cosa ne pensano i
		nostri clienti !</h2>
	<div class="col-md-12">
		<div class="col-md-4 filtro_stelle">
			<div id="5stelle" class="stelle_nel_filtro">
				<c:forEach begin="1" end="5">
					<label class="mdi mdi-star piene"></label>
				</c:forEach>
				<input type="button" value="5" id="5s" onclick="cerca(this.id)"><label class="filtri"
					for="5s" >5 stelle</label>
			</div>
			<div id="4stelle" class="stelle_nel_filtro">
				<c:forEach begin="1" end="4">
					<label class="mdi mdi-star piene"></label>
				</c:forEach>
				<label class="mdi mdi-star vuote"></label> <input type="button"
					value="4" id="4s" onclick="cerca(this.id)"><label class="filtri" for="4s">4
					stelle</label>
			</div>
			<div id="3stelle" class="stelle_nel_filtro">
				<c:forEach begin="1" end="3">
					<label class="mdi mdi-star piene"></label>
				</c:forEach>
				<c:forEach begin="1" end="2">
					<label class="mdi mdi-star vuote"></label>
				</c:forEach>
				<input type="button" value="3" id="3s" onclick="cerca(this.id)"><label class="filtri"
					for="3s">3 stelle</label>
			</div>
			<div id="2stelle" class="stelle_nel_filtro">
				<c:forEach begin="1" end="2">
					<label class="mdi mdi-star piene"></label>
				</c:forEach>
				<c:forEach begin="1" end="3">
					<label class="mdi mdi-star vuote"></label>
				</c:forEach>
				<input type="button" value="2" id="2s" onclick="cerca(this.id)"><label class="filtri"
					for="2s">2 stelle</label>
			</div>
			<div id="1stelle" class="stelle_nel_filtro">
				<label class="mdi mdi-star piene"></label>
				<c:forEach begin="1" end="4">
					<label class="mdi mdi-star vuote"></label>
				</c:forEach>
				<input type="button" value="1" id="1s" onclick="cerca(this.id)"><label class="filtri"
					for="1s">1 stelle</label>
			</div>
			<div id="mostra_tutti" class="stelle_nel_filtro">
				<input type="button" value="6" id="6s" onclick="cercaTutte()"><label
					style="padding-left: 0;" class="filtri" for="6s">Mostra
					tutte </label>
			</div>
		</div>
		<div class="col-md-2">
			<img src="img/tripadvisor.png" id="img_trip_advisor" alt="TripAdvisor">
		</div>
		<div class="col-md-4" id="trip_advisor">
			<h3>Cosa pensa TripAdvisor di noi :</h3>
			<h5>"Il FlamingoBeachClub è un posto magico. Ogni tipo di comfort
				è a disposizione del cliente e la naturalità del posto è tra le
				migliori del circondariato."</h5>
		</div>
	</div>


		<div class="col-md-12 recensioni_in_page">
			<div class="col-md-3"></div>
			<div class="col-md-6 box_log" id = "contenitore">
				<c:forEach items="${rec}" var="value">
					<ul class="list-group" id="recensione_log">
						<li class="list-group-item text-muted" id="intestazione_review"><span
							id="nome_recensitore">${value.getUtente().getUsername()}</span>
							<div id="stelline">
								<c:forEach begin="1" end="${value.getStelle()}" varStatus="loop">
											<label class="mdi mdi-star piene"></label>
								</c:forEach>
								<c:forEach begin="${value.getStelle()}" end="4" varStatus="loop">
											<label class="mdi mdi-star vuote"></label>
								</c:forEach>
							</div></li>
						<li class="list-group-item" id="corpo_review"><span
							id="text_rec" class="pull-left">${value.getTesto()}</span></li>
					</ul>
					</c:forEach>
			</div>
			<div class="col-md-3"></div>
		</div>
	
	<script type="text/javascript" src="js/global.js"></script>
	<script type="text/javascript" src="js/jquery.1.11.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/SmoothScroll.js"></script>
	<script type="text/javascript" src="js/jqBootstrapValidation.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>