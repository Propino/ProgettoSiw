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
	<div id="prova" class="container">
		<header class="heading">Effettua l'accesso</header>
		<hr></hr>
		<form name="loginForm" method="post" action="LoginServlet">
			<div class="row ">
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
	<!--funzioni per sottomettere i campi premendo "invio"-->
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