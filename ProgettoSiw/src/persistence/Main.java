
package persistence;

import model.Recensione;
import model.Utente;

public class Main {
	public static void main(String[] args) {
		try {
				Utente t = new Utente();
				t.setUsername("zarols");
				UtenteDAOJDBC u = new UtenteDAOJDBC();
				u.aggiornaImmagine("a",t);
				
		} catch (Exception e) {
			System.err.println("PostgresDAOFactory.class: failed to load JDBC driver\n" + e);
			e.printStackTrace();
		}
	}
}


