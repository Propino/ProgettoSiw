package persistence;

import model.Utente;

public interface UtenteDAO {

	public void registraUtente(Utente utente);
	public Utente loginUtente(Utente utente);
	public void aggiornaImmagine(String path, Utente u);
	public void cambiaPassword(String username, String password);
	public Utente cercaPerUsername(String username);
}
