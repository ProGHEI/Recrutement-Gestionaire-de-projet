package metier;

import metier.MembreManager;
import model.Membre;
import dao.MembreDao;

public class MembreManager {
	
	private static MembreManager instance;
	
	private MembreDao membreDao;
	
	public static MembreManager getInstance() {
		if(instance == null) {
			instance = new MembreManager();
		}
		return instance;
	}
	
	private MembreManager(){
		membreDao = new MembreDao();
	}
	
	public Membre ajouterMembre(Membre newMembre) {
		membreDao.addMembre(newMembre);
		return newMembre;
	}
	
	public void deleteMembre(Integer id) {
		membreDao.deleteMembre(id);
	}
	
}
