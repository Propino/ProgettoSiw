package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ProseguiPagamento
 */
@WebServlet("/ProseguiPagamento")
public class ProseguiPagamento extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProseguiPagamento() {
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
		
        if(request.getSession().getAttribute("user")==null) {
        	request.getSession().setAttribute("inPrenotazione", "si");
        	response.sendRedirect("Login.jsp");
        } else if ((request.getSession().getAttribute("data")==null)||request.getParameter("tott") == null) {
        	response.sendRedirect("Prenota.jsp");
        } else {
        	int totale=Integer.parseInt(request.getParameter("tott"));
			String []  posti  =  request.getParameterValues("posto");
			request.getSession().setAttribute("postiPrenotazione", posti);
			request.getSession().setAttribute("importo", totale ); 
        }
       
	}

}
