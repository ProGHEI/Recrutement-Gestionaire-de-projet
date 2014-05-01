package model;

import java.util.Date;

public class Event {

	private int idMembre;
	private Date debut;
	private Date fin;
    private String intitule;
    private String description;
    private String lieu;
    
    public Event(int idMembre, Date debut, Date fin, String intitule, String description, String lieu) {
		this.idMembre = idMembre;
    	this.debut = debut;
		this.fin = fin;
		this.intitule = intitule;
		this.description = description;
		this.lieu = lieu;
	}
    
    

	public int getIdMembre() {
		return idMembre;
	}

	public void setIdMembre(int idMembre) {
		this.idMembre = idMembre;
	}

	public Date getDebut() {
		return debut;
	}

	public void setDebut(Date debut) {
		this.debut = debut;
	}

	public Date getFin() {
		return fin;
	}

	public void setFin(Date fin) {
		this.fin = fin;
	}

	public String getIntitule() {
		return intitule;
	}

	public void setIntitule(String intitule) {
		this.intitule = intitule;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getLieu() {
		return lieu;
	}

	public void setLieu(String lieu) {
		this.lieu = lieu;
	}


}