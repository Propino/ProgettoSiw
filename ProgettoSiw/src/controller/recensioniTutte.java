package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import model.Recensione;
import persistence.RecensioneDAOJDBC;

/**
 * Servlet implementation class recensioniTutte
 */
@WebServlet("/recensioniTutte")
public class recensioniTutte extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public recensioniTutte() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RecensioneDAOJDBC r = new RecensioneDAOJDBC();
		ArrayList<Recensione> recensioni = r.getAll();
		JsonArray jarray = new JsonArray();
		for(Recensione x : recensioni) {
			JsonObject gson = new JsonObject();
			gson.addProperty("utente",x.getUtente().getUsername());
			gson.addProperty("testo",x.getTesto());
			gson.addProperty("stelle",x.getStelle());
			jarray.add(gson);
		}
		response.setContentType("application/json");
		PrintWriter out = response.getWriter();
		out.println(jarray.toString());
		out.flush();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
