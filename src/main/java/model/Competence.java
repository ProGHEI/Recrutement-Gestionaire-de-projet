package model;

public class Competence {
	private Integer id_competence;
	private Integer nom_competence;
	

	public Competence(Integer civilite, Integer idetudiant, String nom,
			String prenom, String telephone, String email, String domaine,
			String promo, String postevise, Integer eleverealisateur,
			Integer postulant) {
		this.id_competence = id_competence;
		this.nom_competence = nom_competence;

	}

	public Integer getId_Competence() {
		return id_competence;
	}

	public void setId_Competence(Integer id_competence) {
		this.id_competence = id_competence;
	}

	public Integer getNom_Competence() {
		return nom_competence;
	}

	public void setNom_Competence(Integer nom_competence) {
		this.nom_competence = nom_competence;
	}
}
