/*funzione show password in Prenota.jsp per mostrare la password e cambiare il testo del bottone nel popup del login*/
function show_log(){
	
	if (pass_login_popup.type == "password")
		pass_login_popup.type = "text";
	else
		pass_login_popup.type =  "password";
	
	if (pass_popup_login_show.value == 'show')
		pass_popup_login_show.value = 'hide';
	else
		pass_popup_login_show.value =  'show';
}
/*funzione show password in Registrati.jsp  e Login.jsp per mostrare la password e cambiare il testo del bottone*/

function show(){
	
	if (input_password.type == "password")
		input_password.type = "text";
	else
		input_password.type =  "password";
	
	if (show_hide.value == 'show')
		show_hide.value = 'hide';
	else
		show_hide.value =  'show';
}

/*funzione che controlla la data inserita nella pagina prenota */
function validaData() {
	var d = document.getElementById("input_data").value;
	var b = d.split("-");
	if(b[0] != 2019) {
		document.getElementById("erroreData").innerHTML = 'Inserisci una data valida.';
		return false;
	}
	else if((b[0] == 2019) && (b[1] < 5 || b[1] > 9)) {
		document.getElementById("erroreData").innerHTML = 'Inserisci una data valida.';
		return false;
	}
	else if(b[0] == 2019 && b[1] == 5 && b[2] < 15) {
		document.getElementById("erroreData").innerHTML = 'Inserisci una data valida.';
		return false;
	}
	document.getElementById("erroreData").innerHTML ='';
}

/*funzione che controlla tramite chiamata Ajax se in fase di registrazione l'username è già utilizzato*/
function controllaUtente() {
	var user = $("#input_username").val();
	if(user == " ") {
		$("#errore").empty();
	}
	else {
	$.ajax({
		type: "GET",
		url: "GetUtenteServlet" ,
		data: {input_username: user},
		success: function(data) {
			$("#errore").empty();
			$("#errore").html(data);
		}		
	});
	}
}
/* script per validazione form registrazione con jQuery e Ajax*/
function validaRegistrazione() {
	var user = $("#input_username").val();
	var pws = $("#input_password").val();
	var email = $('#input_email').val();
	var nome = $("#input_nome").val();
	var cognome = $("#input_cognome").val();
	var data = new Date($('#input_compleanno').val());
	day = data.getDate();
	month = data.getMonth() + 1;
	year = data.getFullYear();
	var date = year+"-"+month+"-"+day;
	var telefono = $("#input_telefono").val();
	if (user=="" || pws == "" || email=="" || nome == "" || cognome == "" || data == "Invalid Date" || telefono == "") {
		$("#errore").empty();
		$("#errore").html("<font color=red> Devi inserire tutti i campi. </font>");
	}
	else if (year > 2001){
		$("#errore").empty();
		$("#errore").html("<font color=red> Devi inserire una data valida. </font>");	
	}
	else {
		$.ajax({
			type: "POST",
			url: "RegistrationServlet",
			data: {input_username:user,input_password:pws,input_email:email,input_nome:nome,input_cognome:cognome,input_compleanno:date,input_telefono:telefono},
			success: function(data) {
				if(data == "True") {
					$(location).attr('href','ConfirmedReg.jsp');
				} 
				else {
					$("#errore").empty();
					$("#errore").html("<font color=red> Campi non validi e/o email gia utilizzata. </font>");	
				}
			}
		});
	}
	
}

