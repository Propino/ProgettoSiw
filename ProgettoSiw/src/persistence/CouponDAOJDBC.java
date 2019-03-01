package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Coupon;

public class CouponDAOJDBC implements CouponDAO {
	
	DataSource dataSource;
	
	public CouponDAOJDBC() {
		
		this.dataSource = new DataSource();
		
	}
	
	public void inserisciCoupon(Coupon c) {
		Connection connection = dataSource.getConnection();
		try {
			String query = "insert into coupon values (?)";
			PreparedStatement statement = connection.prepareStatement(query);
			statement.setInt(1, c.getCodice());
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
	
	public boolean validaCoupon(int codice) {
		Connection connection = dataSource.getConnection();
		int cod = 0;
		    String query = "select codice from coupon where codice=? ";
		    ResultSet rs = null;
		    try {
		      PreparedStatement statement = connection.prepareStatement(query);
		      statement.setInt(1,codice);
		      rs = statement.executeQuery();
		      while(rs.next()) {
		        cod = rs.getInt("codice");
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
		    if(cod != 0) {
		    	return true;
		    }else
		    	return false;
		  }
	}

