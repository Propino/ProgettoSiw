package persistence;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataSource {
	
	final private String dbURI; 
	final private String userName; 
	final private String password; 
	
	public DataSource() {
		this.dbURI = "jdbc:postgresql://manny.db.elephantsql.com:5432/ezmgwwsb";
		this.userName = "ezmgwwsb";
		this.password = "DhUhD8wIXWWCqUXvVKlFz0qEjOV16UB9";
	}

	 public Connection getConnection() throws PersistenceException {
		Connection connection = null;
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}		
		try {
			connection = DriverManager.getConnection(dbURI, userName, password);
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		}
		return connection;
	}
}

