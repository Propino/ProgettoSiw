package model;

public class Recensione {
	Utente utente;
	String testo;
	int stelle;
	public Utente getUtente() {
		return utente;
	}
	public void setUtente(Utente utente) {
		this.utente = utente;
	}
	public String getTesto() {
		return testo;
	}
	public void setTesto(String testo) {
		this.testo = testo;
	}
	public int getStelle() {
		return stelle;
	}
	public void setStelle(int stelle) {
		this.stelle = stelle;
	}
	
}
