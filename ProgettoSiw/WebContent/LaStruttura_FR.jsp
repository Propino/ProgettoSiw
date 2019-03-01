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
					<li class="active"><a href="#">La Structure</a></li>
					<li><a class="nav_text_button" href="Prenota.jsp">Livre</a></li>
					<li><a class="nav_text_button" href="Contatti.jsp">Contacts</a></li>
				</ul>
				<c:if test="${user == null}">
					<ul class="nav navbar-nav navbar-right">
						<li><a class="nav_bar_button_text_login" href="Login.jsp">Login</a></li>
						<li><a class="nav_bar_button_text_login"
							href="Registrati.jsp">Inscription</a></li>
					</ul>
				</c:if>
				<c:if test="${user != null}">
					<div class="nav navbar-nav navbar-right">
						<div class="dropdown">
							<button id="welcome" class="btn btn-primary dropdown-toggle"
								type="button" data-toggle="dropdown" aria-expanded="true">
								Bienvenue,${user.getUsername()}! <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a id="to_profilo" href="ProfiloServlet">Aller au profil</a></li>
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
						<h2>Le lido</h2>
						<p style="text-align: justify">Le Flamingo Beach Club est
							renommé dans toute la région pour la qualité des services
							offerts. À l'intérieur, vous trouverez en fait, de magnifiques
							plages de sable fin, toutes deux au bord de l'eau que pour les
							premiers mètres dans l'eau. Un grand nombre de parapluies zones
							de gazebo et de repos sont à votre disposition pour vous
							permettent de faire une pause entre une plongée et une autre.
							L'eau cristalline et la biodiversité que notre mer accueille ils
							nous rendent uniques dans tout le paysage de la merdion. Viens
							voir avec tes yeux!</p>
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
						<p style="text-align: justify">Le restaurant du lido est
							disponible pour les clients qui sont ils ont demandé, mais aussi
							pour les étrangers qui passent, avec un petit supplément. Nous
							avons d'excellents chefs et ingrédients de la plus haute qualité,
							évidemment au km 0 quand possible. Vous pouvez choisir parmi
							plusieurs menus, y compris il existe également une version
							végétarienne et une pour les coeliaques, en afin de satisfaire au
							mieux les besoins de chaque client.</p>
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
						<p style="text-align: justify">Le bar du lido, comme le
							restaurant, est ouvert à tous trouver à proximité. Il offre un
							très large choix, être capable de satisfaire à la fois les belles
							ouvertures de l'après-midi et la demande importante de jeunes
							cocktails pendant les soirées d'été. Des baristas qualifiés sont
							prêts à vous servir avec cordialité et familier, alors que
							certains pourront également vous divertir avec des mouvements de
							barman professionnels.</p>
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
			<h3 style="color: white;">IMPRESSIONS CLIENTS</h3>
			<script type="text/javascript">
				AmCharts
						.makeChart(
								"chartdiv1",
								{
									"type" : "pie",
									"balloonText" : "[[title]]_$ta_$tag_________________________$t[[value]]_$ta ([[percents]]%)_$tag__",
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
										"category" : "5 etoiles",
										"column-1" : "${recensioni[4]}"
									}, {
										"category" : "4 etoiles",
										"column-1" : "${recensioni[3]}"
									}, {
										"category" : "3 etoiles",
										"column-1" : "${recensioni[2]}"
									}, {
										"category" : "2 etoiles",
										"column-1" : "${recensioni[1]}"
									}, {
										"category" : "1 etoile",
										"column-1" : "${recensioni[0]}"
									} ]
								});
			</script>
			<div id="chartdiv1"
				style="width: 100%; height: 400px; background-color: #282828;"></div>
		</div>
		<div class="col-sm-3"></div>
	</div>
	<jsp:include page="footer_EN.jsp"></jsp:include>


	<script type="text/javascript" src="js/jquery.1.11.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/SmoothScroll.js"></script>
	<script type="text/javascript" src="js/jqBootstrapValidation.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>