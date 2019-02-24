/*funzione show password in Prenota.jsp per mostrare la password e cambiare il testo del bottone nel popup del login*/
function show_log(){
	if (pass_login_popup.type == "password")
		pass_login_popup.type = "text";
	else
		pass_login_popup.type =  "password";
	
	if ( $('#pass_popup_login_show').hasClass('fa fa-eye')){
		$('#pass_popup_login_show').removeClass('fa fa-eye');
		$('#pass_popup_login_show').addClass('fa fa-eye-slash');
	}
	else{
		$('#pass_popup_login_show').removeClass('fa fa-eye-slash');
		$('#pass_popup_login_show').addClass('fa fa-eye');
	}
}
/*
 * funzione show password in Registrati.jsp e Login.jsp per mostrare la password
 * e cambiare il testo del bottone
 */

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

/* funzione che controlla la data inserita nella pagina prenota */
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
function inviaRecensione() {
	
	
}
/*
 * funzione che controlla tramite chiamata Ajax se in fase di registrazione
 * l'username è già utilizzato
 */
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
/* script per validazione form registrazione con jQuery e Ajax */
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

/* funzione per eseguire il login tramite ajax */
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
					$("#user_log_pop").empty();
					$("#user_log_pop").html("<input type=\"text\" class=\"form-control\" name=\"cardExpiry\" placeholder=\"user\" disabled id=\"user_login_popup\" />");
					$("#pass_log_pop").empty();
					$("#pass_log_pop").html("<input type=\"password\" class=\"form-control\" name=\"cardExpiry\" placeholder=\"pws\" id=\"pass_login_popup\" disabled />");
					
					$("#pulsante").empty();
					$("#pulsante").html("<button class=\"btn btn-success btn-lg btn-block\" type=\"button\" onclick=\"functione_pay()\" id=\"submit_popup_login\">Paga</button>");
				}
			}
		});
	}
}
function prenotazione(d) {
	var dat = d;
	$("#ErrorePagamento").empty();
	if(dat == "") {
		$("#ErrorePagamento").empty();
		$("#ErrorePagamento").html("<font color = red>Devi selezionare una data.</font>");
	}
	var postiSelezionati = [];
	$.each($("input[name='posto']:checked"), function(){            
        postiSelezionati.push($(this).val());
    })
	if(postiSelezionati.length < 1) {
		$("#ErrorePagamento").empty();
		$("#ErrorePagamento").html("<font color = red>Devi selezionare almeno un posto.</font>");
	} else if(dat != "" && postiSelezionati.length >= 1){
		$("#ErrorePagamento").empty();
		var arrayStringa = "";
		for (var i = 0; i < postiSelezionati.length; i++) {
				arrayStringa += postiSelezionati[i] +"|";
			}
		$.ajax({
			type:"POST",
			url: "PrenotaPosti",
			data: {data:dat,posto:arrayStringa},
			success:function(data) {
				$(location).attr('href','ConfirmedPrenotazione.jsp');
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

/* Funzione per mostrare la lista di hotel presente in Contatti.jsp */
function showHotel(){
	if (hotel.style.visibility == "hidden")
		hotel.style.visibility = "visible";
	else
		hotel.style.visibility =  "hidden";
}

/*
 * funziona che tramite chiamata Ajax aggiorna il prezzo totale prendendo il
 * prezzo dal database
 */
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

function functione() {
	document.getElementById('myModal').style.display = "block";
}

function functione_pay() {
	$("#ErrorePagamento").empty();
	document.getElementById('myModal').style.display = "none";
	document.getElementById('myModal2').style.display = "block";
}
// When the user clicks on <span> (x), close the modal
function close_popup_login() {
	document.getElementById('myModal').style.display = "none";
}
function close_popup_payment() {
	document.getElementById('myModal2').style.display = "none";
}



//carica la foto nell'avatar 
$("#profileImage").click(function(e) {
    $("#imageUpload").click();
});

function fasterPreview( uploader ) {
    if ( uploader.files && uploader.files[0] ){
          $('#profileImage').attr('src', 
             window.URL.createObjectURL(uploader.files[0]) );
    }
}

$("#imageUpload").change(function(){
    fasterPreview( this );
});


(function(e){var t,o={className:"autosizejs",append:"",callback:!1,resizeDelay:10},i='<textarea tabindex="-1" style="position:absolute; top:-999px; left:0; right:auto; bottom:auto; border:0; padding: 0; -moz-box-sizing:content-box; -webkit-box-sizing:content-box; box-sizing:content-box; word-wrap:break-word; height:0 !important; min-height:0 !important; overflow:hidden; transition:none; -webkit-transition:none; -moz-transition:none;"/>',n=["fontFamily","fontSize","fontWeight","fontStyle","letterSpacing","textTransform","wordSpacing","textIndent"],s=e(i).data("autosize",!0)[0];s.style.lineHeight="99px","99px"===e(s).css("lineHeight")&&n.push("lineHeight"),s.style.lineHeight="",e.fn.autosize=function(i){return this.length?(i=e.extend({},o,i||{}),s.parentNode!==document.body&&e(document.body).append(s),this.each(function(){function o(){var t,o;"getComputedStyle"in window?(t=window.getComputedStyle(u,null),o=u.getBoundingClientRect().width,e.each(["paddingLeft","paddingRight","borderLeftWidth","borderRightWidth"],function(e,i){o-=parseInt(t[i],10)}),s.style.width=o+"px"):s.style.width=Math.max(p.width(),0)+"px"}function a(){var a={};if(t=u,s.className=i.className,d=parseInt(p.css("maxHeight"),10),e.each(n,function(e,t){a[t]=p.css(t)}),e(s).css(a),o(),window.chrome){var r=u.style.width;u.style.width="0px",u.offsetWidth,u.style.width=r}}function r(){var e,n;t!==u?a():o(),s.value=u.value+i.append,s.style.overflowY=u.style.overflowY,n=parseInt(u.style.height,10),s.scrollTop=0,s.scrollTop=9e4,e=s.scrollTop,d&&e>d?(u.style.overflowY="scroll",e=d):(u.style.overflowY="hidden",c>e&&(e=c)),e+=w,n!==e&&(u.style.height=e+"px",f&&i.callback.call(u,u))}function l(){clearTimeout(h),h=setTimeout(function(){var e=p.width();e!==g&&(g=e,r())},parseInt(i.resizeDelay,10))}var d,c,h,u=this,p=e(u),w=0,f=e.isFunction(i.callback),z={height:u.style.height,overflow:u.style.overflow,overflowY:u.style.overflowY,wordWrap:u.style.wordWrap,resize:u.style.resize},g=p.width();p.data("autosize")||(p.data("autosize",!0),("border-box"===p.css("box-sizing")||"border-box"===p.css("-moz-box-sizing")||"border-box"===p.css("-webkit-box-sizing"))&&(w=p.outerHeight()-p.height()),c=Math.max(parseInt(p.css("minHeight"),10)-w||0,p.height()),p.css({overflow:"hidden",overflowY:"hidden",wordWrap:"break-word",resize:"none"===p.css("resize")||"vertical"===p.css("resize")?"none":"horizontal"}),"onpropertychange"in u?"oninput"in u?p.on("input.autosize keyup.autosize",r):p.on("propertychange.autosize",function(){"value"===event.propertyName&&r()}):p.on("input.autosize",r),i.resizeDelay!==!1&&e(window).on("resize.autosize",l),p.on("autosize.resize",r),p.on("autosize.resizeIncludeStyle",function(){t=null,r()}),p.on("autosize.destroy",function(){t=null,clearTimeout(h),e(window).off("resize",l),p.off("autosize").off(".autosize").css(z).removeData("autosize")}),r())})):this}})(window.jQuery||window.$);

var __slice=[].slice;(function(e,t){var n;n=function(){function t(t,n){var r,i,s,o=this;this.options=e.extend({},this.defaults,n);this.$el=t;s=this.defaults;for(r in s){i=s[r];if(this.$el.data(r)!=null){this.options[r]=this.$el.data(r)}}this.createStars();this.syncRating();this.$el.on("mouseover.starrr","span",function(e){return o.syncRating(o.$el.find("span").index(e.currentTarget)+1)});this.$el.on("mouseout.starrr",function(){return o.syncRating()});this.$el.on("click.starrr","span",function(e){return o.setRating(o.$el.find("span").index(e.currentTarget)+1)});this.$el.on("starrr:change",this.options.change)}t.prototype.defaults={rating:void 0,numStars:5,change:function(e,t){}};t.prototype.createStars=function(){var e,t,n;n=[];for(e=1,t=this.options.numStars;1<=t?e<=t:e>=t;1<=t?e++:e--){n.push(this.$el.append("<span class='glyphicon .fa fa-star-o'></span>"))}return n};t.prototype.setRating=function(e){if(this.options.rating===e){e=void 0}this.options.rating=e;this.syncRating();return this.$el.trigger("starrr:change",e)};t.prototype.syncRating=function(e){var t,n,r,i;e||(e=this.options.rating);if(e){for(t=n=0,i=e-1;0<=i?n<=i:n>=i;t=0<=i?++n:--n){this.$el.find("span").eq(t).removeClass("fa fa-star-o").addClass("fa fa-star")}}if(e&&e<5){for(t=r=e;e<=4?r<=4:r>=4;t=e<=4?++r:--r){this.$el.find("span").eq(t).removeClass("fa fa-star").addClass("fa fa-star-o")}}if(!e){return this.$el.find("span").removeClass("fa fa-star").addClass("fa fa-star-o")}};return t}();return e.fn.extend({starrr:function(){var t,r;r=arguments[0],t=2<=arguments.length?__slice.call(arguments,1):[];return this.each(function(){var i;i=e(this).data("star-rating");if(!i){e(this).data("star-rating",i=new n(e(this),r))}if(typeof r==="string"){return i[r].apply(i,t)}})}})})(window.jQuery,window);$(function(){return $(".starrr").starrr()})

$(function(){

  $('#new-review').autosize({append: "\n"});

  var reviewBox = $('#post-review-box');
  var newReview = $('#new-review');
  var openReviewBtn = $('#open-review-box');
  var closeReviewBtn = $('#close-review-box');
  var ratingsField = $('#ratings-hidden');

  openReviewBtn.click(function(e)
  {
    reviewBox.slideDown(400, function()
      {
        $('#new-review').trigger('autosize.resize');
        newReview.focus();
      });
    openReviewBtn.fadeOut(100);
    closeReviewBtn.show();
  });

  closeReviewBtn.click(function(e)
  {
    e.preventDefault();
    reviewBox.slideUp(300, function()
      {
        newReview.focus();
        openReviewBtn.fadeIn(200);
      });
    closeReviewBtn.hide();
    
  });

  $('.starrr').on('starrr:change', function(e, value){
    ratingsField.val(value);
  });
});