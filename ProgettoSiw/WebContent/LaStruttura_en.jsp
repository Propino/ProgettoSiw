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
				<li class="nav_text_button"><a href="index_en.jsp">Home</a></li>
				<li class="active"><a href="#">The structure</a></li>
				<li><a class="nav_text_button" href="Prenota_en.jsp">Booking</a></li>
				<li><a class="nav_text_button" href="Contatti_en.jsp">Contacts</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<c:if test = "${user == null}">
					<li><a class="nav_bar_button_text_login" href="Login.jsp">Login</a></li>
					<li><a class="nav_bar_button_text_login" href="Registrati.jsp">Sing-Up</a></li>
				</c:if>
				<c:if test = "${user != null}">
				<li><h5 id="welcome" class="nav_text_button">Welcome,${user.getUsername()}!</h5>
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
						<h2>The beach</h2>
						<p>Flamingo Beach Club is renowned throughout the region for
							the quality of the services it offers. Inside you will find in
							fact, wonderful beaches of fine sand, both on the water's edge
							that for the first meters in the water. A large number of
							umbrella free, gazebo and rest areas are at your disposal for
							allow you to take a break between a dive and another. The crystal
							clear water and the biodiversity that our sea hosts they make us
							unique in the whole meridion landscape. come and see with your
							eyes!</p>
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
						<p>The restaurant is available to customers who do not they
							have applied for, but also for foreigners passing by, with a
							small surcharge. We have excellent Chefs and ingredients of the
							highest quality, obviously at km 0 when possible. You can choose
							from several menus, including there is also a vegetarian version
							and one for celiacs, in in order to satisfy the needs of each
							client in the best possible way.</p>
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
						<h2>The Bar</h2>
						<p>The bar, like the restaurant, is open to anyone find
							nearby. It offers a really wide choice, being able to satisfy
							both the placid afternoon openings, and the wide demand for young
							cocktails during the summer evenings. Qualified baristas are
							ready to serve you with cordiality and familiar, while some of
							them will also be able to entertain you with professional barman
							movements.</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="col-sm-6">
		<h3 style="color: white;">AVERAGE MONTHLY AFFLUENCE</h3>
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
		<h3 style="color: white;">CUSTOMER IMPRESSIONS</h3>
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

	<jsp:include page="footer_en.jsp"></jsp:include>


	<script type="text/javascript" src="js/jquery.1.11.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/SmoothScroll.js"></script>
	<script type="text/javascript" src="js/jqBootstrapValidation.js"></script>
	<script type="text/javascript" src="js/contact_me.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>