package controllers;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.UserManager;
import model.User;


public class AjouterMembreServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher view = request.getRequestDispatcher("admin/ajouterMembre.jsp");
		view.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<User> liste = UserManager.getInstance().getAllUser();
		
		String name = request.getParameter("name");
		String mail = request.getParameter("mail");
		String role = request.getParameter("role");
		String webcal = request.getParameter("webcal");
		String pass = request.getParameter("pass");
		String pass2 = request.getParameter("pass2");
		
		Pattern pEmail = Pattern.compile("^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@hei.fr$");
		Matcher mEmail = pEmail.matcher(mail);
		
		Boolean doublon=false;
		for (int i = 0; i < liste.size(); i++) {
			if(liste.get(i).getMail().equals(mail)){
				doublon=true;
			}
		}
		
		if(!pass2.equals(pass) || doublon || !mEmail.matches()){
			response.sendRedirect("ajouterMembre");
		}
		else{
			String salt = null;
			
				try {
					salt = getSalt();
				} catch (NoSuchAlgorithmException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
			
			User user = new User (null, name, get_SHA_512_SecurePassword(pass, salt), mail, role, webcal, salt);
			
			UserManager.getInstance().ajouterUser(user);
			
			response.sendRedirect("administration");
				
		}
	}


	private static String get_SHA_512_SecurePassword(String passwordToHash, String salt)
    {
        String generatedPassword = null;
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-512");
            md.update(salt.getBytes());
            byte[] bytes = md.digest(passwordToHash.getBytes());
            StringBuilder sb = new StringBuilder();
            for(int i=0; i< bytes.length ;i++)
            {
                sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
            }
            generatedPassword = sb.toString();
        }
        catch (NoSuchAlgorithmException e)
        {
            e.printStackTrace();
        }
        return generatedPassword;
    }
	
	
	private static String getSalt() throws NoSuchAlgorithmException
    {
        SecureRandom sr = SecureRandom.getInstance("SHA1PRNG");
        byte[] salt = new byte[16];
        sr.nextBytes(salt);
        return salt.toString();
    }
	
}
