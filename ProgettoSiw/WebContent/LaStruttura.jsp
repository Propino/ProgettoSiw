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
					<li class="nav_text_button"><a href="index.jsp">Home</a></li>
					<li class="active"><a href="#">La Struttura</a></li>
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
						<li><h5 id="welcome"class="nav_text_button"><a id ="wel" href ="ProfiloServlet">Benvenuto,${user.getUsername()}!</a></h5>
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
				<div class="col-sm-6" id="img_ilido_sec_lastruttura"></div>
				<div class="col-sm-5 col-md-offset-1">
					<div class="about-text">
						<h2>Il Lido</h2>
						<p>Il lido Flamingo Beach Club è rinomato in tutta la regione
							per la qualità dei servizi che offre. Al suo interno troverete
							infatti meravigliose spiagge di sabbia fine, sia sul bagnasciuga
							che per i primi metri in acqua. Un grande numero di omrelloni
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

	<div id="youtube_video" style="width: 100%";>
		<iframe
			style="width: 560px; height: 314px; margin-left: 30%; margin-top: 4%; margin-bottom: 4%; border: 10px outset grey"
			src="https://www.youtube.com/embed/KGClXTb-Tss" frameborder="0"
			allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
			allowfullscreen></iframe>
	</div>
	<div class="col-sm-6">
		<h3 style="color: white;">AFFLUENZA MEDIA MENSILE</h3>
		<!-- amCharts javascript sources -->
		<script type="text/javascript"
			src="https://www.amcharts.com/lib/3/amcharts.js"></script>
		<script type="text/javascript"
			src="https://www.amcharts.com/lib/3/pie.js"></script>
		<script type="text/javascript"
			src="https://www.amcharts.com/lib/3/themes/chalk.js"></script>


		<!-- amCharts javascript code -->
		<script type="text/javascript">
			AmCharts
					.makeChart(
							"chartdiv",
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
									"category" : "Maggio",
									"column-1" : "12"
								}, {
									"category" : "Giugno",
									"column-1" : "21"
								}, {
									"category" : "Luglio",
									"column-1" : "24"
								}, {
									"category" : "Agosto",
									"column-1" : "28"
								}, {
									"category" : "Settembre",
									"column-1" : "15"
								} ]
							});
		</script>
		<div id="chartdiv"
			style="width: 100%; height: 400px; background-color: #282828;"></div>
	</div>
	<div class="col-sm-6">
		<h3 style="color: white;">IMPRESSIONI DELLA CLIENTELA</h3>
		<!-- amCharts javascript code -->
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
									"column-1" : "58"
								}, {
									"category" : "4 Stelle",
									"column-1" : "20"
								}, {
									"category" : "3 Stelle",
									"column-1" : "14"
								}, {
									"category" : "2 Stelle",
									"column-1" : "6"
								}, {
									"category" : "1 Stella",
									"column-1" : "2"
								} ]
							});
		</script>
		<div id="chartdiv1"
			style="width: 100%; height: 400px; background-color: #282828;"></div>
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