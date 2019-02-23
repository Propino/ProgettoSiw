/*
package persistence;

import model.Recensione;
import model.Utente;

public class Main {
	public static void main(String[] args) {
		try {
			
				Utente u = new Utente();
				u.setUsername("zarols");
				
				Recensione r = new Recensione();
				r.setUtente(u);
				r.setTesto("Posto molto suggestivo anche se troppo movimentato");
				r.setStelle(3);
				
				RecensioneDAOJDBC rc = new RecensioneDAOJDBC();
				System.out.println(rc.numeroRecensioniPerUtente(u));
				
				
		} catch (Exception e) {
			System.err.println("PostgresDAOFactory.class: failed to load JDBC driver\n" + e);
			e.printStackTrace();
		}
	}
}
*/

