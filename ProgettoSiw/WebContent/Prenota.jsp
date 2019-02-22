<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel='icon' href='img/favicon.ico' type='image/x-icon'/ >
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Flamingo Beach Club</title>
<!-- Bootstrap -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome/css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/mappa.css">


<!-- Font ================================================== -->
<link
	href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Rochester"
	rel="stylesheet">

</head>
<body>

	<nav id="menu" class="navbar navbar-default navbar-fixed-top">
		<div class="container">

			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#nav_collassata">
				<span class="sr-only"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>

			<div class="collapse navbar-collapse" id="nav_collassata">
				<ul class="nav navbar-nav navbar-left">
					<li class="nav_text_button"><a href="index.jsp">Home</a></li>
					<li><a class="nav_text_button" href="LaStruttura.jsp">La
							Struttura</a></li>
					<li class="active"><a href="#">Prenota</a></li>
					<li><a class="nav_text_button" href="Contatti.jsp">Contatti</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<c:if test="${user == null}">
						<li><a class="nav_bar_button_text_login" href="Login.jsp">Login</a></li>
						<li><a class="nav_bar_button_text_login"
							href="Registrati.jsp">Registrati</a></li>
					</c:if>
					<c:if test="${user != null}">
						<li><h5 id="welcome" class="nav_text_button">
								<a id="wel" href="Profilo.jsp">Benvenuto,${user.getUsername()}!</a>
							</h5>
						<li><form method="get" action="LogoutServlet">
								<input type="submit" id="logout" value="LOGOUT">
							</form></li>
					</c:if>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
	</nav>


	<div class="row" style="margin-right: 0px">
		<div class="col-sm-1"></div>
		<div class="col-sm-5">
			<div id="scritta_e_data_su_mappa">
				<h2 id="scritta_in_cima_alla_mappa">Scegli il tuo posto</h2>
				<form method="Get" action="MappaServlet"
					onsubmit="return validaData()">
					<div id="back_data_submit_prenota">
						<input type="date" name="input_data" id="input_data"
							class="form-control" required>
						<p style="display: inline; color: red; margin-left: 1%;"
							id="erroreData"></p>
						<input type="submit" value="Cerca" id="submit_button_data_mappa"
							href="MappaServlet">
					</div>
				</form>
				<c:if test="${dataview != null}">
					<p id="data_Selezionata">Data selezionata: ${dataview}</p>
				</c:if>
			</div>
		</div>
	</div>
	<div class="row" style="margin-right: 0px">
		<div class="col-sm-1"></div>
		<form>
			<div class="col-sm-5">
				<div id="mappa_prenotabile" name="mappa_prenotabile">
					<div class="ombrelloni">
						<ol>
							<li>
								<ol class="seats">
									<c:if test="${posti[1] != null}">
										<li class="seat"><input type="checkbox" disabled id="P1"
											name="posto" value="1"> <label for="P1"
											class="checker" id="1" onclick="check(this.id)">1</label></li>
									</c:if>
									<c:if test="${posti[1] == null}">
										<li class="seat"><input type="checkbox" id="P1"
											name="posto" value="1"> <label for="P1"
											class="checker" id="1" onclick="check(this.id)">1</label></li>
									</c:if>
									<c:if test="${posti[2] != null}">
										<li class="seat"><input type="checkbox" disabled id="P1"
											name="posto" value="2"> <label for="P2"
											class="checker" id="2" onclick="check(this.id)">2</label></li>
									</c:if>
									<c:if test="${posti[2] == null}">
										<li class="seat"><input type="checkbox" id="P2"
											name="posto" value="2"> <label for="P2"
											class="checker" id="2" onclick="check(this.id)">2</label></li>
									</c:if>
									<c:if test="${posti[3] != null}">
										<li class="seat"><input type="checkbox" disabled id="P3"
											name="posto" value="3"> <label for="P3"
											class="checker" id="3" onclick="check(this.id)">3</label></li>
									</c:if>
									<c:if test="${posti[3] == null}">
										<li class="seat"><input type="checkbox" id="P3"
											name="posto" value="3"> <label for="P3"
											class="checker" id="3" onclick="check(this.id)">3</label></li>
									</c:if>
									<c:if test="${posti[4] != null}">
										<li class="seat"><input type="checkbox" disabled id="P4"
											name="posto" value="4"> <label for="P4"
											class="checker" id="4" onclick="check(this.id)">4</label></li>
									</c:if>
									<c:if test="${posti[4] == null}">
										<li class="seat"><input type="checkbox" id="P4"
											name="posto" value="4"> <label for="P4"
											class="checker" id="4" onclick="check(this.id)">4</label></li>
									</c:if>
									<c:if test="${posti[5] != null}">
										<li class="seat"><input type="checkbox" disabled id="P5"
											name="posto" value="5"> <label for="P5"
											class="checker" id="5" onclick="check(this.id)">5</label></li>
									</c:if>
									<c:if test="${posti[5] == null}">
										<li class="seat"><input type="checkbox" id="P5"
											name="posto" value="5"> <label for="P5"
											class="checker" id="5" onclick="check(this.id)">5</label></li>
									</c:if>
									<c:if test="${posti[6] != null}">
										<li class="seat"><input type="checkbox" disabled id="P6"
											name="posto" value="6"> <label for="P6"
											class="checker" id="6" onclick="check(this.id)">6</label></li>
									</c:if>
									<c:if test="${posti[6] == null}">
										<li class="seat"><input type="checkbox" id="P6"
											name="posto" value="6"> <label for="P6"
											class="checker" id="6" onclick="check(this.id)">6</label></li>
									</c:if>
									<c:if test="${posti[7] != null}">
										<li class="seat"><input type="checkbox" disabled id="P7"
											name="posto" value="7"> <label for="P7"
											class="checker" id="7" onclick="check(this.id)">7</label></li>
									</c:if>
									<c:if test="${posti[7] == null}">
										<li class="seat"><input type="checkbox" id="P7"
											name="posto" value="7"> <label for="P7"
											class="checker" id="7" onclick="check(this.id)">7</label></li>
									</c:if>
									<c:if test="${posti[8] != null}">
										<li class="seat"><input type="checkbox" disabled id="P8"
											name="posto" value="8"> <label for="P8"
											class="checker" id="8" onclick="check(this.id)">8</label></li>
									</c:if>
									<c:if test="${posti[8] == null}">
										<li class="seat"><input type="checkbox" id="P8"
											name="posto" value="8"> <label for="P8"
											class="checker" id="8" onclick="check(this.id)">8</label></li>
									</c:if>
								</ol>
							</li>
							<li>
								<ol class="seats">
									<c:if test="${posti[9] != null}">
										<li class="seat"><input type="checkbox" disabled id="P9"
											name="posto" value="9"> <label for="P9"
											class="checker" id="9" onclick="check(this.id)">9</label></li>
									</c:if>
									<c:if test="${posti[9] == null}">
										<li class="seat"><input type="checkbox" id="P9"
											name="posto" value="9"> <label for="P9"
											class="checker" id="9" onclick="check(this.id)">9</label></li>
									</c:if>
									<c:if test="${posti[10] != null}">
										<li class="seat"><input type="checkbox" disabled id="P10"
											name="posto" value="10"> <label for="P10"
											class="checker" id="10" onclick="check(this.id)">10</label></li>
									</c:if>
									<c:if test="${posti[10] == null}">
										<li class="seat"><input type="checkbox" id="P10"
											name="posto" value="10"> <label for="P10"
											class="checker" id="10" onclick="check(this.id)">10</label></li>
									</c:if>
									<c:if test="${posti[11] != null}">
										<li class="seat"><input type="checkbox" disabled id="P11"
											name="posto" value="11"> <label for="P11"
											class="checker" id="11" onclick="check(this.id)">11</label></li>
									</c:if>
									<c:if test="${posti[11] == null}">
										<li class="seat"><input type="checkbox" id="P11"
											name="posto" value="11"> <label for="P11"
											class="checker" id="11" onclick="check(this.id)">11</label></li>
									</c:if>
									<c:if test="${posti[12] != null}">
										<li class="seat"><input type="checkbox" disabled id="P12"
											name="posto" value="12"> <label for="P12"
											class="checker" id="12" onclick="check(this.id)">12</label></li>
									</c:if>
									<c:if test="${posti[12] == null}">
										<li class="seat"><input type="checkbox" id="P12"
											name="posto" value="12"> <label for="P12"
											class="checker" id="12" onclick="check(this.id)">12</label></li>
									</c:if>
									<c:if test="${posti[13] != null}">
										<li class="seat"><input type="checkbox" disabled id="P13"
											name="posto" value="13"> <label for="P13"
											class="checker" id="13" onclick="check(this.id)">13</label></li>
									</c:if>
									<c:if test="${posti[13] == null}">
										<li class="seat"><input type="checkbox" id="P13"
											name="posto" value="13"> <label for="P13"
											class="checker" id="13" onclick="check(this.id)">13</label></li>
									</c:if>
									<c:if test="${posti[14] != null}">
										<li class="seat"><input type="checkbox" disabled id="P14"
											name="posto" value="14"> <label for="P14"
											class="checker" id="14" onclick="check(this.id)">14</label></li>
									</c:if>
									<c:if test="${posti[14] == null}">
										<li class="seat"><input type="checkbox" id="P14"
											name="posto" value="14"> <label for="P14"
											class="checker" id="14" onclick="check(this.id)">14</label></li>
									</c:if>
									<c:if test="${posti[15] != null}">
										<li class="seat"><input type="checkbox" disabled id="P15"
											name="posto" value="15"> <label for="P15"
											class="checker" id="15" onclick="check(this.id)">15</label></li>
									</c:if>
									<c:if test="${posti[15] == null}">
										<li class="seat"><input type="checkbox" id="P15"
											name="posto" value="15"> <label for="P15"
											class="checker" id="15" onclick="check(this.id)">15</label></li>
									</c:if>
									<c:if test="${posti[16] != null}">
										<li class="seat"><input type="checkbox" disabled id="P16"
											name="posto" value="16"> <label for="P16"
											class="checker" id="16" onclick="check(this.id)">16</label></li>
									</c:if>
									<c:if test="${posti[16] == null}">
										<li class="seat"><input type="checkbox" id="P16"
											name="posto" value="16"> <label for="P16"
											class="checker" id="16" onclick="check(this.id)">16</label></li>
									</c:if>
								</ol>
							</li>
							<li>
								<ol class="seats">
									<c:if test="${posti[17] != null}">
										<li class="seat"><input type="checkbox" disabled id="P17"
											name="posto" value="17"> <label for="P17"
											class="checker" id="17" onclick="check(this.id)">17</label></li>
									</c:if>
									<c:if test="${posti[17] == null}">
										<li class="seat"><input type="checkbox" id="P17"
											name="posto" value="17"> <label for="P17"
											class="checker" id="17" onclick="check(this.id)">17</label></li>
									</c:if>
									<c:if test="${posti[18] != null}">
										<li class="seat"><input type="checkbox" disabled id="P18"
											name="posto" value="18"> <label for="P18"
											class="checker" id="18" onclick="check(this.id)">18</label></li>
									</c:if>
									<c:if test="${posti[18] == null}">
										<li class="seat"><input type="checkbox" id="P18"
											name="posto" value="18"> <label for="P18"
											class="checker" id="18" onclick="check(this.id)">18</label></li>
									</c:if>
									<c:if test="${posti[19] != null}">
										<li class="seat"><input type="checkbox" disabled id="P19"
											name="posto" value="19"> <label for="P19"
											class="checker" id="19" onclick="check(this.id)">19</label></li>
									</c:if>
									<c:if test="${posti[19] == null}">
										<li class="seat"><input type="checkbox" id="P19"
											name="posto" value="19"> <label for="P19"
											class="checker" id="19" onclick="check(this.id)">19</label></li>
									</c:if>
									<c:if test="${posti[20] != null}">
										<li class="seat"><input type="checkbox" disabled id="P20"
											name="posto" value="20"> <label for="P20"
											class="checker" id="20" onclick="check(this.id)">20</label></li>
									</c:if>
									<c:if test="${posti[20] == null}">
										<li class="seat"><input type="checkbox" id="P20"
											name="posto" value="20"> <label for="P20"
											class="checker" id="20" onclick="check(this.id)">20</label></li>
									</c:if>
									<c:if test="${posti[21] != null}">
										<li class="seat"><input type="checkbox" disabled id="P21"
											name="posto" value="21"> <label for="P21"
											class="checker" id="21" onclick="check(this.id)">21</label></li>
									</c:if>
									<c:if test="${posti[21] == null}">
										<li class="seat"><input type="checkbox" id="P21"
											name="posto" value="21"> <label for="P21"
											class="checker" id="21" onclick="check(this.id)">21</label></li>
									</c:if>
									<c:if test="${posti[22] != null}">
										<li class="seat"><input type="checkbox" disabled id="P22"
											name="posto" value="22"> <label for="P22"
											class="checker" id="22" onclick="check(this.id)">22</label></li>
									</c:if>
									<c:if test="${posti[22] == null}">
										<li class="seat"><input type="checkbox" id="P22"
											name="posto" value="22"> <label for="P22"
											class="checker" id="22" onclick="check(this.id)">22</label></li>
									</c:if>
									<c:if test="${posti[23] != null}">
										<li class="seat"><input type="checkbox" disabled id="P23"
											name="posto" value="23"> <label for="P23"
											class="checker" id="23" onclick="check(this.id)">23</label></li>
									</c:if>
									<c:if test="${posti[23] == null}">
										<li class="seat"><input type="checkbox" id="P23"
											name="posto" value="23"> <label for="P23"
											class="checker" id="23" onclick="check(this.id)">23</label></li>
									</c:if>
									<c:if test="${posti[24] != null}">
										<li class="seat"><input type="checkbox" disabled id="P24"
											name="posto" value="24"> <label for="P24"
											class="checker" id="24" onclick="check(this.id)">24</label></li>
									</c:if>
									<c:if test="${posti[24] == null}">
										<li class="seat"><input type="checkbox" id="24"
											name="posto" value="24"> <label for="P24"
											class="checker" id="24" onclick="check(this.id)">24</label></li>
									</c:if>
								</ol>
							</li>
							<li>
								<ol class="seats">
									<c:if test="${posti[25] != null}">
										<li class="seat"><input type="checkbox" disabled id="P25"
											name="posto" value="25"> <label for="P25"
											class="checker" id="25" onclick="check(this.id)">25</label></li>
									</c:if>
									<c:if test="${posti[25] == null}">
										<li class="seat"><input type="checkbox" id="P25"
											name="posto" value="25"> <label for="P25"
											class="checker" id="25" onclick="check(this.id)">25</label></li>
									</c:if>
									<c:if test="${posti[26] != null}">
										<li class="seat"><input type="checkbox" disabled id="P26"
											name="posto" value="26"> <label for="P26"
											class="checker" id="26" onclick="check(this.id)">26</label></li>
									</c:if>
									<c:if test="${posti[26] == null}">
										<li class="seat"><input type="checkbox" id="P26"
											name="posto" value="26"> <label for="P26"
											class="checker" id="26" onclick="check(this.id)">26</label></li>
									</c:if>
									<c:if test="${posti[27] != null}">
										<li class="seat"><input type="checkbox" disabled id="P27"
											name="posto" value="27"> <label for="P27"
											class="checker" id="27" onclick="check(this.id)">27</label></li>
									</c:if>
									<c:if test="${posti[27] == null}">
										<li class="seat"><input type="checkbox" id="P27"
											name="posto" value="27"> <label for="P27"
											class="checker" id="27" onclick="check(this.id)">27</label></li>
									</c:if>
									<c:if test="${posti[28] != null}">
										<li class="seat"><input type="checkbox" disabled id="P28"
											name="posto" value="28"> <label for="P28"
											class="checker" id="28" onclick="check(this.id)">28</label></li>
									</c:if>
									<c:if test="${posti[28] == null}">
										<li class="seat"><input type="checkbox" id="P28"
											name="posto" value="28"> <label for="P28"
											class="checker" id="28" onclick="check(this.id)">28</label></li>
									</c:if>
									<c:if test="${posti[29] != null}">
										<li class="seat"><input type="checkbox" disabled id="P29"
											name="posto" value="29"> <label for="P29"
											class="checker" id="29" onclick="check(this.id)">29</label></li>
									</c:if>
									<c:if test="${posti[29] == null}">
										<li class="seat"><input type="checkbox" id="P29"
											name="posto" value="29"> <label for="P29"
											class="checker" id="29" onclick="check(this.id)">29</label></li>
									</c:if>
									<c:if test="${posti[30] != null}">
										<li class="seat"><input type="checkbox" disabled id="P30"
											name="posto" value="30"> <label for="P30"
											class="checker" id="30" onclick="check(this.id)">30</label></li>
									</c:if>
									<c:if test="${posti[30] == null}">
										<li class="seat"><input type="checkbox" id="P30"
											name="posto" value="30"> <label for="P30"
											class="checker" id="30" onclick="check(this.id)">30</label></li>
									</c:if>
									<c:if test="${posti[31] != null}">
										<li class="seat"><input type="checkbox" disabled id="P31"
											name="posto" value="31"> <label for="P31"
											class="checker" id="31" onclick="check(this.id)">31</label></li>
									</c:if>
									<c:if test="${posti[31] == null}">
										<li class="seat"><input type="checkbox" id="P31"
											name="posto" value="31"> <label for="P31"
											class="checker" id="31" onclick="check(this.id)">31</label></li>
									</c:if>
									<c:if test="${posti[32] != null}">
										<li class="seat"><input type="checkbox" disabled id="P32"
											name="posto" value="32"> <label for="P32"
											class="checker" id="32" onclick="check(this.id)">32</label></li>
									</c:if>
									<c:if test="${posti[32] == null}">
										<li class="seat"><input type="checkbox" id="P32"
											name="posto" value="32"> <label for="P32"
											class="checker" id="32" onclick="check(this.id)">32</label></li>
									</c:if>
								</ol>
							</li>
							<li><ol class="seats">
									<c:if test="${posti[33] != null}">
										<li class="seat"><input type="checkbox" disabled id="P33"
											name="posto" value="33"> <label for="P33"
											class="checker" id="33" onclick="check(this.id)">33</label></li>
									</c:if>
									<c:if test="${posti[33] == null}">
										<li class="seat"><input type="checkbox" id="P33"
											name="posto" value="33"> <label for="P33"
											class="checker" id="33" onclick="check(this.id)">33</label></li>
									</c:if>
									<c:if test="${posti[34] != null}">
										<li class="seat"><input type="checkbox" disabled id="P34"
											name="posto" value="34"> <label for="P34"
											class="checker" id="34" onclick="check(this.id)">34</label></li>
									</c:if>
									<c:if test="${posti[34] == null}">
										<li class="seat"><input type="checkbox" id="P34"
											name="posto" value="34"> <label for="P34"
											class="checker" id="34" onclick="check(this.id)">34</label></li>
									</c:if>
									<c:if test="${posti[35] != null}">
										<li class="seat"><input type="checkbox" disabled id="P35"
											name="posto" value="35"> <label for="P35"
											class="checker" id="35" onclick="check(this.id)">35</label></li>
									</c:if>
									<c:if test="${posti[35] == null}">
										<li class="seat"><input type="checkbox" id="P35"
											name="posto" value="35"> <label for="P35"
											class="checker" id="35" onclick="check(this.id)">35</label></li>
									</c:if>
									<c:if test="${posti[36] != null}">
										<li class="seat"><input type="checkbox" disabled id="P36"
											name="posto" value="36"> <label for="P36"
											class="checker" id="36" onclick="check(this.id)">36</label></li>
									</c:if>
									<c:if test="${posti[36] == null}">
										<li class="seat"><input type="checkbox" id="P36"
											name="posto" value="36"> <label for="P36"
											class="checker" id="36" onclick="check(this.id)">36</label></li>
									</c:if>
									<c:if test="${posti[37] != null}">
										<li class="seat"><input type="checkbox" disabled id="P37"
											name="posto" value="37"> <label for="P37"
											class="checker" id="37" onclick="check(this.id)">37</label></li>
									</c:if>
									<c:if test="${posti[37] == null}">
										<li class="seat"><input type="checkbox" id="P37"
											name="posto" value="37"> <label for="P37"
											class="checker" id="37" onclick="check(this.id)">37</label></li>
									</c:if>
									<c:if test="${posti[38] != null}">
										<li class="seat"><input type="checkbox" disabled id="P38"
											name="posto" value="38"> <label for="P38"
											class="checker" id="38" onclick="check(this.id)">38</label></li>
									</c:if>
									<c:if test="${posti[38] == null}">
										<li class="seat"><input type="checkbox" id="P38"
											name="posto" value="38"> <label for="P38"
											class="checker" id="38" onclick="check(this.id)">38</label></li>
									</c:if>
									<c:if test="${posti[39] != null}">
										<li class="seat"><input type="checkbox" disabled id="P39"
											name="posto" value="39"> <label for="P39"
											class="checker" id="39" onclick="check(this.id)">39</label></li>
									</c:if>
									<c:if test="${posti[39] == null}">
										<li class="seat"><input type="checkbox" id="P39"
											name="posto" value="39"> <label for="P39"
											class="checker" id="39" onclick="check(this.id)">39</label></li>
									</c:if>
									<c:if test="${posti[40] != null}">
										<li class="seat"><input type="checkbox" disabled id="P40"
											name="posto" value="40"> <label for="P40"
											class="checker" id="40" onclick="check(this.id)">40</label></li>
									</c:if>
									<c:if test="${posti[40] == null}">
										<li class="seat"><input type="checkbox" id="P40"
											name="posto" value="40"> <label for="P40"
											class="checker" id="40" onclick="check(this.id)">40</label></li>
									</c:if>
								</ol></li>
							<li><ol class="seats">
									<c:if test="${posti[41] != null}">
										<li class="seat"><input type="checkbox" disabled id="P41"
											name="posto" value="41"> <label for="P41"
											class="checker" id="41" onclick="check(this.id)">41</label></li>
									</c:if>
									<c:if test="${posti[41] == null}">
										<li class="seat"><input type="checkbox" id="P41"
											name="posto" value="41"> <label for="P41"
											class="checker" id="41" onclick="check(this.id)">41</label></li>
									</c:if>
									<c:if test="${posti[42] != null}">
										<li class="seat"><input type="checkbox" disabled id="P42"
											name="posto" value="42"> <label for="P42"
											class="checker" id="42" onclick="check(this.id)">42</label></li>
									</c:if>
									<c:if test="${posti[42] == null}">
										<li class="seat"><input type="checkbox" id="P42"
											name="posto" value="42"> <label for="P42"
											class="checker" id="42" onclick="check(this.id)">42</label></li>
									</c:if>
									<c:if test="${posti[43] != null}">
										<li class="seat"><input type="checkbox" disabled id="P43"
											name="posto" value="43"> <label for="P43"
											class="checker" id="43" onclick="check(this.id)">43</label></li>
									</c:if>
									<c:if test="${posti[43] == null}">
										<li class="seat"><input type="checkbox" id="P43"
											name="posto" value="43"> <label for="P43"
											class="checker" id="43" onclick="check(this.id)">43</label></li>
									</c:if>
									<c:if test="${posti[44] != null}">
										<li class="seat"><input type="checkbox" disabled id="P44"
											name="posto" value="44"> <label for="P44"
											class="checker" id="44" onclick="check(this.id)">44</label></li>
									</c:if>
									<c:if test="${posti[44] == null}">
										<li class="seat"><input type="checkbox" id="P44"
											name="posto" value="44"> <label for="P44"
											class="checker" id="44" onclick="check(this.id)">44</label></li>
									</c:if>
									<c:if test="${posti[45] != null}">
										<li class="seat"><input type="checkbox" disabled id="P45"
											name="posto" value="45"> <label for="P45"
											class="checker" id="45" onclick="check(this.id)">45</label></li>
									</c:if>
									<c:if test="${posti[45] == null}">
										<li class="seat"><input type="checkbox" id="P45"
											name="posto" value="45"> <label for="P45"
											class="checker" id="45" onclick="check(this.id)">45</label></li>
									</c:if>
									<c:if test="${posti[46] != null}">
										<li class="seat"><input type="checkbox" disabled id="P46"
											name="posto" value="46"> <label for="P46"
											class="checker" id="46" onclick="check(this.id)">46</label></li>
									</c:if>
									<c:if test="${posti[46] == null}">
										<li class="seat"><input type="checkbox" id="P46"
											name="posto" value="46"> <label for="P46"
											class="checker" id="46" onclick="check(this.id)">46</label></li>
									</c:if>
									<c:if test="${posti[47] != null}">
										<li class="seat"><input type="checkbox" disabled id="P47"
											name="posto" value="47"> <label for="P47"
											class="checker" id="47" onclick="check(this.id)">47</label></li>
									</c:if>
									<c:if test="${posti[47] == null}">
										<li class="seat"><input type="checkbox" id="P47"
											name="posto" value="47"> <label for="P47"
											class="checker" id="47" onclick="check(this.id)">47</label></li>
									</c:if>
									<c:if test="${posti[48] != null}">
										<li class="seat"><input type="checkbox" disabled id="P48"
											name="posto" value="48"> <label for="P48"
											class="checker" id="48" onclick="check(this.id)">48</label></li>
									</c:if>
									<c:if test="${posti[48] == null}">
										<li class="seat"><input type="checkbox" id="P48"
											name="posto" value="48"> <label for="P48"
											class="checker" id="48" onclick="check(this.id)">48</label></li>
									</c:if>
								</ol></li>
							<li><ol class="seats">
									<c:if test="${posti[49] != null}">
										<li class="seat"><input type="checkbox" disabled id="P49"
											name="posto" value="49"> <label for="P49"
											class="checker" id="49" onclick="check(this.id)">49</label></li>
									</c:if>
									<c:if test="${posti[49] == null}">
										<li class="seat"><input type="checkbox" id="P49"
											name="posto" value="49"> <label for="P49"
											class="checker" id="49" onclick="check(this.id)">49</label></li>
									</c:if>
									<c:if test="${posti[50] != null}">
										<li class="seat"><input type="checkbox" disabled id="P50"
											name="posto" value="50"> <label for="P50"
											class="checker" id="50" onclick="check(this.id)">50</label></li>
									</c:if>
									<c:if test="${posti[50] == null}">
										<li class="seat"><input type="checkbox" id="P50"
											name="posto" value="50"> <label for="P50"
											class="checker" id="50" onclick="check(this.id)">50</label></li>
									</c:if>
									<c:if test="${posti[51] != null}">
										<li class="seat"><input type="checkbox" disabled id="P51"
											name="posto" value="51"> <label for="P51"
											class="checker" id="51" onclick="check(this.id)">51</label></li>
									</c:if>
									<c:if test="${posti[51] == null}">
										<li class="seat"><input type="checkbox" id="P51"
											name="posto" value="51"> <label for="P51"
											class="checker" id="51" onclick="check(this.id)">51</label></li>
									</c:if>
									<c:if test="${posti[52] != null}">
										<li class="seat"><input type="checkbox" disabled id="P52"
											name="posto" value="52"> <label for="P52"
											class="checker" id="52" onclick="check(this.id)">52</label></li>
									</c:if>
									<c:if test="${posti[52] == null}">
										<li class="seat"><input type="checkbox" id="P52"
											name="posto" value="52"> <label for="P52"
											class="checker" id="52" onclick="check(this.id)">52</label></li>
									</c:if>
									<c:if test="${posti[53] != null}">
										<li class="seat"><input type="checkbox" disabled id="P53"
											name="posto" value="53"> <label for="P53"
											class="checker" id="53" onclick="check(this.id)">53</label></li>
									</c:if>
									<c:if test="${posti[53] == null}">
										<li class="seat"><input type="checkbox" id="P53"
											name="posto" value="53"> <label for="P53"
											class="checker" id="53" onclick="check(this.id)">53</label></li>
									</c:if>
									<c:if test="${posti[54] != null}">
										<li class="seat"><input type="checkbox" disabled id="P54"
											name="posto" value="54"> <label for="P54"
											class="checker" id="54" onclick="check(this.id)">54</label></li>
									</c:if>
									<c:if test="${posti[54] == null}">
										<li class="seat"><input type="checkbox" id="P54"
											name="posto" value="54"> <label for="P54"
											class="checker" id="54" onclick="check(this.id)">54</label></li>
									</c:if>
									<c:if test="${posti[55] != null}">
										<li class="seat"><input type="checkbox" disabled id="P55"
											name="posto" value="55"> <label for="P55"
											class="checker" id="55" onclick="check(this.id)">55</label></li>
									</c:if>
									<c:if test="${posti[55] == null}">
										<li class="seat"><input type="checkbox" id="P55"
											name="posto" value="55"> <label for="P55"
											class="checker" id="55" onclick="check(this.id)">55</label></li>
									</c:if>
									<c:if test="${posti[56] != null}">
										<li class="seat"><input type="checkbox" disabled id="P56"
											name="posto" value="56"> <label for="P56"
											class="checker" id="56" onclick="check(this.id)">56</label></li>
									</c:if>
									<c:if test="${posti[56] == null}">
										<li class="seat"><input type="checkbox" id="P56"
											name="posto" value="56"> <label for="P56"
											class="checker" id="56" onclick="check(this.id)">56</label></li>
									</c:if>
								</ol></li>
						</ol>
					</div>

				</div>
			</div>
			<div class="col-sm-1"></div>
			<div class="col-sm-4" id="column_payment">
				<div id="payment">
					<h3 style="text-align: center">LA TUA PRENOTAZIONE &nbsp :</h3>
					<hr></hr>
					<div id="lista_ombrelloni"></div>
				</div>
				<div id="scrittaa">
					<p id="coupon">Hai un coupon ?</p>
					<input type="text" name="input_coupon" id="input_coupon"
						placeholder="Inserisci il codice coupon" class="form-control">
					<input type="button" value="Inserisci" id="button_input_coupon"
						onclick="controllaCoupon()"> <br>
					<h3>Totale &nbsp : &nbsp &#8364;0</h3>
					<input type=text style="display: none" id=tott name=tott value=0
						disabled>

					<c:if test="${user != null}">
						<input type="button" id="prosegui_pagamento"
							onclick="functione_pay()" value="Prosegui con il Pagamento">
					</c:if>
					<c:if test="${user == null}">
						<input type="button" onclick="functione()" id="prosegui_pagamento"
							value="Prosegui con il Pagamento">
					</c:if>
				</div>
			</div>
		</form>
	</div>

	<!-- The Modal -->
	<div id="myModal" class="modal">
		<!-- Modal content -->
		<div class="modal-content">
			<span class="close">&times;</span>
			<p>Devi essere loggato prima!</p>
			<h5>Username :</h5>
			<input type="text" placeholder="inserisci il tuo username">
			<h5>Password :</h5>
			<input type="password" id="pass_login_popup"
				placeholder="inserisci la tua password"> <input
				type="button" id="pass_popup_login_show" onclick="show_log()"
				value="show"> <input type="button" onclick="functione_pay()"
				id="submit_popup_login" value="Invia">
			<p id="link_login">
				<a href="Registrati.jsp">Non hai ancora un account ? Registrati!</a>
			</p>

		</div>
	</div>
	<div id="myModal2" class="modal2">
		<!-- Modal content -->
		<div class="modal-content2">
			<span class="close">&times;</span>

			<div class="container">
				<div class="row">
					<!-- You can make it whatever width you want. I'm making it full width
