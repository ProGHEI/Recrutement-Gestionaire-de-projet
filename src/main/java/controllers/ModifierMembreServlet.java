package controllers;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import metier.UserManager;
import model.User;


public class ModifierMembreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	/**
	* @see UserDao#getUser(String)
	*
	*/
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String user = request.getParameter("id");
		
		User utilisateurs = UserManager.getInstance().getUser(user);
		request.setAttribute("utilisateurs", utilisateurs);
		
		RequestDispatcher view = request.getRequestDispatcher("admin/membre.jsp");
		view.forward(request, response);
	}

	
	/**
	* @see UserDao#updateUser(User)
	*
	*/
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Integer id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String mail = request.getParameter("mail");
		String role = request.getParameter("role");
		String webcal = request.getParameter("webcal");
		String pass = request.getParameter("pass");
		String pass2 = request.getParameter("pass2");
		
		String salt = null;
		User user = null;
		
		Pattern pEmail = Pattern.compile("^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@hei.fr$");
		Matcher mEmail = pEmail.matcher(mail);
		
		if(!pass2.equals(pass) || !mEmail.matches()){
			response.sendRedirect("administration");
		}
		else{
			
			if(pass != null){
			
				try {
					salt = getSalt();
					user = new User(id, name, get_SHA_512_SecurePassword(pass, salt), mail, role, webcal, salt);
					
				} catch (NoSuchAlgorithmException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			else{
				user = new User(id, name, pass, mail, role, webcal, salt);
			}
			
			UserManager.getInstance().updateUser(user);
			
			request.removeAttribute("id");
			
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


