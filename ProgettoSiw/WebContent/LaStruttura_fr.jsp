<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
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
				<li class="active"><a href="#">La structure</a></li>
				<li><a class="nav_text_button" href="Prenota_fr.jsp">Réserve</a></li>
				<li><a class="nav_text_button" href="Contatti_fr.jsp">Contacts</a></li>
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
				<div class="col-sm-6" id="img_ilido_sec_lastruttura"></div>
				<div class="col-sm-5 col-md-offset-1">
					<div class="about-text">
						<h2>Le lido</h2>
						<p>Le Flamingo Beach Club est renommé dans toute la région
							pour la qualité des services offerts. À l'intérieur, vous
							trouverez en fait, de magnifiques plages de sable fin, toutes
							deux au bord de l'eau que pour les premiers mètres dans l'eau. Un
							grand nombre d'omrelloni zones de gazebo et de repos sont à votre
							disposition pour vous permettent de faire une pause entre une
							plongée et une autre. L'eau cristalline et la biodiversité que
							notre mer accueille ils nous rendent uniques dans tout le paysage
							de la merdion. Viens voir avec tes yeux!</p>
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
						<h2>Le restaurant</h2>
						<p>Le restaurant du lido est disponible pour les clients qui
							ne connaissent pas ils ont demandé, mais aussi pour les étrangers
							qui passent, avec un petit supplément. Nous avons d'excellents
							chefs et ingrédients de la plus haute qualité, évidemment au km 0
							quand possible. Vous pouvez choisir parmi plusieurs menus, y
							compris il existe également une version végétarienne et une pour
							les coeliaques, en afin de satisfaire au mieux les besoins de
							chaque client.</p>
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
						<h2>Le bar</h2>
						<p>Le bar du lido, comme le restaurant, est ouvert à tous
							trouver à proximité. Il offre un très large choix, être capable
							de satisfaire à la fois les belles ouvertures de l'après-midi et
							la demande importante de jeunes cocktails pendant les soirées
							d'été. Des baristas qualifiés sont prêts à vous servir avec
							cordialité et familier, alors que certains pourront également
							vous divertir avec des mouvements de barman professionnels.</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="col-sm-6">
		<h3 style="color: white;">AFFLUENCE MOYENNE</h3>
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
		<h3 style="color: white;">IMPRESSIONS CLIENTS</h3>
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

	<jsp:include page="footer_fr.jsp"></jsp:include>


	<script type="text/javascript" src="js/jquery.1.11.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/SmoothScroll.js"></script>
	<script type="text/javascript" src="js/jqBootstrapValidation.js"></script>
	<script type="text/javascript" src="js/contact_me.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>