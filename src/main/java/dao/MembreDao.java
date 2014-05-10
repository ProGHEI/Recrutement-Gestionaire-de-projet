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
					.prepareStatement("INSERT INTO `membre`(`civilite`,`idetudiant`,`nom`,`prenom`,`telephone`,`email`,`domaine`,`promo`,`postevise`,`eleverealisateur`,`postulant`) VALUES(?,?,?,?,?,?,?,?,?,?,?)");
			stmt.setInt(1, newMembre.getCivilite());
			stmt.setInt(2, newMembre.getIdetudiant());
			stmt.setString(3, newMembre.getNom());
			stmt.setString(4, newMembre.getPrenom());
			stmt.setString(5, newMembre.getTelephone());
			stmt.setString(6, newMembre.getEmail());
			stmt.setString(7, newMembre.getDomaine());
			stmt.setString(8, newMembre.getPromo());
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
		
		
	public void deleteMembre(Membre membre) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();
			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("DELETE FROM `membre` WHERE `idetudiant`=?");
			stmt.setInt(1, membre.getIdetudiant());
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int getNbPostulants(String poste){
		int nbPostulants=5;
		
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
		
		System.out.println(nbPostulants);
		return nbPostulants;
	}
	
	public void activerMembre(Membre membre) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();
			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("UPDATE membre set status='actif' WHERE idetudiant=?");
			stmt.setInt(1, membre.getIdetudiant());
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
					.prepareStatement("UPDATE membre set status='bloque' WHERE idetudiant=?");
			stmt.setInt(1, membre.getIdetudiant());
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
