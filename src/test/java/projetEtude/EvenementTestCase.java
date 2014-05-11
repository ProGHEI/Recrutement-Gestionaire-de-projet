package projetEtude;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Evenement;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import controllers.ListerEvenementServlet;
import dao.DataSourceProvider;
import dao.EvenementDao;

public class EvenementTestCase {
	
	@Before
	public void purgeBDD() throws Exception {
		Connection connection = DataSourceProvider.getDataSource()
				.getConnection();
		Statement stmt = connection.createStatement();
		stmt.executeUpdate("DELETE FROM evenement");
		stmt.executeUpdate("INSERT INTO `evenement`(`id`,`libelle`,`dateDebut`,`heureDebut`,`minuteDebut`,`dateFin`,`heureFin`,`minuteFin`) VALUES (3,'Evenement1', '2014-05-10','10','00','2014-05-10','15','00')");
		stmt.executeUpdate("INSERT INTO `evenement`(`id`,`libelle`,`dateDebut`,`heureDebut`,`minuteDebut`,`dateFin`,`heureFin`,`minuteFin`) VALUES (4,'Evenement2', '2014-05-11','11','00','2014-05-11','16','00')");
		stmt.executeUpdate("INSERT INTO `evenement`(`id`,`libelle`,`dateDebut`,`heureDebut`,`minuteDebut`,`dateFin`,`heureFin`,`minuteFin`) VALUES (5,'Evenement3', '2014-05-11','11','00','2014-05-11','16','00')");
		stmt.close();
		connection.close();
	}
	
	private EvenementDao evenementDao = new EvenementDao();
	
