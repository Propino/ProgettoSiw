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
	<div class="container">
		<header class="heading"> Reimposta la password </header>
		
		<form method="post" action="RegistrationServlet">
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
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<label class="pass">Nuova Password :</label>
					</div>
					<div class="col-xs-6">
						<input type="password" name="input_password" id="input_password"
							placeholder="Inserisci la nuova password" class="form-control">
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
					</div>

					<div class="col-xs-6 da_alzare">
						<input type="submit" id="submit" value="Invia">
					</div>
				</div>
			</div>
		</form>
		
	</div>
	
	<script src="js/global.js"></script>
</body>
</html>