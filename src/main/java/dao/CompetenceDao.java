package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Competence;

public class CompetenceDao {
	
	/*
	 * Cette Dao permet d'introduire dans la table 'detenir' qui est la table de jointure entre les tables membre et compétence une note (ici noté 'bareme')
	 * que l'élève réalisateur s'est attribué sur une compétence donnée.
	 * <p>
	 * Elle récupère donc id_competence de la table 'compétence' et idetudiant de la table 'membre'.
	 */
	public void CreateDetenir(Integer idCompetence, Integer bareme, String idetudiant) {
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();

			// Utiliser la connexion
			PreparedStatement stmt = connection
					.prepareStatement("INSERT INTO `detenir`(`id_competence`,`bareme`,`idetudiant`) VALUES(?,?,?)");
			stmt.setInt(1, idCompetence);
			stmt.setInt(2, bareme);
			stmt.setString(3, idetudiant);
			stmt.executeUpdate();

			// Fermer la connexion
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
