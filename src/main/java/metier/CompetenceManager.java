package metier;

import dao.CompetenceDao;

public class CompetenceManager {
	
private static CompetenceManager instance;
	
	private CompetenceDao competenceDao;
	
	public static CompetenceManager getInstance() {
		if(instance == null) {
			instance = new CompetenceManager();
		}
		return instance;
	}
	
	private CompetenceManager(){
		competenceDao = new CompetenceDao();
	}
	
	public void CreateDetenir(Integer id_competence, Integer bareme,Integer idetudiant) {
		competenceDao.CreateDetenir(id_competence,bareme, idetudiant);
		
	}

}
