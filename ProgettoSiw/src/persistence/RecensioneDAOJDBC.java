package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Recensione;
import model.Utente;

public class RecensioneDAOJDBC {
	
	DataSource dataSource;
	public RecensioneDAOJDBC() {
		this.dataSource= new DataSource();
	}
	public void aggiungiRecensione(Recensione r) {
		Connection connection = this.dataSource.getConnection();
		try {
			String query = "insert into recensione(utente,testo,stelle) values (?,?,?)";
			PreparedStatement statement = connection.prepareStatement(query);
			statement.setString(1,r.getUtente().getUsername());
			statement.setString(2, r.getTesto());
			statement.setInt(3, r.getStelle());
			statement.executeUpdate();
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	public String numeroRecensioniPerUtente(Utente u) {
		Connection connection = this.dataSource.getConnection();
		ResultSet rs = null;
		int cont = 0;
		try {
			String query = "select * from recensione where utente = ?";
			PreparedStatement statement = connection.prepareStatement(query);
			statement.setString(1,u.getUsername());
			rs = statement.executeQuery();
			while(rs.next()) {
				cont++;
			}
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
				if(rs!= null) {
				rs.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	String c = Integer.toString(cont);
	return c;
	}
	
	public ArrayList<Recensione> getAll() {
		ArrayList<Recensione> recensioni = new ArrayList<Recensione>();
		Connection connection = this.dataSource.getConnection();
		ResultSet rs = null;
		try {
			String query = "select * from recensione";
			PreparedStatement statement = connection.prepareStatement(query);
			rs = statement.executeQuery();
			while(rs.next()) {
				Recensione temp = new Recensione();
				Utente u = new Utente();
				u.setUsername(rs.getString("utente"));
				temp.setUtente(u);
				temp.setTesto(rs.getString("testo"));
				temp.setStelle(rs.getInt("stelle"));
				recensioni.add(temp);
			}
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	return recensioni;
	}
	
	public ArrayList<Recensione> recensioniPerUtente(Utente u) { 
		ArrayList<Recensione> recensioni = new ArrayList<Recensione>();
		Connection connection = this.dataSource.getConnection();
		ResultSet rs = null;
		try {
			String query = "select * from recensione where utente = ?";
			PreparedStatement statement = connection.prepareStatement(query);
			statement.setString(1,u.getUsername());
			rs = statement.executeQuery();
			while(rs.next()) {
				Recensione temp = new Recensione();
				Utente ut = new Utente();
				ut.setUsername(rs.getString("utente"));
				temp.setUtente(ut);
				temp.setTesto(rs.getString("testo"));
				temp.setStelle(rs.getInt("stelle"));
				recensioni.add(temp);
			}
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	return recensioni;
	}
}

