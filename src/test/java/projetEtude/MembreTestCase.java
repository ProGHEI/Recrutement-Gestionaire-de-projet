package projetEtude;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import model.Membre;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import dao.DataSourceProvider;
import dao.MembreDao;

public class MembreTestCase {
	
	@Before
	public void purgeBDD() throws Exception {
		Connection connection = DataSourceProvider.getDataSource()
				.getConnection();
		Statement stmt = connection.createStatement();
		stmt.executeUpdate("DELETE FROM membre");
		stmt.executeUpdate("INSERT INTO `membre`(`civilite`,`idetudiant`,`nom`,`prenom`,`telephone`,`email`,`domaine`,`promo`,`postevise`,`eleverealisateur`,`postulant`) VALUES (1,10236, 'Dupont','Michel','0688310265','email@user2.com', 'BTP','42','Président',0 ,1)");
		stmt.executeUpdate("INSERT INTO `membre`(`civilite`,`idetudiant`,`nom`,`prenom`,`telephone`,`email`,`domaine`,`promo`,`postevise`,`eleverealisateur`,`postulant`) VALUES (1,11236, 'Dupond','Martin','0652399267','email@user3.com', 'BAA','41','Président',0 ,1)");
		stmt.executeUpdate("INSERT INTO `membre`(`civilite`,`idetudiant`,`nom`,`prenom`,`telephone`,`email`,`domaine`,`promo`,`postevise`,`eleverealisateur`,`postulant`) VALUES (1,12236, 'Meunier','Laurent','0657489216','email@user4.com', 'CM','44','Président',0 ,1)");
		stmt.executeUpdate("INSERT INTO `membre`(`civilite`,`idetudiant`,`nom`,`prenom`,`telephone`,`email`,`domaine`,`promo`,`postevise`,`eleverealisateur`,`postulant`) VALUES (0,10254, 'Rabot','Laure','0647589623','email@user5.com', 'ITI','42','DSI',0 ,1)");
		stmt.close();
		connection.close();
	}
	
	private MembreDao membreDao = new MembreDao();
	
//	@Test
//	public void testAddMembre() throws Exception {
//		Membre membre = new Membre(1,11243,"LOMBARD-PLATET","Félix","0600000000","email@hei.fr","ITI","43","DSI",0,1);
//		membreDao.addMembre(membre);
//
//		Connection connection = DataSourceProvider.getDataSource()
//				.getConnection();
//		Statement stmt = connection.createStatement();
//		ResultSet results = stmt.executeQuery("SELECT * FROM membre WHERE idetudiant=11243");
//		Assert.assertTrue(results.next());
//		Assert.assertEquals(1, results.getInt("civilite"));
//		Assert.assertEquals("LOMBARD-PLATET", results.getString("nom"));
//		Assert.assertEquals("Félix", results.getString("prenom"));
//		Assert.assertEquals("0600000000", results.getString("telephone"));
//		Assert.assertEquals("email@hei.fr", results.getString("email"));
//		Assert.assertEquals("ITI", results.getString("domaine"));
//		Assert.assertEquals("43", results.getString("promo"));
//		Assert.assertEquals("DSI", results.getString("postevise"));
//		Assert.assertEquals(0, results.getInt("eleverealisateur"));
//		Assert.assertEquals(1, results.getInt("postulant"));
//
//		results.close();
//		stmt.close();
//		connection.close();
//	}
	
	
//	@Test
//	public void testDeleteMembre() throws Exception {
//		membreDao.deleteMembre(10236);
//		
//		Connection connection = DataSourceProvider.getDataSource()
//				.getConnection();
//		Statement stmt = connection.createStatement();
//		ResultSet results = stmt.executeQuery("SELECT * FROM membre WHERE idetudiant=10236");
//		Assert.assertFalse(results.next());
//		
//		results.close();
//		stmt.close();
//		connection.close();
//
//	}
	
//	@Test
//	public void testGetNbPostulants() throws Exception {
//		membreDao.getNbPostulants("Président");
//		
//		Connection connection = DataSourceProvider.getDataSource()
//				.getConnection();
//		Statement stmt = connection.createStatement();
//		ResultSet results = stmt.executeQuery("SELECT COUNT(postevise) as nbpostulants FROM membre WHERE postevise='Président'");
//		Assert.assertTrue(results.next());
//		Assert.assertEquals(3, results.getInt("nbpostulants"));
//		
//		results.close();
//		stmt.close();
//		connection.close();
//
//	}


}
