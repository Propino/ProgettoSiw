package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Recensione;

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
	
}
