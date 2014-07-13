package model;

public class Membre {

	private Integer civilite;
	private String idetudiant;
	private String nom;
	private String prenom;
	private String telephone;
	private String email;
	private String domaine;
	private Integer promo;
	private String postevise;
	private Integer eleverealisateur;
	private Integer postulant;

	public Membre(Integer civilite, String idetudiant, String nom,
			String prenom, String telephone, String email, String domaine,
			Integer promo, String postevise, Integer eleverealisateur,
			Integer postulant) {
		this.civilite = civilite;
		this.idetudiant = idetudiant;
		this.nom = nom;
		this.prenom = prenom;
		this.telephone = telephone;
		this.email = email;
		this.domaine = domaine;
		this.promo = promo;
		this.postevise = postevise;
		this.eleverealisateur = eleverealisateur;
		this.postulant = postulant;
	}

	public Integer getCivilite() {
		return civilite;
	}

	public void setCivilite(Integer civilite) {
		this.civilite = civilite;
	}

	public String getIdetudiant() {
		return idetudiant;
	}

	public void setIdetudiant(String idetudiant) {
		this.idetudiant = idetudiant;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getNom() {
		return nom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmail() {
		return email;
	}

	public void setDomaine(String domaine) {
		this.domaine = domaine;
	}

	public String getDomaine() {
		return domaine;
	}

	public void setPromo(Integer promo) {
		this.promo = promo;
	}

	public Integer getPromo() {
		return promo;
	}

	public void setPostevise(String postevise) {
		this.postevise = postevise;
	}

	public String getPostevise() {
		return postevise;
	}

	public void setEleverealisateur(Integer eleverealisateur) {
		this.eleverealisateur = eleverealisateur;
	}

	public Integer getEleverealisateur() {
		return eleverealisateur;
	}
	
	public void setPostulant(Integer postulant) {
		this.postulant = postulant;
	}

	public Integer getPostulant() {
		return postulant;
	}
}