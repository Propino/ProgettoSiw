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
<link rel="stylesheet" type="text/css" href="css/css_register+login+reset.css">

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
	<div id="prova" class="container">
		<!---heading---->
		<header class="heading">Effettua l'accesso</header>
		<hr></hr>
		<form name="loginForm" method="post" action="LoginServlet">
			<!---Form starting---->
			<div class="row ">
				<!-----Per Username---->
				<p id="errore" color="red"></p>
				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
							<label class="username">Username :</label>
						</div>
						<div class="col-xs-6">
							<input type="text" name="input_username" id="input_username"
								placeholder="Inserisci l'username" class="form-control">
						</div>
					</div>
				</div>

				<!-----Per Password---->
				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
							<label class="pass">Password :</label>
						</div>
						<div class="col-xs-6">
							<input type="password" name="input_password" id="input_password"
								placeholder="Inserisci la password" class="form-control">
						</div>
						<div class="col-xs-2">
							<input type="button" id="show_hide" onclick="show()" value="show">
						</div>
					</div>
				</div>
				<!-----Pulsante Invia---->
				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
							<p id="link_login">
								<a href="Registrati.jsp">Non hai ancora un account ?
									Registrati!</a>
							</p>
						</div>
						<div class="col-xs-6 da_alzare">
							<input type="button" id="submit" onclick="controllaLogin()"
								value="Invia">
						</div>
						<div class="col-xs-2 da_alzare">
							<p id="link_login">
								<a href="ResetPswd.jsp"> Password dimenticata ?</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
	
	<script>
		var input = document.getElementById("input_password");
		input.addEventListener("keydown", function(event) {
			if (event.keyCode === 13) {
				event.preventDefault();
				document.getElementById("submit").click();
			}
		});
	</script>

	<script>
		var input2 = document.getElementById("input_username");
		input2.addEventListener("keydown", function(event) {
			if (event.keyCode === 13) {
				event.preventDefault();
				document.getElementById("submit").click();
			}
		});
	</script>



</body>
</html>