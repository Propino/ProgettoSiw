<!Doctype html>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="css/css_register+login+reset.css" />
<script src="js/jquery.1.11.1.js"></script>
<script src="js/global.js"></script>
<link rel='icon' href='img/favicon.ico' type='image/x-icon'/ >
<meta charset="UTF-8">
<title>Flamingo Beach Club</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<div class="container">
		<header class="heading"> Inscription </header>
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
							placeholder="Entrez vous Username" class="form-control"
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
							placeholder="Entrez vous password" class="form-control">
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
							placeholder="Entrez vous e-mail" class="form-control">
					</div>
				</div>
			</div>
			<!--- Per Nome---->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<label class="firstname">Prenom :</label>
					</div>
					<div class="col-xs-6">
						<input type="text" name="input_nome" id="input_nome"
							placeholder="Entrez vous prenom" class="form-control ">
					</div>
				</div>
			</div>
			<!--- Per Cognome---->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<label class="lastname">Nom de famille :</label>
					</div>
					<div class="col-xs-6">
						<input type="text" name="input_cognome" id="input_cognome"
							placeholder="Entrez vous nom de famille"
							class="form-control last">
					</div>
				</div>
			</div>
			<!-----Per Data---->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<label class="username">Date de naissance :</label>
					</div>
					<div class="col-xs-6">
						<input type="date" name="input_compleanno" id="input_compleanno"
							placeholder="Entrez vous date de naissance" class="form-control">
					</div>
				</div>
			</div>
			<!-----Per Telefono---->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<label class="phone">Téléphone :</label>
					</div>
					<div class="col-xs-6">
						<input type="text" name="input_telefono" id="input_telefono"
							placeholder="Entrez vous téléphone" class="form-control">
					</div>
				</div>
			</div>
			<!-----Pulsante Invia---->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<p id="link_login">
							<a href="Login_FR.jsp">Avez-vous déjà un compte? Se connecter!</a>
						</p>
					</div>
					<div class="col-xs-6 da_alzare">
						<input type="button" id="submit" value="Soumettre"
							onclick="validaRegistrazione()">
					</div>
				</div>
			</div>
		</form>
	</div>
	<script src="js/global.js"></script>
</body>
</html>