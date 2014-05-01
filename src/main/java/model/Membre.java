package model;

public class Membre {

	private String name;
	private String mail;
    private String password;
    private String status;
    
    public Membre(String name, String mail, String password, String status) {
    	this.name = name;
		this.mail = mail;
		this.password = password;
		this.status = status;
	}


	public String getStatus() {
		return status;
	}
	
	public void setStatus(String status) {
		this.status = status;
	}
	
	public void setMail(String mail) {
	this.mail = mail;
    }
	
    public String getMail() {
	return mail;
    }

    public void setPassword(String password) {
	this.password = password;
    }
    
    public String getPassword() {
	return password;
    }

    public void setName(String name) {
	this.name = name;
    }
    
    public String getName() {
	return name;
    }
}