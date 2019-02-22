
<!Doctype html>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="css/css_register+login+reset.css" />
<script src="js/jquery.1.11.1.js"></script>
<script src="js/bootstrap.min.js"></script>

<meta charset="UTF-8">
<title>Reset Password</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<div class="container">
		<!---heading---->
		<header class="heading"> Réinitialiser le mot de passe </header>
		<!---Form starting---->
		<form method="post" action="RegistrationServlet">

			<!-----Per Email---->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<label class="mail">E-mail :</label>
					</div>
					<div class="col-xs-6">
						<input type="email" name="input_email" id="input_email"
							placeholder="entrez votre adresse email" class="form-control">
					</div>
				</div>
			</div>


			<!-----Pulsante Invia---->
			<div class="col-sm-12">
				<div class="row">

					<div class="col-xs-8">
						<input type="submit" id="submit_register" value="Soumettre">
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