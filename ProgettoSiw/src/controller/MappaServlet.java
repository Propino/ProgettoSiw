package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Ombrellone;
import persistence.PrenotazioneDAOJDBC;

@WebServlet("/MappaServlet")
public class MappaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public MappaServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String data = request.getParameter("input_data");
		PrenotazioneDAOJDBC p = new PrenotazioneDAOJDBC();
		Ombrellone[] ombrelloniPrenotati = p.getOmbrelloniPrenotati(data);
		//HttpSession session = request.getSession();
		request.setAttribute("dataview",data);
		//request.getSession().setAttribute("data",data);
		request.setAttribute("posti", ombrelloniPrenotati);
		RequestDispatcher rd = request.getRequestDispatcher("Prenota.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
