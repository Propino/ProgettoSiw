<!------ Include the above in your HEAD tag ---------->

<!Doctype html>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="css/css_register+login+reset.css" />

<meta charset="UTF-8">
<title>Login Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<div class="container">
		<!---heading---->
		<header class="heading">Se connecter</header>
		<hr></hr>
		<form name="loginForm" method="post" action="LoginServlet">
			<!---Form starting---->
			<div class="row ">
				<!-----Per Username---->
				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
							<label class="username">Username :</label>
						</div>
						<div class="col-xs-6">
							<input type="text" name="input_username" id="input_username"
								placeholder="Entrer votre username" class="form-control">
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
				<!-----Pulsante Invia---->
				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
							<p id="link_login">
								<a href="Registrati_fr.jsp">Vous n'avez pas encore de
									compte? Inscrivez-vous!</a>
							</p>
						</div>
						<div class="col-xs-4">
							<input type="submit" id="submit_register" value="Invia">
						</div>
						<div class="col-xs-4">
							<p id="link_login">
								<a href="ResetPswd_fr.jsp">Mot de passe oublié?</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>

	<script src="js/global.js"></script>

</body>
</html>