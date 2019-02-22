<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body {
	width: 100%;
	height: 1000px;
}

#primo_livello {
	position: absolute;
	width: 400px;
	height: 400px;
	background-color: red;
	width: 400px;
}

#secondo_livello {
	visibility: hidden;
	position: relative;
	width: 100%;
	height: 100%;
	background-color: black;
	opacity: 0.5;
	z-index: 1;
}

#popup {
	z-index: 2;
	background-color: grey;
	color: black;
	position: relative;
	top: 50%;
	left: 50%;
	border: 2px solid black;
}
</style>
<body>

	<button onclick="show()" id="primo_livello">clicca per il popup</button>
	<div id="secondo_livello">
		<p id="popup">QUESTO è UN POPUP</p>
	</div>
	
	
	
	
	
<script>
function show(){
	document.getElementById("secondo_livello").style.visibility = "visible";
}
</script>
</body>
</html>