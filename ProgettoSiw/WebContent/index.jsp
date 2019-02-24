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
						<li><h5 id="welcome" class="nav_text_button">
								<a id="wel" href="ProfiloServlet">Benvenuto,${user.getUsername()}!</a>
							</h5>
						<li><form method="get" action="LogoutServlet">
								<input type="submit" id="logout" value="LOGOUT">
							</form></li>
					</c:if>
				</ul>
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
				<h2>Il nuovo modo di prenotare il tuo posto al mare</h2>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-4">
					<div class="features-item">
						<h3>FACILE</h3>
						<img src="img/ombrellone1.png" class="img-responsive" alt="">
						<p>Scegli direttamente dalla mappa il posto che più ti piace.</p>
					</div>
				</div>
				<div class="col-xs-12 col-sm-4">
					<div class="features-item">
						<h3>VELOCE</h3>
						<img src="img/ombrellone2.jpg" class="img-responsive" alt="">
						<p>Il tuo posto in riva al mare a portata di click.</p>
					</div>
				</div>
				<div class="col-xs-12 col-sm-4">
					<div class="features-item">
						<h3>SICURO</h3>
						<img src="img/ombrellone3.jpg" class="img-responsive" alt="">
						<p>Pagamenti rapidi e sicuri.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<h2>Le recensioni dei nostri clienti</h2>
	<div>
		<div class="rbd-core-ui">
			<div class="rbd-review-slider">
				<div class="rbd-review-container">
					<div class="rbd-review review1.1 rbd-curr">
						<h3 class="rbd-heading">${recensioni.get(0).getUtente().getUsername()}</h3>
						<c:forEach var = "i" begin = "1" end = "${recensioni.get(0).getStelle()}">
						<i class="fa fa-star fa-fw" data-icon="star"></i>
						</c:forEach>
						<div class="rbd-content">
							<img class="rbd-gravatar"
							src="img/avatar.png">${recensioni.get(0).getTesto()}
						</div>
					</div>
					<c:forEach items="${recensioni}" var="value" begin = "1">
						<div class="rbd-review review1.2 rbd-next">
							<h3 class="rbd-heading">${value.getUtente().getUsername()}</h3>
							<c:forEach var = "i" begin = "1" end = "${value.getStelle()}">
							<i class="fa fa-star fa-fw" data-icon="star"></i>
							</c:forEach>
							<div class="rbd-content">
								<img class="rbd-gravatar"
									src="img/avatar.png">${value.getTesto()}
							</div>
						</div>
					 </c:forEach>
				</div>
			</div>
		</div>
	</div>

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
	<jsp:include page="footer.jsp"></jsp:include>

	<script type="text/javascript" src="js/global.js"></script>
	<script type="text/javascript" src="js/jquery.1.11.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/SmoothScroll.js"></script>
	<script type="text/javascript" src="js/jqBootstrapValidation.js"></script>
	<script type="text/javascript" src="js/contact_me.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>