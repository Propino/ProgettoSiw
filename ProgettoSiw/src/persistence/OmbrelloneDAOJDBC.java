package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Ombrellone;

public class OmbrelloneDAOJDBC implements OmbrelloneDAO{

	DataSource dataSource;
	
	public OmbrelloneDAOJDBC() {
		dataSource = new DataSource();
	}
	
	public void inserisciOmbrellone(Ombrellone o) {
		Connection connection = dataSource.getConnection();
		try {
			String query = "insert into ombrellone(numero) values (?)";
			PreparedStatement statement = connection.prepareStatement(query);
			statement.setInt(1, o.getNumeroPosto());
			statement.executeUpdate();
		} catch(Exception e) {
			//
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
	}
	public int getPrezzoPerOmbrellone(int codice) {
	    int prezzo = 0;
	    Connection connection = dataSource.getConnection();
	    String query = "select prezzo from ombrellone where numero=? ";
	    ResultSet rs = null;
	    try {
	      PreparedStatement statement = connection.prepareStatement(query);
	      statement.setInt(1,codice);
	      rs = statement.executeQuery();
	      while(rs.next()) {
	        prezzo = rs.getInt("prezzo");
	      }
	    }
	    catch(Exception e) {
	      
	    } finally {
	      try {
	        connection.close();
	        rs.close();
	      } catch (Exception e) {
	        throw new PersistenceException(e.getMessage());
	      }
	    }
	    return prezzo;
	  }
}
