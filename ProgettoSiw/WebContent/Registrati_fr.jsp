
<!Doctype html>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="css/css_register+login+reset.css" />
<script src="js/jquery.1.11.1.js"></script>
<script src="js/bootstrap.min.js"></script>

<meta charset="UTF-8">
<title>Inscription</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<div class="container">
		<!---heading---->
		<header class="heading"> Inscription </header>
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
							placeholder="Entrer votre Username" class="form-control"
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
							placeholder="Entrer votre password" class="form-control">
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
							placeholder="Entrer votre e-mail" class="form-control">
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
							placeholder="Entrer votre Prenom" class="form-control ">
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
							placeholder="Entrer votre Nom de famille"
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
							placeholder="Entrer votre date de naissance" class="form-control">
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
							placeholder="Entrer votre téléphone" class="form-control">
					</div>
				</div>
			</div>


			<!-----Pulsante Invia---->
			<div class="col-sm-12">
				<div class="row">

					<div class="col-xs-8">
						<input type="submit" id="submit_register" value="Invia">
					</div>
					<div class="col-xs-4">
						<p id="link_login">
							<a href="Login_fr.jsp">Avez-vous déjà un compte? Se
								connecter!</a>
						</p>
					</div>
				</div>
			</div>

		</form>
	</div>
	<script src="js/global.js"></script>

</body>
</html>