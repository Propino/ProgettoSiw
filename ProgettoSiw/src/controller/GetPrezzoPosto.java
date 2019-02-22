package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import persistence.OmbrelloneDAOJDBC;

/**
 * Servlet implementation class GetPrezzoPosto
 */
@WebServlet("/GetPrezzoPosto")
public class GetPrezzoPosto extends HttpServlet {
	private static final long serialVersionUID = 1L;
    //static int prezzoTotale = 0;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetPrezzoPosto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String posti [] = request.getParameterValues("posto");
		String tot = request.getParameter("tott");
		OmbrelloneDAOJDBC o = new OmbrelloneDAOJDBC();
		int prezzoTotale = Integer.parseInt(tot);
		for(int i = 0; i < posti.length; i++) {
			prezzoTotale += o.getPrezzoPerOmbrellone(Integer.parseInt(posti[i]));			
		}
		response.getOutputStream().println("<p id = \"coupon\">Hai un coupon ?</p>");
		response.getOutputStream().println("<input type=\"text\" name=\"input_coupon\" id=\"input_coupon\"placeholder=\"Inserisci il codice coupon\" class=\"form-control\">");
		response.getOutputStream().println("<input type=\"button\" value=\"Inserisci\" id=\"button_input_coupon\" onclick=\"controllaCoupon()\">");
		response.getOutputStream().println("<br>");
		response.getOutputStream().println("<h3>Totale : &#8364 "+ prezzoTotale +"</h3>");
		response.getOutputStream().println("<input type=text style=\"display:none\" id=tott name=tott value="+prezzoTotale+">");
		response.getOutputStream().println("<c:if test=\"${user != null}\">");
		response.getOutputStream().println("<input type =\"submit\" id=\"prosegui_pagamento\" value=\"Prosegui con il Pagamento\">");
		response.getOutputStream().println("</c:if>");
		response.getOutputStream().println("<c:if test=\"${user == null}\">");
		response.getOutputStream().println("<input type =\"button\" id=\"prosegui_pagamento\" value=\"Prosegui con il Pagamento\">");
		response.getOutputStream().println("</c:if>");		response.getOutputStream().println("<input type =\"submit\" id=\"prosegui_pagamento\" value=\"Prosegui con il Pagamento\">");

	}
}


