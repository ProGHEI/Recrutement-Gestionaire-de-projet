package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.EvenementManager;
import metier.UserManager;
import model.User;


public class AjouterMembreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/pages/ajouterMembre.jsp");
		view.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String mail = request.getParameter("mail");
		String role = request.getParameter("role");
		String webcal = request.getParameter("webcal");
		String pass = request.getParameter("pass");
		String pass2 = request.getParameter("pass2");
		
		if(!pass2.equals(pass)){
			response.sendRedirect("ajouterMembre");
		}
		else{
			User user = new User (null, name, pass, mail, role, webcal);
			
			UserManager.getInstance().ajouterUser(user);
			
			response.sendRedirect("administration");
				
		}
	}
	

}
