package persistence;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.Utente;

public class UtenteDAOJDBC  {

	DataSource datasource = null;
	
	public UtenteDAOJDBC() {
		datasource = new DataSource();
	}
	
	public void registraUtente(Utente utente) {
		Connection connection = this.datasource.getConnection();
		try {
			String query = "insert into utente(username, password, email, nome, cognome, data, telefono) values (?,?,?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(query);
			statement.setString(1, utente.getUsername());
			statement.setString(2, utente.getPassword());
			statement.setString(3, utente.getEmail());
			statement.setString(4, utente.getNome());
			statement.setString(5, utente.getCognome());
			statement.setString(6, utente.getData());
			statement.setString(7, utente.getTelefono());
			statement.executeUpdate();
			MailUtility.mailRegistrazione(utente.getEmail(),utente.getUsername());
		}catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
	}
	
	public Utente loginUtente(Utente utente) {
		String usernameDaCercare = utente.getUsername();
		String passwordDaCercare = utente.getPassword();
		String query = "select * from utente where username= ? AND password= ?";
		ResultSet rs = null;
		Connection connection = null;
		PreparedStatement statement = null;
		try {
			connection = datasource.getConnection();
			statement = connection.prepareStatement(query);
			statement.setString(1, usernameDaCercare);
			statement.setString(2, passwordDaCercare);
			rs = statement.executeQuery();
			boolean check = rs.next();
			
			 if (!check) {
	            utente.seteLoggato(false);
	         } 
			 else if (check) {
	            String us = rs.getString("username");
	            String psw = rs.getString("password");
	            utente.setNome(rs.getString("nome"));
	            utente.setCognome(rs.getString("cognome"));
	            utente.setEmail(rs.getString("email"));
	            utente.setData(rs.getString("data"));
	            utente.setTelefono(rs.getString("telefono"));
	            utente.setImmagineProfilo(rs.getString("immagineprofilo"));
	            utente.seteLoggato(true);
			}
		}  catch (Exception ex) {
	         
	       } finally {
	           if (rs != null)	{
	              try {
	                 rs.close();
	              } catch (Exception e) {}
	                 rs = null;
	              }
	  	
	           if (statement != null) {
	              try {
	            	  statement.close();
	              } catch (Exception e) {}
	              statement = null;
	              }
	  	
	           if (connection != null) {
	              try {
	            	  connection.close();
	              } catch (Exception e) {
	              }

	              connection = null;
	           }
	        }
		return utente;
}	
	public void aggiornaImmagine(String path, Utente u) {
		Connection connection = this.datasource.getConnection();
		String query = "update utente set immagineprofilo = ? where username = ?";
		PreparedStatement ps = null;
		try {
			ps = connection.prepareStatement(query);
			ps.setString(1, path);
			ps.setString(2, u.getUsername());
			ps.executeUpdate();
		} catch(SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			if (connection != null) {
	              try {
	            	  connection.close();
	              } catch (SQLException e) {
	            	  throw new PersistenceException(e.getMessage());
	           }	
			}
		}
	}
	public void cambiaPassword(String username, String password) {
		Connection connection = this.datasource.getConnection();
		String query = "update utente set password = ? where username = ?";
		PreparedStatement ps = null;
		try {
			ps = connection.prepareStatement(query);
			ps.setString(1, password);
			ps.setString(2, username);
			ps.executeUpdate();
		} catch(SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			if (connection != null) {
	              try {
	            	  connection.close();
	              } catch (SQLException e) {
	            	  throw new PersistenceException(e.getMessage());
	           }	
			}
		}
	}
	public Utente cercaPerUsername(String username) {
		Utente utente = new Utente();
		String query = "select * from utente where username= ?";
		ResultSet rs = null;
		PreparedStatement ps = null;
		Connection connection = null;
		try {
			connection = this.datasource.getConnection();
			ps = connection.prepareStatement(query);
			ps.setString(1, username);
			rs = ps.executeQuery();
			boolean check = rs.next();
			if(check) {
				utente.setUsername(rs.getString("username"));
				utente.setPassword(rs.getString("password"));
			}
		} catch (Exception e) {
			
		}finally {
	           if (rs != null)	{
		              try {
		                 rs.close();
		              } catch (Exception e) {}
		                 rs = null;
		              }
		  	
		           if (ps != null) {
		              try {
		            	  ps.close();
		              } catch (Exception e) {}
		              ps = null;
		              }
		  	
		           if (connection != null) {
		              try {
		            	  connection.close();
		              } catch (Exception e) {
		              }

		              connection = null;
		           }
		        }
		
		return utente;
	}
}
