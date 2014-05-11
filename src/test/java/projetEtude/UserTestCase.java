package projetEtude;

import java.sql.Connection;
import java.sql.ResultSet;
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
	
	
	@Test
	public void testGetAllWebcal() throws Exception {
		List<User> liste = new ArrayList<User>();
		liste = userDao.getAllUser();

		Connection connection = DataSourceProvider.getDataSource()
				.getConnection();
		Statement stmt = connection.createStatement();
		
		ResultSet results = stmt.executeQuery("SELECT * FROM `user` WHERE `id`=1");
		Assert.assertTrue(results.next());
		Assert.assertEquals(liste.get(0).getName(), "user1");
		Assert.assertEquals(liste.get(0).getWebcal(), "https://www.google.com/calendar/feeds/9v6rkge5agbn8ijag8ilch67kn995gde%40import.calendar.google.com/public/basic");
		results.close();
		
		
		ResultSet results1 = stmt.executeQuery("SELECT * FROM `user` WHERE `id`=2");
		Assert.assertTrue(results1.next());
		Assert.assertEquals(liste.get(1).getName(), "user2");
		Assert.assertEquals(liste.get(1).getWebcal(), "https://www.google.com/calendar/feeds/s8tcnkpm7uj4rkfqcc4bb9f8d30n121o%40import.calendar.google.com/public/basic");
		results1.close();
		
		stmt.close();
		connection.close();
		
	}

}
