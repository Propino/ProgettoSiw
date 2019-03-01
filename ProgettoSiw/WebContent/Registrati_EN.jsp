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
		<header class="heading"> Sign in </header>
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
							placeholder="Insert your username" class="form-control"
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
							placeholder="Insert your password" class="form-control">
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
							placeholder="Insert your e-mail" class="form-control">
					</div>
				</div>
			</div>
			<!--- Per Nome---->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<label class="firstname">Name :</label>
					</div>
					<div class="col-xs-6">
						<input type="text" name="input_nome" id="input_nome"
							placeholder="Insert your name" class="form-control ">
					</div>
				</div>
			</div>
			<!--- Per Cognome---->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<label class="lastname">Surname :</label>
					</div>
					<div class="col-xs-6">
						<input type="text" name="input_cognome" id="input_cognome"
							placeholder="Insert your surname" class="form-control last">
					</div>
				</div>
			</div>
			<!-----Per Data---->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<label class="username">Birthday :</label>
					</div>
					<div class="col-xs-6">
						<input type="date" name="input_compleanno" id="input_compleanno"
							placeholder="Insert your birthday"
							class="form-control">
					</div>
				</div>
			</div>
			<!-----Per Telefono---->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<label class="phone">Telephone :</label>
					</div>
					<div class="col-xs-6">
						<input type="text" name="input_telefono" id="input_telefono"
							placeholder="Insert your telephone number"
							class="form-control">
					</div>
				</div>
			</div>
			<!-----Pulsante Invia---->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<p id="link_login">
							<a href="Login_EN.jsp">Do you already have an account? Log in!</a>
						</p>
					</div>
					<div class="col-xs-6 da_alzare">
						<input type="button" id="submit" value="Send"
							onclick="validaRegistrazione()">
					</div>
				</div>
			</div>
		</form>
	</div>
	<script src="js/global.js"></script>
</body>
</html>