package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.StringTokenizer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Ombrellone;
import model.Utente;
import persistence.PrenotazioneDAOJDBC;

/**
 * Servlet implementation class PrenotaPosti
 */
@WebServlet("/PrenotaPosti")
public class PrenotaPosti extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PrenotaPosti() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{			
				ArrayList<Ombrellone> postii = new ArrayList<Ombrellone>();
		 		String data =  request.getParameter("data");
				String posti  =  request.getParameter("posto");
				StringTokenizer st = new StringTokenizer(posti,"|");
				while(st.hasMoreTokens()) {
					postii.add(new Ombrellone(Integer.parseInt(st.nextToken())));
				}
				PrenotazioneDAOJDBC p = new PrenotazioneDAOJDBC();
				Utente u = (Utente)request.getSession().getAttribute("user");
				p.inserisciPrenotazione(u, data, postii);
				//request.getSession().removeAttribute("data");
	        }



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
