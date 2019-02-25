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
	<div class="container">
		<!---heading---->
		<header class="heading"> Registrati </header>
		<!---Form starting---->
		<form method="post" action="RegistrationServlet">
			<!-----Per Username---->
			<div class="col-sm-12">
				<div class="row">
					<p id="errore" color="red"></p>
					<div class="col-xs-4">
						<label class="username">Username :</label>
					</div>
					<div class="col-xs-6">
						<input type="text" name="input_username" id="input_username"
							placeholder="Inserisci il tuo Username" class="form-control"
							onInput="controllaUtente()">
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

			<!-----Per Email---->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<label class="mail">E-mail :</label>
					</div>
					<div class="col-xs-6">
						<input type="email" name="input_email" id="input_email"
							placeholder="Inserisci la tua e-mail" class="form-control">
					</div>
				</div>
			</div>
			<!--- Per Nome---->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<label class="firstname">Nome :</label>
					</div>
					<div class="col-xs-6">
						<input type="text" name="input_nome" id="input_nome"
							placeholder="Inserisci il tuo nome" class="form-control ">
					</div>
				</div>
			</div>

			<!--- Per Cognome---->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<label class="lastname">Cognome :</label>
					</div>
					<div class="col-xs-6">
						<input type="text" name="input_cognome" id="input_cognome"
							placeholder="Inserisci il tuo cognome" class="form-control last">
					</div>
				</div>
			</div>


			<!-----Per Data---->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<label class="username">Data di nascita :</label>
					</div>
					<div class="col-xs-6">
						<input type="date" name="input_compleanno" id="input_compleanno"
							placeholder="Inserisci la tua data di nascita"
							class="form-control">
					</div>
				</div>
			</div>

			<!-----Per Telefono---->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<label class="phone">Telefono :</label>
					</div>
					<div class="col-xs-6">
						<input type="text" name="input_telefono" id="input_telefono"
							placeholder="Inserisci il tuo numero di telefono"
							class="form-control">
					</div>
				</div>
			</div>


			<!-----Pulsante Invia---->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<p id="link_login">
							<a href="Login.jsp">Hai già un account? Accedi!</a>
						</p>
					</div>
						<div class="col-xs-6 da_alzare">
							<input type="button" id="submit" value="Invia"
								onclick="validaRegistrazione()">
						</div>
					</div>
				</div>
		</form>
	</div>
	<script src="js/global.js"></script>

</body>
</html>