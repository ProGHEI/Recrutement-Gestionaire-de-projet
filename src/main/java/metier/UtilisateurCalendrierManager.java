package metier;

import java.util.List;

import model.UtilisateurCalendrier;
import dao.UtilisateurCalendrierDao;

public class UtilisateurCalendrierManager {
	
private static UtilisateurCalendrierManager instance;
	
	private UtilisateurCalendrierDao utilisateurCalendrierDao;
	
	public static UtilisateurCalendrierManager getInstance() {
		if(instance == null) {
			instance = new UtilisateurCalendrierManager();
		}
		return instance;
	}
	
	private UtilisateurCalendrierManager(){
		utilisateurCalendrierDao = new UtilisateurCalendrierDao();
	}

	public List<UtilisateurCalendrier> listerWebcal() {
		return utilisateurCalendrierDao.listerWebcal();
	}

}
