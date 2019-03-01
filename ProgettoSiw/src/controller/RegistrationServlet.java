package controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Utente;
import persistence.PersistenceException;
import persistence.UtenteDAO;
import persistence.UtenteDAOJDBC;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegistrationServlet() {
        super();       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		try {
		String username = request.getParameter("input_username");
		String password = request.getParameter("input_password");
		String email = request.getParameter("input_email");
		String nome = request.getParameter("input_nome");
		String cognome = request.getParameter("input_cognome");
		String data = request.getParameter("input_compleanno");
		String numero = request.getParameter("input_telefono");
		Utente utente = new Utente(username,password,email,nome,cognome,data,numero);
		UtenteDAO u = new UtenteDAOJDBC();
		u.registraUtente(utente);	
		response.getWriter().write("True");
		} catch(PersistenceException e) {
			
		}
	} 
}
