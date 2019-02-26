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

<script type="text/javascript"
	src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script type="text/javascript"
	src="https://www.amcharts.com/lib/3/pie.js"></script>
<script type="text/javascript"
	src="https://www.amcharts.com/lib/3/themes/chalk.js"></script>
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
					<li class="nav_text_button"><a href="indexServlet">Home</a></li>
					<li class="active"><a href="#">La Struttura</a></li>
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
	<div id="about">
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-6" id="img_ilido_sec_lastruttura"></div>
				<div class="col-sm-5 col-md-offset-1">
					<div class="about-text">
						<h2>Il Lido</h2>
						<p>Il lido Flamingo Beach Club è rinomato in tutta la regione
							per la qualità dei servizi che offre. Al suo interno troverete
							infatti meravigliose spiagge di sabbia fine, sia sul bagnasciuga
							che per i primi metri in acqua. Un grande numero di ombrelloni
							liberi, gazebo e zone di sosta sono a tua dispozione per
							consentirti di prenderti una pausa tra un tuffo e l'altro.
							L'acqua cristallina e la biodiversità che il nostro mare ospita
							ci rendono unici in tutto il panorama merdionale. Vieni a vedere
							con i tuoi occhi!</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="about">
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-5 col-md-offset-1">
					<div class="about-text">
						<h2>Il Ristorante</h2>
						<p>Il ristorante del lido è a dispozione dei clienti che ne
							hanno fatto richiesta, ma anche dei forestieri che passano di lì,
							con una piccola sovratassa. Disponiamo di eccellenti Chef e
							ingredienti di primissima qualità, ovviamente a km 0 quando
							possibile. È possibile scegliere fra diversi menù, fra cui
							compaiono anche una versione vegetariana e una per celiaci, in
							modo da accontentare al meglio le esigenze di ogni cliente.</p>
					</div>
				</div>
				<div class="col-sm-6" id="img_ilristorante_sec_lastruttura"></div>

			</div>
		</div>
	</div>
	<div id="about">
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-6" id="img_ilbar_sec_lastruttura"></div>
				<div class="col-sm-5 col-md-offset-1">
					<div class="about-text">
						<h2>Il Bar</h2>
						<p>Il bar del lido, come il ristorante, è aperto a chiunque si
							trovi nei paraggi. Offre una possibilità di scelta davvero ampia,
							potendo accontentare sia dei placidi apertivi pomeridiani, sia
							l'ampia richiesta di cocktail dei giovani durante le sere estive.
							Qualificati baristi sono pronti a servirvi con cordialità e
							dimestichezza, mentre qualcuno di loro sarà anche in grado di
							intrattenervi con movenze da barman professionista.</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="div_youtube">
		<iframe id="video_youtube"
			src="https://www.youtube.com/embed/KGClXTb-Tss" frameborder="0"
			allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
			allowfullscreen></iframe>
	</div>
	<div class="col-sm-12">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<h3 style="color: white;">IMPRESSIONI DELLA CLIENTELA</h3>
			<script type="text/javascript">
				AmCharts
						.makeChart(
								"chartdiv1",
								{
									"type" : "pie",
									"balloonText" : "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>",
									"innerRadius" : 0,
									"labelRadius" : 3,
									"colors" : [ "grey", "black", "white" ],
									"hoverAlpha" : 0,
									"titleField" : "category",
									"valueField" : "column-1",
									"theme" : "chalk",
									"allLabels" : [],
									"balloon" : {},
									"legend" : {
										"enabled" : true,
										"align" : "center",
										"markerType" : "circle"
									},
									"titles" : [],
									"dataProvider" : [ {
										"category" : "5 Stelle",
										"column-1" : "${recensioni[4]}"
									}, {
										"category" : "4 Stelle",
										"column-1" : "${recensioni[3]}"
									}, {
										"category" : "3 Stelle",
										"column-1" : "${recensioni[2]}"
									}, {
										"category" : "2 Stelle",
										"column-1" : "${recensioni[1]}"
									}, {
										"category" : "1 Stella",
										"column-1" : "${recensioni[0]}"
									} ]
								});
			</script>
			<div id="chartdiv1"
				style="width: 100%; height: 400px; background-color: #282828;"></div>
		</div>
		<div class="col-sm-3"></div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>


	<script type="text/javascript" src="js/jquery.1.11.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/SmoothScroll.js"></script>
	<script type="text/javascript" src="js/jqBootstrapValidation.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>