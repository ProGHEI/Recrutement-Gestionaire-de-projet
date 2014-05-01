package projetEtude;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import model.Event;

import org.junit.Assert;
import org.junit.Test;

import dao.DataSourceProvider;
import dao.EventDao;

public class EventTestCase {
	
	private EventDao eventDao = new EventDao();
	
	@Test
	public void testDesactiverMembre() throws Exception {
		Event event = new Event(150, null, null, null, null, null);
		eventDao.afficherEvent(event);

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
