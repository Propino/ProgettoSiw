<!Doctype html>
<html>
<head>
<link rel='icon' href='favicon.ico' type='image/x-icon'/ >
<link href="css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="css/css_register+login+reset.css" />
<script src="js/jquery.1.11.1.js"></script>
<script src="js/bootstrap.min.js"></script>

<meta charset="UTF-8">
<title>Cambia Password</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<div class="container">
		<header class="heading"> Reimposta la password </header>
		
		<form method="post" action="RegistrationServlet">
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<label class="pass">Password :</label>
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