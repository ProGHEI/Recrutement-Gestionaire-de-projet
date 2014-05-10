package model;

public class UtilisateurCalendrier {
	
	private String name;
	private String webcal;
		
	public UtilisateurCalendrier (String name, String webcal) {
		this.name = name;
		this.webcal = webcal;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getWebcal() {
		return webcal;
	}

	public void setWebcal(String webcal) {
		this.webcal = webcal;
	}
	
	

}
