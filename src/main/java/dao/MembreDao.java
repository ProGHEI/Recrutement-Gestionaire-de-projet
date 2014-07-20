package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Membre;
import model.User;

public class MembreDao {
	
	/**
	 * Ajoute un nouveau membre
	 * 
	 * @param newMembre
	 */
	
	public void addMembre(Membre newMembre) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("INSERT INTO `membre`(`civilite`,`idetudiant`,`nom`,`prenom`,`telephone`,`email`,`domaine`,`promo`,`postevise`,`eleverealisateur`,`postulant`) VALUES(?,?,?,?,?,?,?,?,?,?,?)");
			stmt.setInt(1, newMembre.getCivilite());
			stmt.setString(2, newMembre.getIdetudiant());
			stmt.setString(3, newMembre.getNom());
			stmt.setString(4, newMembre.getPrenom());
			stmt.setString(5, newMembre.getTelephone());
			stmt.setString(6, newMembre.getEmail());
			stmt.setString(7, newMembre.getDomaine());
			stmt.setInt(8, newMembre.getPromo());
			stmt.setString(9, newMembre.getPostevise());
			stmt.setInt(10, newMembre.getEleverealisateur());
			stmt.setInt(11, newMembre.getPostulant());
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
		
		
	/**
	 * Retourne le nombre de postulant pour un poste
	 * 
	 * @param poste
	 * 
	 */
	
	public int getNbPostulants(String poste){
		int nbPostulants=0;
		
		// recuperation de la cl� classe la plus recente
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();
			
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement("SELECT COUNT(postevise) as nbpostulants FROM membre WHERE postevise=?");
			
			stmt.setString(1,poste);
			ResultSet results = stmt.executeQuery();
			results.next();	
			
			nbPostulants=results.getInt("nbpostulants");
			
			
			// Fermer la connexion
			results.close();
			stmt.close();
			connection.close();
			
			}
		catch (SQLException e) {
							e.printStackTrace();
						}
	
		return nbPostulants;
	}
	
	
	/**
	 * 
	 * Retourne l'ensemble de tous les membres sous forme d'ArrayList
	 * 
	 */
	
	public List<Membre> getAllMembre() {
		List<Membre> liste = new ArrayList<Membre>();
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			Statement stmt = connection.createStatement();
			ResultSet results = stmt.executeQuery("SELECT * FROM membre");

			while (results.next()) {
				Integer civilite = results.getInt("civilite");
				String idetudiant = results.getString("idetudiant");
				String nom = results.getString("nom");
				String prenom = results.getString("prenom");
				String telephone = results.getString("telephone");
				String email = results.getString("email");
				String domaine = results.getString("domaine");
				Integer promo = results.getInt("promo");
				String postevise = results.getString("postevise");
				Integer eleverealisateur = results.getInt("eleverealisateur");
				Integer postulant = results.getInt("postulant");
				
				Membre membre = new Membre(civilite, idetudiant, nom, 
						prenom, telephone, email, domaine, 
						promo, postevise, eleverealisateur, 
						postulant);
				
				liste.add(membre);
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
