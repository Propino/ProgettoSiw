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
					<li><a class="nav_text_button" href="LaStruttura_EN.jsp">The structure</a></li>
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

	<div id="img_iniziale">
		<h1>Flamingo</h1>
		<h1>Beach Club</h1>
	</div>
	<!-- Features Section -->
	<div id="features">
		<div class="container">
			<div id="intestazione">
				<h2>The new way to book your place at the beach</h2>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-4">
					<div class="features-item">
						<h3>EASY</h3>
						<img src="img/ombrellone1.png" class="img-responsive" alt="">
						<p>Choose the place you like best from the map.</p>
					</div>
				</div>
				<div class="col-xs-12 col-sm-4">
					<div class="features-item">
						<h3>FAST</h3>
						<img src="img/ombrellone2.jpg" class="img-responsive" alt="">
						<p>Your place by the sea just a click away.</p>
					</div>
				</div>
				<div class="col-xs-12 col-sm-4">
					<div class="features-item">
						<h3>SAFE</h3>
						<img src="img/ombrellone3.jpg" class="img-responsive" alt="">
						<p>Fast and safe payments.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<h2 class=text-center>
		<a href="paginaRecensioni">The reviews of our customers</a>
	</h2>
	<c:if test="${recensioni!=null}">
		<div>
			<div class="rbd-core-ui">
				<div class="rbd-review-slider">
					<div class="rbd-review-container">
						<div class="rbd-review review1.1 rbd-curr">
							<h3 class="rbd-heading">${recensioni.get(0).getUtente().getUsername()}</h3>
							<c:forEach var="i" begin="1"
								end="${recensioni.get(0).getStelle()}">
								<i class="fa fa-star fa-fw" data-icon="star"></i>
							</c:forEach>
							<div class="rbd-content">
								<img class="rbd-gravatar" src="img/avatar.png">${recensioni.get(0).getTesto()}
							</div>
						</div>
						<c:forEach items="${recensioni}" var="value" begin="1">
							<c:if test="${value.getStelle()>3}">
								<div class="rbd-review review1.2 rbd-next">
									<h3 class="rbd-heading">${value.getUtente().getUsername()}</h3>
									<c:forEach var="i" begin="1" end="${value.getStelle()}">
										<i class="fa fa-star fa-fw" data-icon="star"></i>
									</c:forEach>
									<c:forEach var="i" begin="1" end="${5-value.getStelle()}">
										<i class="fa fa-star-o fa-fw" data-icon="star"></i>
									</c:forEach>
									<div class="rbd-content">
										<img class="rbd-gravatar" src="img/avatar.png">${value.getTesto()}
									</div>
								</div>
							</c:if>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</c:if>
	<script>
		let options = {
			'speed' : 3000,
			'pause' : true,
		}
		window
				.addEventListener(
						'DOMContentLoaded',
						function() {
							let slider = document
									.querySelector('.rbd-review-slider');
							let slides = slider.querySelectorAll('.rbd-review');
							let total = slides.length;
							let pause = false;
							function pauseSlide() {
								slider.onmouseleave = function() {
									pause = false;
								};
								slider.onmouseenter = function() {
									pause = true;
								};
								return pause;
							}
							function slide() {
								if (options.pause && pauseSlide())
									return;
								let activeSlide = document
										.querySelector('.rbd-review-slider .rbd-review.rbd-curr');
								let prev, curr, next, soon;
								curr = activeSlide;
								prev = activeSlide.previousElementSibling;
								next = activeSlide.nextElementSibling;
								if (next != null) {
									soon = next.nextElementSibling == null ? slides[0]
											: next.nextElementSibling;
								} else {
									next = slides[0];
									soon = slides[1];
								}
								if (prev != null)
									prev.classList.remove('rbd-prev',
											'rbd-curr', 'rbd-next');
								if (curr != null)
									curr.classList.remove('rbd-prev',
											'rbd-curr', 'rbd-next');
								curr.classList.add('rbd-prev');
								if (next != null)
									next.classList.remove('rbd-prev',
											'rbd-curr', 'rbd-next');
								next.classList.add('rbd-curr');
								if (soon != null)
									soon.classList.remove('rbd-prev',
											'rbd-curr', 'rbd-next');
								soon.classList.add('rbd-next');
							}
							let slideTimer = setInterval(function() {
								slide();
							}, options.speed);
						}, true);
	</script>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<jsp:include page="footer_EN.jsp"></jsp:include>
	<script type="text/javascript" src="js/global.js"></script>
	<script type="text/javascript" src="js/jquery.1.11.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/SmoothScroll.js"></script>
	<script type="text/javascript" src="js/jqBootstrapValidation.js"></script>
	<script type="text/javascript" src="js/main.js"></script>

</body>
</html>