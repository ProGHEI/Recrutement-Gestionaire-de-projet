package projetEtude;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.User;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import dao.DataSourceProvider;
import dao.UserDao;

public class UserTestCase {
	
	@Before
	public void purgeBDD() throws Exception {
		Connection connection = DataSourceProvider.getDataSource()
				.getConnection();
		Statement stmt = connection.createStatement();
		stmt.executeUpdate("DELETE FROM user");
		stmt.executeUpdate("INSERT INTO `user`(`id`,`name`,`pass`,`mail`,`status`,`role`,`webcal`) VALUES (1, 'user1', 'passuser1', 'mail@user1.com', 'actif', 'Admin', 'https://www.google.com/calendar/feeds/9v6rkge5agbn8ijag8ilch67kn995gde%40import.calendar.google.com/public/basic')");
		stmt.executeUpdate("INSERT INTO `user`(`id`,`name`,`pass`,`mail`,`status`,`role`,`webcal`) VALUES (2,'user2','passuser2', 'mail@user2.com','actif','Président','https://www.google.com/calendar/feeds/s8tcnkpm7uj4rkfqcc4bb9f8d30n121o%40import.calendar.google.com/public/basic')");
		stmt.close();
		connection.close();
	}
	
	private UserDao userDao = new UserDao();
	
	
//	@Test
//	public void testGetAllUser() throws Exception {
//		List<User> liste = new ArrayList<User>();
//		liste = userDao.getAllUser();
//		
//		Connection connection = DataSourceProvider.getDataSource()
//				.getConnection();
//		Statement stmt = connection.createStatement();
//		
//		ResultSet results = stmt.executeQuery("SELECT * FROM `user` WHERE `id`=1");
//		Assert.assertTrue(results.next());
//		Assert.assertEquals(liste.get(0).getName(), "user1");
//		Assert.assertEquals(liste.get(0).getWebcal(), "https://www.google.com/calendar/feeds/9v6rkge5agbn8ijag8ilch67kn995gde%40import.calendar.google.com/public/basic");
//		results.close();
//		
//		
//		ResultSet results1 = stmt.executeQuery("SELECT * FROM `user` WHERE `id`=2");
//		Assert.assertTrue(results1.next());
//		Assert.assertEquals(liste.get(1).getName(), "user2");
//		Assert.assertEquals(liste.get(1).getWebcal(), "https://www.google.com/calendar/feeds/s8tcnkpm7uj4rkfqcc4bb9f8d30n121o%40import.calendar.google.com/public/basic");
//		results1.close();
//		
//		stmt.close();
//		connection.close();
//		
//	}
	
//	@Test
//	public void testGetUser() throws Exception {
//		
//		userDao.getUser("user1");
//		
//		Connection connection = DataSourceProvider.getDataSource()
//				.getConnection();
//		Statement stmt = connection.createStatement();
//		ResultSet results = stmt.executeQuery("SELECT * FROM `user` WHERE `name`='user1'");
//		Assert.assertTrue(results.next());
//		Assert.assertEquals(1, results.getInt("id"));
//		Assert.assertEquals("user1", results.getString("name"));
//		Assert.assertEquals("passuser1", results.getString("pass"));
//		Assert.assertEquals("mail@user1.com", results.getString("mail"));
//		Assert.assertEquals("Admin", results.getString("role"));
//		Assert.assertEquals("https://www.google.com/calendar/feeds/9v6rkge5agbn8ijag8ilch67kn995gde%40import.calendar.google.com/public/basic", results.getString("webcal"));
//		
//		results.close();
//		stmt.close();
//		connection.close();
//
//	}
	
	
//	@Test
//	public void testUpdateUser(){
//		
//		User user = new User(1, "updatedUser", "password", "mail@update.com", "Trésorier", "http:webcal");
//		userDao.updateUser(user);
//		
//		try{
//		
//			Connection connection = DataSourceProvider.getDataSource()
//					.getConnection();
//			
//			Statement stmt = connection.createStatement();
//			ResultSet results = stmt.executeQuery("SELECT * FROM `user` WHERE `id`=1");
//			Assert.assertTrue(results.next());
//			Assert.assertEquals("updatedUser", results.getString("name"));
//			Assert.assertEquals("password", results.getString("pass"));
//			Assert.assertEquals("mail@update.com", results.getString("mail"));
//			Assert.assertEquals("actif", results.getString("status"));
//			Assert.assertEquals("Trésorier", results.getString("role"));
//			Assert.assertEquals("http:webcal", results.getString("webcal"));
//			
//			results.close();
//			stmt.close();
//			connection.close();
//			
//		}catch (SQLException e) {
//			e.printStackTrace();
//		}
//		}
	
	
	// Pour ce test, on modifie la méthode pour que l'id ait bien une valeur connue
	
//	@Test
//	public void testAjouterUser(){
//		User newUser = new User(5, "newUser", "newpassword", "mail@new.com", "DSI", "http:webcal");
//		userDao.ajouterUser(newUser);
//		
//		try{
//			Connection connection = DataSourceProvider.getDataSource()
//					.getConnection();
//			
//			Statement stmt = connection.createStatement();
//			ResultSet results = stmt.executeQuery("SELECT * FROM `user` WHERE `id`=5");
//			Assert.assertTrue(results.next());
//			Assert.assertEquals("newUser", results.getString("name"));
//			Assert.assertEquals("newpassword", results.getString("pass"));
//			Assert.assertEquals("mail@new.com", results.getString("mail"));
//			Assert.assertEquals("actif", results.getString("status"));
//			Assert.assertEquals("DSI", results.getString("role"));
//			Assert.assertEquals("http:webcal", results.getString("webcal"));
//			
//			results.close();
//			stmt.close();
//			connection.close();
//			
//			
//		}catch (SQLException e){
//			e.printStackTrace();
//		}
//	}
	
	
	@Test
	public void testSupprimerUser(){
		userDao.supprimerUser(2);
		
		try {
			Connection connection = DataSourceProvider.getDataSource()
					.getConnection();
				
			Statement stmt = connection.createStatement();
			ResultSet results = stmt.executeQuery("SELECT * FROM `evenement` WHERE `id`=2");
			Assert.assertFalse(results.next());
			results.close();
			stmt.close();
			connection.close();
		}
				
		catch (SQLException e) {
				
			e.printStackTrace();
		}
	
	}
	
}


