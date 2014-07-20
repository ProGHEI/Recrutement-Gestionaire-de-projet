package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import metier.UserManager;
import model.User;

/**
 * 
 * Cette servlet permet d'affichage de l'ensemble des membres.
 * 
 * @author Felix
 * @see listeMembre.jsp
 * @see UserDao
 * @see User
 *
 */

public class ListeUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	/**
	* @see UserDao#getAllUser()
	*
	*/
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<User> liste = UserManager.getInstance().getAllUser();
		request.setAttribute("utilisateurs", liste);
		
		RequestDispatcher view = request.getRequestDispatcher("restreint/listeMembre.jsp");
		view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