on <= small devices and 4/12 page width on >= medium devices -->
					<div class="col-xs-12 col-md-4">


						<!-- CREDIT CARD FORM STARTS HERE -->
						<div class="panel panel-default credit-card-box">
							<div class="panel-heading display-table">
								<div class="row display-tr">
									<h3 class="panel-title display-td">Payment Details</h3>
									<div class="display-td">
										<img class="img-responsive pull-right"
											src="http://i76.imgup.net/accepted_c22e0.png">
									</div>
								</div>
							</div>
							<div class="panel-body">
								<form role="form" id="payment-form">
									<div class="row">
										<div class="col-xs-12">
											<div class="form-group">
												<label for="cardNumber">CARD NUMBER</label>
												<div class="input-group">
													<input type="tel" class="form-control" name="cardNumber"
														placeholder="Valid Card Number" autocomplete="cc-number"
														required autofocus /> <span class="input-group-addon"><i
														class="fa fa-credit-card"></i></span>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-7 col-md-7">
											<div class="form-group">
												<label for="cardExpiry"><span class="hidden-xs">EXPIRATION</span><span
													class="visible-xs-inline">EXP</span> DATE</label> <input type="tel"
													class="form-control" name="cardExpiry"
													placeholder="MM / YY" autocomplete="cc-exp" required />
											</div>
										</div>
										<div class="col-xs-5 col-md-5 pull-right">
											<div class="form-group">
												<label for="cardCVC">CV CODE</label> <input type="tel"
													class="form-control" name="cardCVC" placeholder="CVC"
													autocomplete="cc-csc" required />
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12">
											<button class="btn btn-success btn-lg btn-block"
												type="submit">Paga!</button>
										</div>
									</div>
									<div class="row" style="display: none;">
										<div class="col-xs-12">
											<p class="payment-errors"></p>
										</div>
									</div>
								</form>
							</div>
						</div>
						<!-- CREDIT CARD FORM ENDS HERE -->


					</div>



				</div>
			</div>
		</div>
	</div>






	<script>
		// When the user clicks the button, open the modal 
		function functione() {
			document.getElementById('myModal').style.display = "block";
		}

		// When the user clicks on <span> (x), close the modal
		document.getElementsByClassName("close")[0].onclick = function() {
			document.getElementById('myModal').style.display = "none";
		}

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == document.getElementById('myModal')) {
				document.getElementById('myModal').style.display = "none";
			}
		}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		function functione_pay() {
			document.getElementById('myModal2').style.display = "block";
		}

		// When the user clicks on <span> (x), close the modal
		document.getElementsByClassName("close")[0].onclick = function() {
			document.getElementById('myModal2').style.display = "none";
		}

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == document.getElementById('myModal2')) {
				document.getElementById('myModal2').style.display = "none";
			}
		}
	</script>

	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript" src="js/global.js"></script>
	<script type="text/javascript" src="js/jquery.1.11.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/SmoothScroll.js"></script>
	<script type="text/javascript" src="js/jqBootstrapValidation.js"></script>
	<script type="text/javascript" src="js/contact_me.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>