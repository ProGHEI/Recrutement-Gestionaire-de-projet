package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ConnexionForm;
import dao.MembreDao;
import dao.UserDao;
import metier.UserManager;
import model.Membre;
import model.User;


/**
 * 
 * La servlet gérant l'affichage (<code>doGet</code>) de la page <code>administration</code> après connexion en admin
 * 
 * @author Felix
 * @see administration.jsp
 * @see ConnexionForm
 *
 */

public class AdministrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see UserDao#getAllUser()
	 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<User> utilisateurs = UserManager.getInstance().getAllUser();
		request.setAttribute("utilisateurs", utilisateurs);
		
		RequestDispatcher view = request.getRequestDispatcher("admin/administration.jsp");
		view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
