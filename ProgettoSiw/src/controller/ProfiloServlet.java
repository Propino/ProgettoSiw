package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Prenotazione;
import model.Recensione;
import model.Utente;
import persistence.PrenotazioneDAO;
import persistence.PrenotazioneDAOJDBC;
import persistence.RecensioneDAO;
import persistence.RecensioneDAOJDBC;

/**
 * Servlet implementation class ProfiloServlet
 */
@WebServlet("/ProfiloServlet")
public class ProfiloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfiloServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrenotazioneDAO p = new PrenotazioneDAOJDBC();
		Utente username = (Utente) request.getSession().getAttribute("user");
		RecensioneDAO r = new RecensioneDAOJDBC();
		String recensioni = r.numeroRecensioniPerUtente(username);
		ArrayList<Recensione> recensioniUtente = r.recensioniPerUtente(username);
		ArrayList<String> prenotazioni = p.getPrenotazioniPerUtente(username.getUsername());
		ArrayList<String> date = new ArrayList<String>();
		ArrayList<String> posti = new ArrayList<String>();
		for(String s : prenotazioni) {
			String data = s.substring(0,10);
			date.add(data);
			if (s.length()==12) {
				String posto = s.substring(11,12);
				posti.add(posto);
			} else if (s.length()==13) {
				String posto = s.substring(11,13);
				posti.add(posto);
			}
			
		}
		request.setAttribute("date",date);
		request.setAttribute("posti",posti);
		request.setAttribute("recensioni",recensioni);
		request.setAttribute("recensioniUtente",recensioniUtente);
		request.setAttribute("user",username);
		request.getRequestDispatcher("Profilo.jsp").forward(request, response);
	}	 

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
