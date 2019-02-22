<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="model.Ombrellone"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script src="js/global.js"></script>
<link rel="stylesheet" type="text/css" href="css/mappa.css">
<form method="Get" action="MappaServlet">
	<p name="test">test</p>
	<div class="plane">
		<div class="exit exit--front fuselage"></div>
		<ol class="cabin fuselage">
			<li class="row row--1">
				<ol class="seats" type="A">
					<%
						Ombrellone[] postiOccupati = null;
					%>
					<%
						postiOccupati = (Ombrellone[]) session.getAttribute("posti");
					%>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[1] != null) {%>
						disabled <%}%> id="P1" name="posto" value="1"> <label
						for="P1" class="checker" id="1" onclick="check(this.id)">1</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[2] != null) {%>
						disabled <%}%> id="P2" name="posto" value="2"> <label
						for="P2" class="checker" id="2" onclick="check(this.id)">2</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[3] != null) {%>
						disabled <%}%> id="P3" name="posto" value="3"> <label
						for="P3" class="checker" id="3" onclick="check(this.id)">3</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[4] != null) {%>
						disabled <%}%> id="P4" name="posto" value="4"> <label
						for="P4" class="checker" id="4" onclick="check(this.id)">4</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[5] != null) {%>
						disabled <%}%> id="P5" name="posto" value="5"> <label
						for="P5" class="checker" id="5" onclick="check(this.id)">5</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[6] != null) {%>
						disabled <%}%> id="P6" name="posto" value="6"> <label
						for="P6" class="checker" id="6" onclick="check(this.id)">6</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[7] != null) {%>
						disabled <%}%> id="P7" name="posto" value="7"> <label
						for="P7" class="checker" id="7" onclick="check(this.id)">7</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[8] != null) {%>
						disabled <%}%> id="P8" name="posto" value="8"> <label
						for="P8" class="checker" id="8" onclick="check(this.id)">8</label></li>
				</ol>
			</li>
			<li class="row row--2">
				<ol class="seats" type="A">
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[9] != null) {%>
						disabled <%}%> id="P9" name="posto" value="9"> <label
						for="P9" class="checker" id="9" onclick="check(this.id)">9</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[10] != null) {%>
						disabled <%}%> id="P10" name="posto" value="10"> <label
						for="P10" class="checker" id="10" onclick="check(this.id)">10</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[11] != null) {%>
						disabled <%}%> id="P11" name="posto" value="11"> <label
						for="P11" class="checker" id="11" onclick="check(this.id)">11</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[12] != null) {%>
						disabled <%}%> id="P12" name="posto" value="12"> <label
						for="P12" class="checker" id="12" onclick="check(this.id)">12</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[13] != null) {%>
						disabled <%}%> id="P13" name="posto" value="13"> <label
						for="P13" class="checker" id="13" onclick="check(this.id)">13</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[14] != null) {%>
						disabled <%}%> id="P14" name="posto" value="14"> <label
						for="P14" class="checker" id="14" onclick="check(this.id)">14</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[15] != null) {%>
						disabled <%}%> id="P15" name="posto" value="15"> <label
						for="P15" class="checker" id="15" onclick="check(this.id)">15</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[16] != null) {%>
						disabled <%}%> id="P16" name="posto" value="16"> <label
						for="P16" class="checker" id="16" onclick="check(this.id)">16</label></li>
				</ol>
			</li>
			<li class="row row--3">
				<ol class="seats" type="A">
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[17] != null) {%>
						disabled <%}%> id="P17" name="posto" value="17"> <label
						for="P17" class="checker" id="17" onclick="check(this.id)">17</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[18] != null) {%>
						disabled <%}%> id="P18" name="posto" value="18"> <label
						for="P18" class="checker" id="18" onclick="check(this.id)">18</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[19] != null) {%>
						disabled <%}%> id="P19" name="posto" value="19"> <label
						for="P19" class="checker" id="19" onclick="check(this.id)">19</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[20] != null) {%>
						disabled <%}%> id="P20" name="posto" value="20"> <label
						for="P20" class="checker" id="20" onclick="check(this.id)">20</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[21] != null) {%>
						disabled <%}%> id="P21" name="posto" value="21"> <label
						for="P21" class="checker" id="21" onclick="check(this.id)">21</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[22] != null) {%>
						disabled <%}%> id="P22" name="posto" value="22"> <label
						for="P22" class="checker" id="22" onclick="check(this.id)">22</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[23] != null) {%>
						disabled <%}%> id="P23" name="posto" value="23"> <label
						for="P23" class="checker" id="23" onclick="check(this.id)">23</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[24] != null) {%>
						disabled <%}%> id="P24" name="posto" value="24"> <label
						for="P24" class="checker" id="24" onclick="check(this.id)">24</label></li>
				</ol>
			</li>

			<li class="row row--4">
				<ol class="seats" type="A">
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[25] != null) {%>
						disabled <%}%> id="P25" name="posto" value="25"> <label
						for="P25" class="checker" id="25" onclick="check(this.id)">25</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[26] != null) {%>
						disabled <%}%> id="P26" name="posto" value="26"> <label
						for="P26" class="checker" id="26" onclick="check(this.id)">26</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[27] != null) {%>
						disabled <%}%> id="P27" name="posto" value="27"> <label
						for="P27" class="checker" id="27" onclick="check(this.id)">27</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[28] != null) {%>
						disabled <%}%> id="P28" name="posto" value="28"> <label
						for="P28" class="checker" id="28" onclick="check(this.id)">28</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[29] != null) {%>
						disabled <%}%> id="P29" name="posto" value="29"> <label
						for="P29" class="checker" id="29" onclick="check(this.id)">29</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[30] != null) {%>
						disabled <%}%> id="P30" name="posto" value="30"> <label
						for="P30" class="checker" id="30" onclick="check(this.id)">30</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[31] != null) {%>
						disabled <%}%> id="P31" name="posto" value="31"> <label
						for="P31" class="checker" id="31" onclick="check(this.id)">31</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[32] != null) {%>
						disabled <%}%> id="P32" name="posto" value="32"> <label
						for="P32" class="checker" id="32" onclick="check(this.id)">32</label></li>
				</ol>
			</li>
			<li class="row row--5"><ol class="seats" type="A">
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[33] != null) {%>
						disabled <%}%> id="P33" name="posto" value="33"> <label
						for="P33" class="checker" id="33" onclick="check(this.id)">33</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[34] != null) {%>
						disabled <%}%> id="P34" name="posto" value="34"> <label
						for="P34" class="checker" id="34" onclick="check(this.id)">34</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[35] != null) {%>
						disabled <%}%> id="P35" name="posto" value="35"> <label
						for="P35" class="checker" id="35" onclick="check(this.id)">35</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[36] != null) {%>
						disabled <%}%> id="P36" name="posto" value="36"> <label
						for="P36" class="checker" id="36" onclick="check(this.id)">36</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[37] != null) {%>
						disabled <%}%> id="P37" name="posto" value="37"> <label
						for="P37" class="checker" id="37" onclick="check(this.id)">37</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[38] != null) {%>
						disabled <%}%> id="P38" name="posto" value="38"> <label
						for="P38" class="checker" id="38" onclick="check(this.id)">38</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[39] != null) {%>
						disabled <%}%> id="P39" name="posto" value="39"> <label
						for="P39" class="checker" id="39" onclick="check(this.id)">39</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[40] != null) {%>
						disabled <%}%> id="P40" name="posto" value="40"> <label
						for="P40" class="checker" id="40" onclick="check(this.id)">40</label></li>
				</ol></li>
			<li class="row row--6"><ol class="seats" type="A">
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[41] != null) {%>
						disabled <%}%> id="P41" name="posto" value="41"> <label
						for="P41" class="checker" id="41" onclick="check(this.id)">41</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[42] != null) {%>
						disabled <%}%> id="P42" name="posto" value="42"> <label
						for="P42" class="checker" id="42" onclick="check(this.id)">42</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[43] != null) {%>
						disabled <%}%> id="P43" name="posto" value="43"> <label
						for="P43" class="checker" id="43" onclick="check(this.id)">43</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[44] != null) {%>
						disabled <%}%> id="P44" name="posto" value="44"> <label
						for="P44" class="checker" id="44" onclick="check(this.id)">44</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[45] != null) {%>
						disabled <%}%> id="P45" name="posto" value="45"> <label
						for="P45" class="checker" id="45" onclick="check(this.id)">45</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[46] != null) {%>
						disabled <%}%> id="P46" name="posto" value="46"> <label
						for="P46" class="checker" id="46" onclick="check(this.id)">46</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[47] != null) {%>
						disabled <%}%> id="P47" name="posto" value="47"> <label
						for="P47" class="checker" id="47" onclick="check(this.id)">47</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[48] != null) {%>
						disabled <%}%> id="P48" name="posto" value="48"> <label
						for="P48" class="checker" id="48" onclick="check(this.id)">48</label></li>
				</ol></li>
			<li class="row row--7"><ol class="seats" type="A">
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[49] != null) {%>
						disabled <%}%> id="P49" name="posto" value="49"> <label
						for="P49" class="checker" id="49" onclick="check(this.id)">49</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[50] != null) {%>
						disabled <%}%> id="P50" name="posto" value="50"> <label
						for="P50" class="checker" id="50" onclick="check(this.id)">50</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[51] != null) {%>
						disabled <%}%> id="P51" name="posto" value="51"> <label
						for="P51" class="checker" id="51" onclick="check(this.id)">51</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[52] != null) {%>
						disabled <%}%> id="P52" name="posto" value="52"> <label
						for="P52" class="checker" id="52" onclick="check(this.id)">52</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[53] != null) {%>
						disabled <%}%> id="P53" name="posto" value="53"> <label
						for="P53" class="checker" id="53" onclick="check(this.id)">53</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[54] != null) {%> disabled
						<%}%> id="P54" name="posto" value="54"> <label for="P54"
						class="checker" id="54" onclick="check(this.id)">54</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[55] != null) {%> disabled
						<%}%> id="P55" name="posto" value="55"> <label for="P55"
						class="checker" id="55" onclick="check(this.id)">55</label></li>
					<li class="seat"><input type="checkbox"
						<%if (postiOccupati != null && postiOccupati[56] != null) {%> disabled
						<%}%> id="P56" name="posto" value="56"> <label for="P56"
						class="checker" id="56" onclick="check(this.id)">56</label></li>
				</ol></li>
		</ol>

		<div class="exit exit--back fuselage"></div>
	</div>
</form>
