package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.UtilisateurCalendrier;

public class UtilisateurCalendrierDao {

	public List<UtilisateurCalendrier> getAllWebcal() {
		List<UtilisateurCalendrier> liste = new ArrayList<UtilisateurCalendrier>();
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			Statement stmt = connection.createStatement();
			ResultSet results = stmt.executeQuery("SELECT * FROM `user`");

			while (results.next()) {
				String name = results.getString("name");
				String webcal = results.getString("webcal");
				
				UtilisateurCalendrier utilisateur = new UtilisateurCalendrier(name,webcal);
				
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
}
