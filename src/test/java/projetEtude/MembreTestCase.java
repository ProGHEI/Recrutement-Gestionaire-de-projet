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
	
//	@Before
//	public void purgeBDD() throws Exception {
//		Connection connection = DataSourceProvider.getDataSource()
//				.getConnection();
//		Statement stmt = connection.createStatement();
//		stmt.executeUpdate("DELETE FROM user");
//		stmt.executeUpdate("INSERT INTO `user`(`name`,`pass`,`mail`,`status`) VALUES ('user1','passuser1', 'mail@user1.com','bloque')");
//		stmt.executeUpdate("INSERT INTO `user`(`name`,`pass`,`mail`,`status`) VALUES ('user2','passuser2', 'mail@user2.com','bloque')");
//		stmt.close();
//		connection.close();
//	}
	
	private MembreDao membreDao = new MembreDao();
	
//	@Test
//	public void testAddMembre() throws Exception {
//		Membre membre = new Membre("test", "test@test.com", "password", "bloque");
//		membreDao.addMembre(membre);
//
//		Connection connection = DataSourceProvider.getDataSource()
//				.getConnection();
//		Statement stmt = connection.createStatement();
//		ResultSet results = stmt.executeQuery("SELECT * FROM user WHERE name='test'");
//		Assert.assertTrue(results.next());
//		Assert.assertNotNull(results.getInt("id"));
//		Assert.assertEquals("test@test.com", results.getString("mail"));
//		Assert.assertEquals("password", results.getString("pass"));
//		Assert.assertEquals("bloque", results.getString("status"));
//
//		results.close();
//		stmt.close();
//		connection.close();
//	}
	
	
//	@Test
//	public void testDeleteMembre() throws Exception {
//		Membre membre = new Membre("user1", null, null, null);
//		membreDao.deleteMembre(membre);
//		
//		Connection connection = DataSourceProvider.getDataSource()
//				.getConnection();
//		Statement stmt = connection.createStatement();
//		ResultSet results = stmt.executeQuery("SELECT * FROM user WHERE name='user1'");
//		Assert.assertFalse(results.next());
//		
//		results.close();
//		stmt.close();
//		connection.close();
//
//	}
	
//	@Test
//	public void testActiverMembre() throws Exception {
//		Membre membre = new Membre("test", "test@test.com", "password", "bloque");
//		membreDao.addMembre(membre);
//		membreDao.activerMembre(membre);
//
//		Connection connection = DataSourceProvider.getDataSource()
//				.getConnection();
//		Statement stmt = connection.createStatement();
//		ResultSet results = stmt.executeQuery("SELECT * FROM user WHERE name='test'");
//		Assert.assertTrue(results.next());
//		Assert.assertEquals("actif", results.getString("status"));
//
//		results.close();
//		stmt.close();
//		connection.close();
//	}
	
	@Test
	public void testDesactiverMembre() throws Exception {
		Membre membre = new Membre("test", "test@test.com", "password", "actif");
		membreDao.addMembre(membre);
		membreDao.desactiverMembre(membre);

		Connection connection = DataSourceProvider.getDataSource()
				.getConnection();
		Statement stmt = connection.createStatement();
		ResultSet results = stmt.executeQuery("SELECT * FROM user WHERE name='test'");
		Assert.assertTrue(results.next());
		Assert.assertEquals("bloque", results.getString("status"));

		results.close();
		stmt.close();
		connection.close();
	}

}
