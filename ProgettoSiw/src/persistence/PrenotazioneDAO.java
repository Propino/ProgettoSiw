package persistence;

import java.util.ArrayList;

import model.Ombrellone;
import model.Utente;

public interface PrenotazioneDAO {

	public void inserisciPrenotazione(Utente utente, String data, ArrayList <Ombrellone> ombrelloni);
	public ArrayList<String> getPrenotazioniPerUtente(String username);
	public Ombrellone[] getOmbrelloniPrenotati(String data);
}
