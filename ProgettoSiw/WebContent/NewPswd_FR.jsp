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
		<header class="heading"> Réinitialiser le password </header>
		<form method="post" action="RegistrationServlet">
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<label class="username">Username :</label>
					</div>
					<div class="col-xs-6">
						<input type="text" name="input_username" id="input_username"
							placeholder="Entrez le username" class="form-control">
					</div>
				</div>
			</div>
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<label class="pass">Nouvelle Password :</label>
					</div>
					<div class="col-xs-6">
						<input type="password" name="input_password" id="input_password"
							placeholder="Entrez le nouveau password" class="form-control">
					</div>
					<div class="col-xs-2">
						<input type="button" id="show_hide" onclick="show()" value="show">
					</div>
				</div>
			</div>
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4"></div>
					<div class="col-xs-6 da_alzare">
						<input type="submit" id="submit" value="Soumettre">
					</div>
				</div>
			</div>
		</form>
	</div>
	<script src="js/global.js"></script>
</body>
</html>