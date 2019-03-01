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
					<li class="nav_text_button"><a href="index_EB.jsp">Home</a></li>
					<li class="active"><a href="#">The structure</a></li>
					<li><a class="nav_text_button" href="Prenota_EN.jsp">Book</a></li>
					<li><a class="nav_text_button" href="Contatti_EN.jsp">Contacts</a></li>
				</ul>
				<c:if test="${user == null}">
					<ul class="nav navbar-nav navbar-right">
						<li><a class="nav_bar_button_text_login" href="Login_EN.jsp">Login</a></li>
						<li><a class="nav_bar_button_text_login"
							href="Registrati_EN.jsp">Sign up</a></li>
					</ul>
				</c:if>
				<c:if test="${user != null}">
					<div class="nav navbar-nav navbar-right">
						<div class="dropdown">
							<button id="welcome" class="btn btn-primary dropdown-toggle"
								type="button" data-toggle="dropdown" aria-expanded="true">
								Welcome,${user.getUsername()}! <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a id="to_profilo" href="ProfiloServlet">To the user page</a></li>
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
						<h2>The lido</h2>
						<p style="text-align: justify">The Flamingo Beach Club is
							renowned throughout the region for the quality of the services it
							offers. Inside you will find in fact, wonderful beaches of fine
							sand, both on the water's edge that for the first meters in the
							water. A large number of umbrellas free, gazebo and rest areas
							are at your disposal for allow you to take a break between a dive
							and another. The crystal clear water and the biodiversity that
							our sea hosts they make us unique in the whole merdion landscape.
							come and see with your eyes!</p>
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
						<h2>The restaurant</h2>
						<p style="text-align: justify">The restaurant of the lido is
							available to customers who are they have applied for, but also
							for foreigners passing by, with a small surcharge. We have
							excellent Chefs and ingredients of the highest quality, obviously
							at km 0 when possible. You can choose from several menus,
							including there is also a vegetarian version and one for celiacs,
							in in order to satisfy the needs of each client in the best
							possible way.</p>
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
						<h2>The bar</h2>
						<p style="text-align: justify">The bar of the lido, like the
							restaurant, is open to anyone find nearby. It offers a really
							wide choice, being able to satisfy both the placid afternoon
							openings, and the wide demand for young cocktails during the
							summer evenings. Qualified baristas are ready to serve you with
							cordiality and familiar, while some of them will also be able to
							entertain you with professional barman movements..</p>
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
			<h3 style="color: white;">CUSTOMER IMPRESSIONS</h3>
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
										"category" : "5 stars",
										"column-1" : "${recensioni[4]}"
									}, {
										"category" : "4 stars",
										"column-1" : "${recensioni[3]}"
									}, {
										"category" : "3 stars",
										"column-1" : "${recensioni[2]}"
									}, {
										"category" : "2 stars",
										"column-1" : "${recensioni[1]}"
									}, {
										"category" : "1 star",
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