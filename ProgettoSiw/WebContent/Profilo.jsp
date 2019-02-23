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

			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#nav_collassata">
				<span class="sr-only"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>

			<div class="collapse navbar-collapse" id="nav_collassata">
				<ul class="nav navbar-nav navbar-left">
					<li><a href="index.jsp">Home</a></li>
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
						<li><h5 id="welcome" class="nav_text_button">Benvenuto,${user.getUsername()}!</h5>
						<li><form method="get" action="LogoutServlet">
								<input type="submit" id="logout" value="LOGOUT">
							</form></li>
					</c:if>
				</ul>
			</div>
		</div>
	</nav>
	
	<hr>
	<div class="container" style ="margin-bottom:10%;margin-top:3%;">
		<div class="row">
			<div class="col-sm-3 text-center">
				<h1>${user.getUsername()}</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-3">
				<!--left col-->
				<div class="text-center">
					<img src="img/avatar.png" class="avatar img-circle img-thumbnail" id="avatar_img" alt="avatar" style ="height:50%;width:50%;">
					<input type="file" onchange="newAvatar(this.value)" class="text-center center-block file-upload">
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
				</ul>


				<div class="tab-content">
					<div class="tab-pane active" id="home">
								<div class="col-xs-6">
									<label for="first_name"><h4>Nome</h4></label> <p class="campi_profilo">${user.getNome()}</p>
								</div>
								<div class="col-xs-6">
									<label for="last_name"><h4>Cognome</h4></label> <p class="campi_profilo"> ${user.getCognome()}</p>
								</div>
								<div class="col-xs-6">
									<label for="mobile"><h4>Telefono</h4></label> <p class="campi_profilo"> ${user.getTelefono()}</p>
								</div>
								<div class="col-xs-6">
									<label for="email"><h4>Email</h4></label> <p class="campi_profilo"> ${user.getEmail()}</p>
								</div>
								<div class="col-xs-6">
									<label for="password"><h4>Password</h4></label> <p class="campi_profilo"> ${user.getPassword()}</p>
								</div>
						<hr>
					</div>
					<div class="tab-pane" id="log">	
							<div class="col-xs-3 log_intestazione">
								<ul class="list-group">
								  <li class="list-group-item" style ="font-weight: bold;font-style: italic;">Data</li>
								  <c:forEach items="${date}" var="date">
								  	<li class="list-group-item">${date}</li>
								  </c:forEach> 
								</ul>							
							</div>
							<div class="col-xs-9 log_intestazione">
							<ul class="list-group">
								  <li class="list-group-item" style ="font-weight: bold;font-style: italic;">Ombrelloni Prenotati</li>
								  <c:forEach items="${posti}" var="posti">
								  	<li class="list-group-item">Ombrellone N° ${posti}</li>
								  </c:forEach>
								</ul>
							</div>
							
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