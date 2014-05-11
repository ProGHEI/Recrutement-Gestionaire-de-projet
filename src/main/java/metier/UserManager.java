package metier;

import java.util.List;

import model.User;
import dao.UserDao;

public class UserManager {
	
private static UserManager instance;
	
	private UserDao userDao;
	
	public static UserManager getInstance() {
		if(instance == null) {
			instance = new UserManager();
		}
		return instance;
	}
	
	private UserManager(){
		userDao = new UserDao();
	}
	
	public List<User> getAllUser() {
		return userDao.getAllUser();
	}

	public User getUser(String user) {
		return userDao.getUser(user);
	}

	public void updateUser(User user) {
		userDao.updateUser(user);
		
	}

	public void ajouterUser(User user) {
		userDao.ajouterUser(user);
		
	}

}