/*funzione per eseguire il login tramite ajax */
function controllaLogin() {
	var user = $('#input_username').val();
	var pws = $('#input_password').val();
	if(user == "" || pws == "") {
		$("#errore").html("<font color=red>Completa tutti i campi.</font>");
	}
	else {
		$.ajax({
			type: "POST",
			url: "LoginServlet",
			data: {input_username: user, input_password: pws},
			success: function(data) {
				if(data == "True") {
					$(location).attr('href','index.jsp');
				} else {
					$("#errore").html(data);
				}
			}
		});
	}
}
function loginPopup() {
	alert("Script chiamato");
	var user = $("#user_login_popup").val();
	var pws = $("#pass_login_popup").val();
	if(user == "" || pws == "") {
		$("#errore").html("Completa tutti i campi");
	} else {
		$.ajax({
			type: "POST",
			url: "LoginServlet",
			data: {input_username: user, input_password: pws},
			success: function(data) {
				if(data != "True") {
					$("#errore").empty();
					$("#errore").html("Username e/o password errate!");
				} else {
					$("#errore").empty();
					$("#errore").html("<font color = green>Login Effettuato!</font>");
					$("#pulsante").empty();
					$("#pulsante").html("<input type='button' onclick='functione_pay()'id='submit_popup_login' value='Paga'>");
				}
			}
		});
	}
}
function controllaCoupon() {
	var totale = $("#tott").val();
	var coupon = $("#input_coupon").val();
	$.ajax({
		type: "POST",
		url: "ValidaCouponServlet",
		data: {tott:totale, input_coupon: coupon},
		success: function(data) {
			$("#scrittaa").empty();
			$("#scrittaa").html(data);
		}
	});
}

/*Funzione per mostrare la lista di hotel presente in Contatti.jsp*/
function showHotel(){
	if (hotel.style.visibility == "hidden")
		hotel.style.visibility = "visible";
	else
		hotel.style.visibility =  "hidden";
}

/*funziona che tramite chiamata Ajax aggiorna il prezzo totale  prendendo il prezzo dal database*/
function check(num_ombrellone) {
		var input = document.getElementById(num_ombrellone).htmlFor;
		if(document.getElementById(input).disabled == false){
		var totale = $("#tott").val();
		
		if (document.getElementById(input).checked == false) {
			$.ajax({
				type : "POST",
				url : "GetPrezzoPosto",
				data : {
					posto : num_ombrellone,
					tott : totale
				},
				success : function(data) {
					$("#scrittaa").empty();
					$("#scrittaa").html(data);
				}
			});
			addInLista(num_ombrellone);
		} 
		else if (document.getElementById(input).checked == true) {
			var totale = $("#tott").val();
			$.ajax({
				type : "GET",
				url : "EliminaPosto",
				data : {
					tot : totale
				},
				success : function(data) {
					$("#scrittaa").empty();
					$("#scrittaa").html(data);
				}
			});
			removeFromLista(num_ombrellone);
	}}
}

function addInLista(num_ombrellone){
	
	var new_ombrello = document.createElement("h3");
	var node = document.createTextNode("Ombrellone N."+num_ombrellone+" prezzo : 15 euro");
	new_ombrello.appendChild(node);
	var element = document.getElementById("lista_ombrelloni");
	element.appendChild(new_ombrello);
}

function removeFromLista(num_ombrellone){
	
	var dim = document.getElementById("lista_ombrelloni").childNodes.length;	
	var umb = document.getElementById("lista_ombrelloni").childNodes;
	
	for (var i=0;i<dim;i++){
		var s = umb[i].textContent;
		if (umb[i].textContent == "Ombrellone N."+num_ombrellone+" prezzo : 15 euro"){
			document.getElementById("lista_ombrelloni").removeChild(umb[i]);
		}
	}
}

function show_alert() {
	alert("Devi eseguire il login prima!");
}
function showCoupon(){
	
	var input = document.getElementById("text_coupon");
	if (input.style.visibility == "hidden")
		input.style.visibility = "visible";
	else
		input.style.visibility =  "hidden";

}
function newAvatar(path) {
	   var name = extractFilename(path);
	   document.getElementById('avatar_img').src = name;

}
function extractFilename(path) {
	  if (path.substr(0, 12) == "C:\\fakepath\\")
	    return path.substr(12); // modern browser
	  var x;
	  x = path.lastIndexOf('/');
	  if (x >= 0) // Unix-based path
	    return path.substr(x+1);
	  x = path.lastIndexOf('\\');
	  if (x >= 0) // Windows-based path
	    return path.substr(x+1);
	  return path; // just the file name
}