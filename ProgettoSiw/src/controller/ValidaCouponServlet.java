package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import persistence.CouponDAOJDBC;

/**
 * Servlet implementation class ValidaCouponServlet
 */
@WebServlet("/ValidaCouponServlet")
public class ValidaCouponServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ValidaCouponServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String t = request.getParameter("tott");
		String coupon = request.getParameter("input_coupon");
		int prezzoTotale = Integer.parseInt(t);	
		int couponDaValidare = Integer.parseInt(coupon);
		CouponDAOJDBC c = new CouponDAOJDBC();
		if(prezzoTotale == 0) {
			response.getOutputStream().println("<p id = coupon> <font color = red> Seleziona almeno un posto e/o inserisci un coupon. </font> </p>");
			response.getOutputStream().println("<input type=\"text\" name=\"input_coupon\" id=\"input_coupon\"placeholder=\"Inserisci il codice coupon\" class=\"form-control\">");
			response.getOutputStream().println("<input type=\"button\" value=\"Inserisci\"onclick=\"controllaCoupon()\">");
			response.getOutputStream().println("<h3>Totale : &#8364 "+ prezzoTotale +"</h3>");
			response.getOutputStream().println("<input type=text style=\"display:none\" id=tott name=tott value="+ prezzoTotale +">");
			response.getOutputStream().println("<input type =\"submit\" id=\"prosegui_pagamento\" value=\"Prosegui con il Pagamento\">");
		}
		else if(c.validaCoupon(couponDaValidare)) {
			prezzoTotale -= 5;
			response.getOutputStream().println("<p id =\"coupon\"> <font color = green> Coupon valido. </font> </p>");
			response.getOutputStream().println("<input type=\"text\" name=\"input_coupon\" id=\"input_coupon\"placeholder=\"Inserisci il codice coupon\" class=\"form-control\">");
			response.getOutputStream().println("<input type=\"button\" disabled value=\"Inserisci\">");
			response.getOutputStream().println("<h3>Totale : &#8364 "+ prezzoTotale +"</h3>");
			response.getOutputStream().println("<input type=text style=\"display:none\" id=tott name=tott value="+prezzoTotale+">");
			response.getOutputStream().println("<input type =\"submit\" id=\"prosegui_pagamento\" value=\"Prosegui con il Pagamento\">");
		} else {
			response.getOutputStream().println("<p id = coupon> <font color = red> Coupon non valido. </font> </p>");
			response.getOutputStream().println("<input type=\"text\" name=\"input_coupon\" id=\"input_coupon\"placeholder=\"Inserisci il codice coupon\" class=\"form-control\">");
			response.getOutputStream().println("<input type=\"button\" value=\"Inserisci\"onclick=\"controllaCoupon()\">");
			response.getOutputStream().println("<h3>Totale : &#8364 "+ prezzoTotale +"</h3>");
			response.getOutputStream().println("<input type=text style=\"display:none\" id=tott name=tott value="+ prezzoTotale +">");
			response.getOutputStream().println("<input type =\"submit\" id=\"prosegui_pagamento\" value=\"Prosegui con il Pagamento\">");
			}
		}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
