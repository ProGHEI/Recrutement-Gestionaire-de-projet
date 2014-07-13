package model;

public class User {
	
	private Integer id;
	private String name;
	private String pass;
	private String mail;
	private String role;
	private String webcal;
	private String salt;
		
	public User (Integer id, String name, String pass, String mail, String role, String webcal, String salt) {
		this.id = id;
		this.name = name;
		this.pass = pass;
		this.mail = mail;
		this.role = role;
		this.webcal = webcal;
		this.salt = salt;
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

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	
	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

}
