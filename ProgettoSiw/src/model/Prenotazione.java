package model;

import java.util.ArrayList;

public class Prenotazione {

		Utente utente;
		String data;
		ArrayList <Ombrellone> ombrelloni;
		
		public Utente getUtente() {
			return utente;
		}
		public void setUtente(Utente utente) {
			this.utente = utente;
		}
		public String getData() {
			return data;
		}
		public void setData(String data) {
			this.data = data;
		}
		public ArrayList<Ombrellone> getOmbrelloni() {
			return ombrelloni;
		}
		public void setOmbrelloni(ArrayList<Ombrellone> ombrelloni) {
			this.ombrelloni = ombrelloni;
		}
		
}

