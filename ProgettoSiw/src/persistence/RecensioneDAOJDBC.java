package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	return Integer.toString(cont);
	}
}
