package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Membre;

public class MembreDao {
	
	public void addMembre(Membre newMembre) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("INSERT INTO `user`(`name`,`pass`,`mail`,`status`) VALUES(?,?,?,'bloque')");
			stmt.setString(1, newMembre.getName());
			stmt.setString(2, newMembre.getPassword());
			stmt.setString(3, newMembre.getMail());
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
		
		
	public void deleteMembre(Membre membre) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();
			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("DELETE FROM `user` WHERE `name`=?");
			stmt.setString(1, membre.getName());
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void activerMembre(Membre membre) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();
			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("UPDATE user set status='actif' WHERE name=?");
			stmt.setString(1, membre.getName());
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void desactiverMembre(Membre membre) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();
			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("UPDATE user set status='bloque' WHERE name=?");
			stmt.setString(1, membre.getName());
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void validationMembre(String email, String motDePasse) throws Exception{
		boolean validation = false;
    	
    	try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();
			// Utiliser la connexion
			PreparedStatement stmt = connection.prepareStatement( "SELECT * FROM `user` WHERE `mail`=? AND `pass`=?"); 
			stmt.setString(1,email); 
			stmt.setString(2,motDePasse); 
			ResultSet results = stmt.executeQuery();
			if(results.next()){
				validation=true;
			}

			// Fermer la connexion
			stmt.close();
			connection.close(); 
			

		} catch (SQLException e) {
			e.printStackTrace();
		}
    	
    	if (!validation) {
			throw new Exception();
    	}
    }
	
	
	public void validationAdmin(String email, String motDePasse) throws Exception{
		boolean validation = false;
    	
    	try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();
			// Utiliser la connexion
			PreparedStatement stmt = connection.prepareStatement( "SELECT * FROM `user` WHERE `mail`=? AND `pass`=? AND `role`='admin'"); 
			stmt.setString(1,email); 
			stmt.setString(2,motDePasse); 
			ResultSet results = stmt.executeQuery();
			if(results.next()){
				validation=true;
			}

			// Fermer la connexion
			stmt.close();
			connection.close(); 
			

		} catch (SQLException e) {
			e.printStackTrace();
		}
    	
    	if (!validation) {
			throw new Exception();
    	}
    }
		
}
