package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Utente;
import persistence.UtenteDAOJDBC;

/**
 * Servlet implementation class GetUtenteServlet
 */
@WebServlet("/GetUtenteServlet")
public class GetUtenteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetUtenteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("input_username");
		UtenteDAOJDBC u = new UtenteDAOJDBC();
		Utente utente = u.cercaPerUsername(username);
		if(utente.getUsername()!=null) {
			response.getOutputStream().println("<font color = red> Username gia' esistente");
		}
	}
}
	
