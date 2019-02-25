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

<link rel="stylesheet"
	href="https://cdn.materialdesignicons.com/2.4.85/css/materialdesignicons.min.css">
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
					<li><a href="indexServlet">Home</a></li>
					<li><a class="nav_text_button" href="LaStruttura.jsp">La
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

	<hr>
	<div class="container" style="margin-bottom: 10%; margin-top: 3%;">
		<div class="row">
			<div class="col-sm-3 text-center">
				<h1>${user.getUsername()}</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-3">
				<!--left col-->
				<div class="text-center">
					<c:if test="${user.getImmagineProfilo() != null}">
						<img src="${user.getImmagineProfilo()}" class="avatar img-circle img-thumbnail"
						id="avatar_img" alt="avatar" style="height: 50%; width: 50%;">
					</c:if>
					<c:if test="${user.getImmagineProfilo() == null}">
						<img src="img/avatar.png" class="avatar img-circle img-thumbnail"
						id="avatar_img" alt="avatar" style="height: 50%; width: 50%;">
					</c:if>
						<p>Scegli la tua immagine del profilo </p>
						<input id="search" type="text" placeholder="Cerca con Flikr" />
						<button id="submit" type="button" onclick="JavaScriptFetch()">Cerca</button>
						<div id="outputDiv"></div>
				</div>

				<br>
				<hr></hr>
				<hr></hr>

				<ul class="list-group">
					<li class="list-group-item text-muted">Attività <i
						class="fa fa-dashboard fa-1x"></i></li>
					<li class="list-group-item text-right"><span class="pull-left"><strong>Recensioni</strong></span>
						${recensioni}</li>
				</ul>

			</div>

			<div class="col-sm-9">
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#home">Home</a></li>
					<li><a data-toggle="tab" href="#log">Prenotazioni</a></li>
					<li><a data-toggle="tab" href="#recensioni">Recensioni</a></li>

				</ul>


				<div class="tab-content">
					<div class="tab-pane active" id="home">
						<div class="col-xs-6">
							<label for="first_name"><h4>Nome</h4></label>
							<p class="campi_profilo">${user.getNome()}</p>
						</div>
						<div class="col-xs-6">
							<label for="last_name"><h4>Cognome</h4></label>
							<p class="campi_profilo">${user.getCognome()}</p>
						</div>
						<div class="col-xs-6">
							<label for="mobile"><h4>Telefono</h4></label>
							<p class="campi_profilo">${user.getTelefono()}</p>
						</div>
						<div class="col-xs-6">
							<label for="email"><h4>Email</h4></label>
							<p class="campi_profilo">${user.getEmail()}</p>
						</div>
						<div class="col-xs-6">
							<label for="password"><h4>Password</h4></label>
							<p class="campi_profilo">${user.getPassword()}</p>
						</div>
						<hr>
					</div>
					<div class="tab-pane" id="log">
						<div class="col-xs-3 log_intestazione">
							<ul class="list-group">
								<li class="list-group-item"
									style="font-weight: bold; font-style: italic;">Data</li>
								<c:forEach items="${date}" var="date">
									<li class="list-group-item">${date}</li>
								</c:forEach>
							</ul>
						</div>
						<div class="col-xs-9 log_intestazione">
							<ul class="list-group">
								<li class="list-group-item"
									style="font-weight: bold; font-style: italic;">Ombrelloni
									Prenotati</li>
								<c:forEach items="${posti}" var="posti">
									<li class="list-group-item">Ombrellone N° ${posti}</li>
								</c:forEach>
							</ul>
						</div>

					</div>
					<div class="tab-pane" id="recensioni">
						<div class="col-md-3"></div>

						<div class="col-md-6">
							<div class="well well-sm" style="margin-top: 5%;">
								<div class="text-center">
									<a class="btn btn-success btn-green" href="#reviews-anchor"
										id="open-review-box">Scrivi una recensione!</a>
								</div>
								<div class="row" id="post-review-box" style="display: none;">
									<div class="col-md-12">
										<form accept-charset="UTF-8" action="" method="post">
											<input id="ratings-hidden" name="rating" type="hidden">
											<textarea class="form-control animated" cols="50"
												id="new-review" name="comment"
												placeholder="Inserisci la tua recensione..." rows="5"></textarea>

											<div class="col-md-6">
												<div class="rating-css hover-effect">
													<input type="radio" value="1" id="rating1" name="rating3"
														checked> <label for="rating1" class="mdi mdi-star"></label>
													<input type="radio" value="2" id="rating2" name="rating3">
													<label for="rating2" class="mdi mdi-star"></label> <input
														type="radio" value="3" id="rating3" name="rating3">
													<label for="rating3" class="mdi mdi-star"></label> <input
														type="radio" value="4" id="rating4" name="rating3">
													<label for="rating4" class="mdi mdi-star"></label> <input
														type="radio" value="5" id="rating5" name="rating3">
													<label for="rating5" class="mdi mdi-star"></label>
												</div>
											</div>

											<div class="col-md-6">
												<button class="btn btn-warning btn-red rew"
													id="close-review-box">Chiudi</button>
												<button class="btn btn-success btn-green rew" type="button"
													onclick="inviaRecensione()">Invia!</button>
											</div>
										</form>
									</div>
								</div>
							</div>
							<p id="avviso"></p>
						</div>
						<div class="col-md-3"></div>

						<div class="col-md-12">
							<h2 class=text-center>Le mie recensioni  </h2>
						</div>
						<c:forEach items="${recensioniUtente}" var="value">
							<div class="col-md-12">

								<div class="col-md-1"></div>
								<div class="col-md-10 box_log">
									<ul class="list-group" id="recensione_log">
										<li class="list-group-item text-muted"
											id="intestazione_review"><span class="nome_recensitore">${value.getUtente().getUsername()}</span>
											<div id="stelline">
												<c:forEach begin="1" end="5" varStatus="loop">
													<input type="radio">
													<c:choose>
														<c:when test="${loop.index <= value.getStelle()}">
															<label class="mdi mdi-star piene"></label>
														</c:when>
														<c:otherwise>
															<label class="mdi mdi-star vuote"></label>
														</c:otherwise>
													</c:choose>
												</c:forEach>
											</div></li>
										<li class="list-group-item text-right" id="corpo_review">
											<span class="pull-left">${value.getTesto()}</span>
										</li>
									</ul>
									<hr>
								</div>
								<div class="col-md-1"></div>
							</div>

						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript" src="js/jquery.1.11.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/SmoothScroll.js"></script>
	<script type="text/javascript" src="js/jqBootstrapValidation.js"></script>
	<script type="text/javascript" src="js/contact_me.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
	<script type="text/javascript" src="js/global.js"></script>
</body>
</html>