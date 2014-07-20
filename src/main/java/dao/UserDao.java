package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;

import model.User;

public class UserDao {

	/**
	 * Retourne tous les users sous forme d'ArrayList
	 * 
	 */
	
	public List<User> getAllUser() {
		List<User> liste = new ArrayList<User>();
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			Statement stmt = connection.createStatement();
			ResultSet results = stmt.executeQuery("SELECT * FROM user");

			while (results.next()) {
				Integer id = results.getInt("id");
				String name = results.getString("name");
				String pass = results.getString("pass");
				String mail = results.getString("mail");
				String role = results.getString("role");
				String webcal = results.getString("webcal");
				
				User utilisateur = new User(id, name, pass, mail, role, webcal, null);
				
				liste.add(utilisateur);
			}

			// Fermer la connexion
			results.close();
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return liste;
	}
	
	
	/**
	 * Retourne l'user dont le nom est passé en paramètre
	 * 
	 * @param name
	 * 
	 */
	
	public User getUser(String name) {
		User user = null;
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("SELECT * FROM user WHERE name = ?");
			stmt.setString(1, name);
			ResultSet results = stmt.executeQuery();
			results.next();
				user = new User(results.getInt("id"),
						results.getString("name"), 
						results.getString("pass"), 
						results.getString("mail"),
						results.getString("role"),
						results.getString("webcal"), null);
				
			
			
			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

	
	/**
	 * Fait un update d'un user
	 * 
	 * @param user
	 */
	
	public void updateUser(User user) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("UPDATE `user` SET `name`=?, `pass`=?, `mail`=?, `role`=?, `webcal`=?  WHERE `id`=?");
			stmt.setString(1, user.getName());
			stmt.setString(2, user.getPass());
			stmt.setString(3, user.getMail());
			stmt.setString(4, user.getRole());
			stmt.setString(5, user.getWebcal());
			stmt.setInt(6, user.getId());
			stmt.executeUpdate();
			
			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	
	/**
	 * Ajoute un nouvel user
	 * 
	 * @param user
	 */
	
	public void ajouterUser(User user) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("INSERT INTO `user` (`id`,`name`,`pass`,`mail`,`status`,`role`,`webcal`,`salt`) VALUES (null,?,?,?,'actif',?,?,?)");
			stmt.setString(1, user.getName());
			stmt.setString(2, user.getPass());
			stmt.setString(3, user.getMail());
			stmt.setString(4, user.getRole());
			stmt.setString(5, user.getWebcal());
			stmt.setString(6, user.getSalt());
			stmt.executeUpdate();
			
			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	/**
	 * Supprime l'user dont l'id est passé en paramètre
	 * 
	 * @param id
	 */
	
	public void supprimerUser(Integer id) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();
			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("DELETE FROM `user` WHERE `id`=?");
			stmt.setInt(1, id);
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