	// Pour ce test, modifier la méthode pour renter la valeur voulue pour "id"
	
//	@Test
//	public void testAjouterEvenement() throws Exception {
//		Evenement evenement = new Evenement(1, "Soutenance", "2014-05-19", "15", "00", "2014-05-19", "16", "00");
//		evenementDao.ajouterEvenement(evenement);
//
//		Connection connection = DataSourceProvider.getDataSource()
//				.getConnection();
//		Statement stmt = connection.createStatement();
//		ResultSet results = stmt.executeQuery("SELECT * FROM `evenement` WHERE `id`=1");
//		Assert.assertTrue(results.next());
//		Assert.assertNotNull(results.getInt("id"));
//		Assert.assertEquals("Soutenance", results.getString("libelle"));
//		Assert.assertEquals("2014-05-19", results.getString("dateDebut"));
//		Assert.assertEquals("15", results.getString("heureDebut"));
//		Assert.assertEquals("00", results.getString("minuteDebut"));
//		Assert.assertEquals("2014-05-19", results.getString("dateFin"));
//		Assert.assertEquals("16", results.getString("heureFin"));
//		Assert.assertEquals("00", results.getString("minuteFin"));
//
//		results.close();
//		stmt.close();
//		connection.close();
//	}
	
	
//	@Test
//	public void testGetEvenement() throws Exception {
//		Evenement evenement = evenementDao.getEvenement(3);
//
//		Connection connection = DataSourceProvider.getDataSource()
//				.getConnection();
//		Statement stmt = connection.createStatement();
//		ResultSet results = stmt.executeQuery("SELECT * FROM `evenement` WHERE `id`=3");
//		Assert.assertTrue(results.next());
//		Assert.assertEquals((int) evenement.getId(), results.getInt("id"));
//		Assert.assertEquals(evenement.getLibelle(), results.getString("libelle"));
//		Assert.assertEquals(evenement.getDateDebut(), results.getString("dateDebut"));
//		Assert.assertEquals(evenement.getHeureDebut(), results.getString("heureDebut"));
//		Assert.assertEquals(evenement.getMinuteDebut(), results.getString("minuteDebut"));
//		Assert.assertEquals(evenement.getDateFin(), results.getString("dateFin"));
//		Assert.assertEquals(evenement.getHeureFin(), results.getString("heureFin"));
//		Assert.assertEquals(evenement.getMinuteFin(), results.getString("minuteFin"));
//
//		results.close();
//		stmt.close();
//		connection.close();
//	}
	
//	@Test
//	public void testUpdateEvenement() throws Exception {
//		Evenement evenement = new Evenement(4, "Soutenance", "2014-05-19", "15", "00", "2014-05-19", "16", "00");
//		evenementDao.updateEvenement(evenement);
//
//		Connection connection = DataSourceProvider.getDataSource()
//				.getConnection();
//		Statement stmt = connection.createStatement();
//		ResultSet results = stmt.executeQuery("SELECT * FROM `evenement` WHERE `id`=4");
//		Assert.assertTrue(results.next());
//		Assert.assertNotNull(results.getInt("id"));
//		Assert.assertEquals("Soutenance", results.getString("libelle"));
//		Assert.assertEquals("2014-05-19", results.getString("dateDebut"));
//		Assert.assertEquals("15", results.getString("heureDebut"));
//		Assert.assertEquals("00", results.getString("minuteDebut"));
//		Assert.assertEquals("2014-05-19", results.getString("dateFin"));
//		Assert.assertEquals("16", results.getString("heureFin"));
//		Assert.assertEquals("00", results.getString("minuteFin"));
//
//		results.close();
//		stmt.close();
//		connection.close();
//	}
	
	
//	@Test
//	public void testSupprimerEvenement() throws Exception {
//		evenementDao.supprimerEvenement(5);
//
//		Connection connection = DataSourceProvider.getDataSource()
//				.getConnection();
//		Statement stmt = connection.createStatement();
//		ResultSet results = stmt.executeQuery("SELECT * FROM `evenement` WHERE `id`=5");
//		Assert.assertFalse(results.next());
//		results.close();
//		stmt.close();
//		connection.close();
//	}
	
//	@Test
//	public void testListerEvenement() throws Exception {
//		List<Evenement> liste = new ArrayList<Evenement>();
//		liste = evenementDao.listerEvenement();
//
//		Connection connection = DataSourceProvider.getDataSource()
//				.getConnection();
//		Statement stmt = connection.createStatement();
//		
//		ResultSet results = stmt.executeQuery("SELECT * FROM `evenement` WHERE `id`=3");
//		Assert.assertTrue(results.next());
//		Assert.assertEquals((int) liste.get(0).getId(), 3);
//		Assert.assertEquals(liste.get(0).getLibelle(), "Evenement1");
//		Assert.assertEquals(liste.get(0).getDateDebut(), "2014-05-10");
//		Assert.assertEquals(liste.get(0).getHeureDebut(), "10");
//		Assert.assertEquals(liste.get(0).getMinuteDebut(), "00");
//		Assert.assertEquals(liste.get(0).getDateFin(), "2014-05-10");
//		Assert.assertEquals(liste.get(0).getHeureFin(), "15");
//		Assert.assertEquals(liste.get(0).getMinuteFin(), "00");
//		results.close();
//		
//		
//		ResultSet results1 = stmt.executeQuery("SELECT * FROM `evenement` WHERE `id`=4");
//		Assert.assertTrue(results1.next());
//		Assert.assertEquals((int) liste.get(0).getId(), 3);
//		Assert.assertEquals(liste.get(1).getLibelle(), "Evenement2");
//		Assert.assertEquals(liste.get(1).getDateDebut(), "2014-05-11");
//		Assert.assertEquals(liste.get(1).getHeureDebut(), "11");
//		Assert.assertEquals(liste.get(1).getMinuteDebut(), "00");
//		Assert.assertEquals(liste.get(1).getDateFin(), "2014-05-11");
//		Assert.assertEquals(liste.get(1).getHeureFin(), "16");
//		Assert.assertEquals(liste.get(1).getMinuteFin(), "00");
//		results1.close();
//		
//		
//		ResultSet results2 = stmt.executeQuery("SELECT * FROM `evenement` WHERE `id`=5");
//		Assert.assertTrue(results2.next());
//		Assert.assertEquals((int) liste.get(0).getId(), 3);
//		Assert.assertEquals(liste.get(2).getLibelle(), "Evenement3");
//		Assert.assertEquals(liste.get(2).getDateDebut(), "2014-05-11");
//		Assert.assertEquals(liste.get(2).getHeureDebut(), "11");
//		Assert.assertEquals(liste.get(2).getMinuteDebut(), "00");
//		Assert.assertEquals(liste.get(2).getDateFin(), "2014-05-11");
//		Assert.assertEquals(liste.get(2).getHeureFin(), "16");
//		Assert.assertEquals(liste.get(2).getMinuteFin(), "00");
//		results2.close();
//		
//		
//		stmt.close();
//		connection.close();
//		
//	}
	
	
//	@Test
//	public void testListerEvenementJSON() throws Exception {
//		List<String> liste = new ArrayList<String>();
//		liste = evenementDao.listerEvenementJSON();
//
//		Connection connection = DataSourceProvider.getDataSource()
//				.getConnection();
//		Statement stmt = connection.createStatement();
//		
//		ResultSet results = stmt.executeQuery("SELECT * FROM `evenement` WHERE `id`=3");
//		Assert.assertTrue(results.next());
//		Assert.assertEquals(liste.get(0), "{\"title\":\"Evenement1\",\"start\":\"2014-05-10T10:00:00\",\"end\":\"2014-05-10T15:00:00\"}");
//		results.close();
//		
//		
//		ResultSet results1 = stmt.executeQuery("SELECT * FROM `evenement` WHERE `id`=4");
//		Assert.assertTrue(results1.next());
//		Assert.assertEquals(liste.get(1), "{\"title\":\"Evenement2\",\"start\":\"2014-05-11T11:00:00\",\"end\":\"2014-05-11T16:00:00\"}");
//		results1.close();
//		
//		//(5,'Evenement3', '2014-05-11','11','00','2014-05-11','16','00')")
//		ResultSet results2 = stmt.executeQuery("SELECT * FROM `evenement` WHERE `id`=5");
//		Assert.assertTrue(results2.next());
//		Assert.assertEquals(liste.get(2), "{\"title\":\"Evenement3\",\"start\":\"2014-05-11T11:00:00\",\"end\":\"2014-05-11T16:00:00\"}");
//		results2.close();
//		
//		
//		stmt.close();
//		connection.close();
//		
//		
//	}

}
