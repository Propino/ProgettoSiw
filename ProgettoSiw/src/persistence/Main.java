/*
package persistence;

import model.Recensione;
import model.Utente;

public class Main {
	public static void main(String[] args) {
		try {
			
				Utente u = new Utente();
				u.setUsername("Paolo");
				
				Recensione r = new Recensione();
				r.setUtente(u);
				r.setTesto("Mare bellissimo!");
				r.setStelle(5);
				
				RecensioneDAOJDBC rc = new RecensioneDAOJDBC();
				rc.aggiungiRecensione(r);
				
				
		} catch (Exception e) {
			System.err.println("PostgresDAOFactory.class: failed to load JDBC driver\n" + e);
			e.printStackTrace();
		}
	}
}
*/

