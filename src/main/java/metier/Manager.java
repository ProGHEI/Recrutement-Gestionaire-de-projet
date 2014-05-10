package metier;

import metier.Manager;
import model.Membre;
import dao.MembreDao;

public class Manager {
	
	private static Manager instance;
	
	private MembreDao membreDao;
	
	public static Manager getInstance() {
		if(instance == null) {
			instance = new Manager();
		}
		return instance;
	}
	
	private Manager(){
		membreDao = new MembreDao();
	}
	
	
	public Membre ajouterMembre(Membre newMembre) {
		membreDao.addMembre(newMembre);
		return newMembre;
	}
	
	public Membre deleteMembre(Membre newMembre) {
		membreDao.deleteMembre(newMembre);
		return newMembre;
	}
	
	/*public Membre activerMembre(Membre newMembre) {
		membreDao.activerMembre(newMembre);
		return newMembre;
	}
	
	public Membre desactiverMembre(Membre newMembre) {
		membreDao.desactiverMembre(newMembre);
		return newMembre;
	}*/

	public int getNbPostulants(String poste) {
		// TODO Auto-generated method stub
		return membreDao.getNbPostulants(poste);
	}

}
