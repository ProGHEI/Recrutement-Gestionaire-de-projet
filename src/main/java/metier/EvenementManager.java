package metier;

import java.util.List;

import model.Evenement;
import dao.EvenementDao;

public class EvenementManager {
	
private static EvenementManager instance;
	
	private EvenementDao evenementDao;
	
	public static EvenementManager getInstance() {
		if(instance == null) {
			instance = new EvenementManager();
		}
		return instance;
	}
	
	private EvenementManager(){
		evenementDao = new EvenementDao();
	}

	public List<String> listerEvenementJSON() {
		return evenementDao.listerEvenementJSON();
	}
	
	public List<Evenement> listerEvenement() {
		return evenementDao.listerEvenement();
	}

	public Evenement ajouterEvenement(Evenement newEvenement) {
		evenementDao.ajouterEvenement(newEvenement);
		return newEvenement;
		
	}

	public Evenement getEvenement(Integer idEvenement) {
		return evenementDao.getEvenement(idEvenement);
	}

	public void updateEvenement(Evenement updatedEvenement) {
		evenementDao.updateEvenement(updatedEvenement);
		
	}

	public void supprimerEvenement(Integer idEvenement) {
		evenementDao.supprimerEvenement(idEvenement);
		
	}

}
