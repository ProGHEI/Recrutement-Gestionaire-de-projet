package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import java.util.Date;

import model.Event;

public class EventDao {
	
	public void afficherEvent(Event event) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("SELECT * FROM `date` WHERE idMembre=?");
			stmt.setInt(1, event.getIdMembre());
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	public void creerEvent(Event event) {
		
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("INSERT INTO `date` (`idMembre`,`debut`,`fin`,`intitule`,`description`,`lieu`) VALUES(?,?,?,?,?,?)");
			stmt.setInt(1, event.getIdMembre());
			stmt.setDate(2, event.getDebut());
			stmt.setDate(3, event.getFin());
			stmt.setString(4, event.getIntitule());
			stmt.setString(5, event.getDescription());
			stmt.setString(6, event.getLieu());
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
