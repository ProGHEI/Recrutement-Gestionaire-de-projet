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

	public List<User> getAllUser() {
		List<User> liste = new ArrayList<User>();
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			Statement stmt = connection.createStatement();
			ResultSet results = stmt.executeQuery("SELECT * FROM `user`");

			while (results.next()) {
				Integer id = results.getInt("id");
				String name = results.getString("name");
				String pass = results.getString("pass");
				String mail = results.getString("mail");
				String role = results.getString("role");
				String webcal = results.getString("webcal");
				
				User utilisateur = new User(id, name, pass, mail, role, webcal);
				
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

			user = new User(results.getInt("id"), results.getString("name"),results.getString("pass"),results.getString("mail"), results.getString("role"), results.getString("webcal"));
			
			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

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

	public void ajouterUser(User user) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("INSERT INTO `user` (`id`,`name`,`pass`,`mail`,`status`,`role`,`webcal`) VALUES (null,?,?,?,'actif',?,?)");
			stmt.setString(1, user.getName());
			stmt.setString(2, user.getPass());
			stmt.setString(3, user.getMail());
			stmt.setString(4, user.getRole());
			stmt.setString(5, user.getWebcal());
			stmt.executeUpdate();
			
			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
}
