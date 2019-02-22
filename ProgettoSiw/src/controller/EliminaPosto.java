package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EliminaPosto
 */
@WebServlet("/EliminaPosto")
public class EliminaPosto extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EliminaPosto() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String t = request.getParameter("tot");
		int totale = Integer.parseInt(t);
		totale -= 15;
		if (totale < 0) {
			totale = 0;
		}
		response.getOutputStream().println("<p id = \"coupon\">Hai un coupon ?</p>");
		response.getOutputStream().println(
				"<input type=\"text\" name=\"input_coupon\" id=\"input_coupon\"placeholder=\"Inserisci il codice coupon\" class=\"form-control\">");
		response.getOutputStream().println(
				"<input type=\"button\" value=\"Inserisci\" id=\"button_input_coupon\" onclick=\"controllaCoupon()\">");
		response.getOutputStream().println("<br>");
		response.getOutputStream().println("<h3>Totale : &#8364 " + totale + "</h3>");
		response.getOutputStream()
				.println("<input type=text style=\"display:none\" id=tott name=tott value=" + totale + ">");
		if (request.getSession().getAttribute("user") != null) {

			response.getOutputStream()
					.println("<input type =\"submit\" id=\"prosegui_pagamento\" value=\"Prosegui con il Pagamento\">");
		} 
		else {
			response.getOutputStream().println(
					"<input type =\"button\" id=\"prosegui_pagamento\" onclick=\"functione()\" value=\"Prosegui con il Pagamento\">");
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
