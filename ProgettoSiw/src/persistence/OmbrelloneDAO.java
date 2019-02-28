package persistence;

import model.Ombrellone;

public interface OmbrelloneDAO {
	
	public void inserisciOmbrellone(Ombrellone o);
	public int getPrezzoPerOmbrellone(int codice);
	
}
