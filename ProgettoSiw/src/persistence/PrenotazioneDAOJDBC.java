package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Ombrellone;
import model.Utente;

public class PrenotazioneDAOJDBC {

	DataSource dataSource;
	
	public PrenotazioneDAOJDBC() {
		this.dataSource = new DataSource();
	}
	
	public void inserisciPrenotazione(Utente utente, String data, ArrayList <Ombrellone> ombrelloni) {
		Connection connection = this.dataSource.getConnection();
		try {
			for(Ombrellone i: ombrelloni) {
				String query = "insert into prenotazione(utente,data,posto) values (?,?,?)";
				PreparedStatement statement = connection.prepareStatement(query);
				statement.setString(1, utente.getUsername());
				statement.setString(2, data);
				statement.setInt(3, i.getNumeroPosto());
				statement.executeUpdate();
			}
		} catch(Exception e) {
			//
		} finally {

				try {
					connection.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			
			}
		}
	
	
	public Ombrellone[] getOmbrelloniPrenotati(String data) {
		Ombrellone[] ombrelloniPrenotati = new Ombrellone[57];
		Connection connection = this.dataSource.getConnection();
		String query = "select posto from prenotazione where data=? ";
		ResultSet rs = null;
		try {
		PreparedStatement statement = connection.prepareStatement(query);
		statement.setString(1,data);
		rs = statement.executeQuery();
		while(rs.next()) {
			ombrelloniPrenotati[rs.getInt("posto")] = new Ombrellone(rs.getInt("posto"));
		}
		} catch(Exception e) {
			
		}finally {
			try {
				connection.close();
				rs.close();
			} catch (Exception e) {
				throw new PersistenceException(e.getMessage());
			}
		}
		
	return ombrelloniPrenotati;
	}
}
