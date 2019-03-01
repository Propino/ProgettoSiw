package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Recensione;
import model.Utente;
import persistence.RecensioneDAO;
import persistence.RecensioneDAOJDBC;

/**
 * Servlet implementation class InserisciRecensione
 */
@WebServlet("/InserisciRecensione")
public class InserisciRecensione extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InserisciRecensione() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Utente u = (Utente) request.getSession().getAttribute("user");
		String testo = request.getParameter("testo");
		String stelle = request.getParameter("stelle");
		RecensioneDAO r = new RecensioneDAOJDBC();
		Recensione re = new Recensione();
		re.setUtente(u);
		re.setTesto(testo);
		re.setStelle(Integer.parseInt(stelle));
		r.aggiungiRecensione(re);
		response.getOutputStream().println("<font color = green>Recensione inserita.</font>");
	}

}
