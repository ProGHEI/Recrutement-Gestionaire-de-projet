package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
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


	
		
}
