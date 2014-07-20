package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Evenement;

public class EvenementDao {
	
	/**
	 * Retourne tous les évènements relatifs à un User sous forme de JSON dans la page <code>eventJSON</code>.
	 * <p>
	 * Cette page sert de source à FullCalendar (pour le calendrier ProG)
	 * 
	 * @param idUser
	 * 
	 */

	public List<String> listerEvenementJSON(Integer idUser) {
		List<String> liste = new ArrayList<String>();
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();
			
			PreparedStatement stmt = connection
					.prepareStatement("SELECT * FROM evenement WHERE idUser=?");
			stmt.setInt(1, idUser);
			ResultSet results = stmt.executeQuery();

			while (results.next()) {
				String JSON = "";
				String libelle = results.getString("libelle");
				String dateDebut = results.getString("dateDebut");
				String heureDebut = results.getString("heureDebut");
				String minuteDebut = results.getString("minuteDebut");
				String dateFin = results.getString("dateFin");
				String heureFin = results.getString("heureFin");
				String minuteFin = results.getString("minuteFin");
				
				//On met un antislash avant les guillemets pour que ceux ci soient bien comptés en tant que caractères
				JSON = JSON+"{\"title\":\""+libelle+"\",\"start\":\""+dateDebut+"T"+heureDebut+":"+minuteDebut+":00\",\"end\":\""+dateFin+"T"+heureFin+":"+minuteFin+":00\"}";
				
				liste.add(JSON);
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
	 * Ajoute un nouvel évènement
	 * 
	 * @param newEvenement
	 * @param idUser
	 */
	
	public void ajouterEvenement(Evenement newEvenement, Integer idUser) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("INSERT INTO `evenement`(`id`,`libelle`,`dateDebut`,`heureDebut`,`minuteDebut`,`dateFin`,`heureFin`,`minuteFin`,`idUser`) VALUES(null,?,?,?,?,?,?,?,?)");
			stmt.setString(1, newEvenement.getLibelle());
			stmt.setString(2, newEvenement.getDateDebut());
			stmt.setString(3, newEvenement.getHeureDebut());
			stmt.setString(4, newEvenement.getMinuteDebut());
			stmt.setString(5, newEvenement.getDateFin());
			stmt.setString(6, newEvenement.getHeureFin());
			stmt.setString(7, newEvenement.getMinuteFin());
			stmt.setInt(8, idUser);
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}
	
	/**
	 * Retourne tous les évènements
	 * 
	 */
	
	public List<Evenement> listerEvenement() {
		List<Evenement> liste = new ArrayList<Evenement>();
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			Statement stmt = connection.createStatement();
			ResultSet results = stmt.executeQuery("SELECT * FROM `evenement` ");

			while (results.next()) {
				Integer id = results.getInt("id");
				String libelle = results.getString("libelle");
				String dateDebut = results.getString("dateDebut");
				String heureDebut = results.getString("heureDebut");
				String minuteDebut = results.getString("minuteDebut");
				String dateFin = results.getString("dateFin");
				String heureFin = results.getString("heureFin");
				String minuteFin = results.getString("minuteFin");
				
				Evenement evenement = new Evenement (id, libelle, dateDebut, heureDebut, minuteDebut, dateFin, heureFin, minuteFin);
				
				liste.add(evenement);
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
	 * Retourne l'évènement correspondant à l'id
	 * 
	 * @param idEvenement
	 * 
	 */
	
	public Evenement getEvenement(Integer idEvenement) {
		Evenement evenement = null;
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("SELECT * FROM evenement WHERE id = ?");
			stmt.setInt(1, idEvenement);
			ResultSet result = stmt.executeQuery();
			if (result.next()) {
				evenement = new Evenement(result.getInt("id"),
						result.getString("libelle"), 
						result.getString("dateDebut"), 
						result.getString("heureDebut"),
						result.getString("minuteDebut"),
						result.getString("dateFin"),
						result.getString("heureFin"),
						result.getString("minuteFin"));
			}
			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return evenement;
	}

	
	/**
	 * Fait un update d'un évènement en particulier
	 * 
	 * @param updatedEvenement
	 */
	
	public void updateEvenement(Evenement updatedEvenement) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("UPDATE `evenement` SET `libelle`=?,`dateDebut`=?,`heureDebut`=?,`minuteDebut`=?,`dateFin`=?,`heureFin`=?,`minuteFin`=? WHERE `id`=?");
			stmt.setString(1, updatedEvenement.getLibelle());
			stmt.setString(2, updatedEvenement.getDateDebut());
			stmt.setString(3, updatedEvenement.getHeureDebut());
			stmt.setString(4, updatedEvenement.getMinuteDebut());
			stmt.setString(5, updatedEvenement.getDateFin());
			stmt.setString(6, updatedEvenement.getHeureFin());
			stmt.setString(7, updatedEvenement.getMinuteFin());
			stmt.setInt(8, updatedEvenement.getId());
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	
	/**
	 * Supprime l'évènement dont l'id est passé en paramètre
	 * 
	 * @param idEvenement
	 */
	
	public void supprimerEvenement(Integer idEvenement) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("DELETE FROM `evenement` WHERE `id`= ?");
			stmt.setInt(1, idEvenement);
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	

	
}
