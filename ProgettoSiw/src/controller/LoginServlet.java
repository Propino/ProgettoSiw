package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Utente;
import persistence.UtenteDAOJDBC;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Utente utente = new Utente();
			UtenteDAOJDBC u = new UtenteDAOJDBC();
			utente.setUsername(request.getParameter("input_username"));
			utente.setPassword(request.getParameter("input_password"));
			utente = u.loginUtente(utente);
			if(utente.iseLoggato()==true) {
				 	HttpSession session = request.getSession(true);
		            session.setAttribute("user", utente);
		            response.getWriter().write("True");
			}
			else {
				response.getOutputStream().println("<font color=red>Username e/o password errati.</font>");
			}
		} catch (Exception e) {
			
		}
	}

}
