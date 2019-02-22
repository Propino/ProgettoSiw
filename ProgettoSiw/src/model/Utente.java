package model;

public class Utente {
	
	private String username;
	private String password ;
	private String email ;
	private String nome ;
	private String cognome ;
	private String data ;
	private String telefono ;
	boolean eLoggato;
	
	public Utente(String username, String password, String email, String nome, String cognome, String data, String telefono ) {
		this.username = username;
		this.password = password;
		this.email = email;
		this.nome = nome;
		this.cognome = cognome;
		this.data = data;
		this.telefono = telefono;
		this.eLoggato = false;
	}
	
	public Utente() {
		// TODO Auto-generated constructor stub
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public boolean iseLoggato() {
		return eLoggato;
	}

	public void seteLoggato(boolean eLoggato) {
		this.eLoggato = eLoggato;
	}	
	
}
