package model;

public class Evenement {
	
	private Integer id;
	private String libelle;
	private String dateDebut;
	private String heureDebut;
	private String minuteDebut;
	private String dateFin;
	private String heureFin;
	private String minuteFin;
	
	public Evenement (Integer id, String libelle, String dateDebut, String heureDebut, String minuteDebut, String dateFin, String heureFin, String minuteFin) {
		this.id = id;
		this.libelle = libelle;
		this.dateDebut = dateDebut;
		this.heureDebut = heureDebut;
		this.minuteDebut = minuteDebut;
		this.dateFin = dateFin;
		this.heureFin = heureFin;
		this.minuteFin = minuteFin;
	}
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	public String getDateDebut() {
		return dateDebut;
	}

	public void setDateDebut(String dateDebut) {
		this.dateDebut = dateDebut;
	}

	public String getHeureDebut() {
		return heureDebut;
	}

	public void setHeureDebut(String heureDebut) {
		this.heureDebut = heureDebut;
	}

	public String getMinuteDebut() {
		return minuteDebut;
	}

	public void setMinuteDebut(String minuteDebut) {
		this.minuteDebut = minuteDebut;
	}

	public String getDateFin() {
		return dateFin;
	}

	public void setDateFin(String dateFin) {
		this.dateFin = dateFin;
	}

	public String getHeureFin() {
		return heureFin;
	}

	public void setHeureFin(String heureFin) {
		this.heureFin = heureFin;
	}

	public String getMinuteFin() {
		return minuteFin;
	}

	public void setMinuteFin(String minuteFin) {
		this.minuteFin = minuteFin;
	}

	
	
	
}
