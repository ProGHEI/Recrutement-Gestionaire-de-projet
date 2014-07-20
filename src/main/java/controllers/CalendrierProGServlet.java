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
 * La servlet gérant l'affichage (<code>doGet</code>) du calendrier <code>calendrierProG</code>.
 * <p>
 * Ici le <code>doPost</code> ne sert qu'à afficher le calendrier du membre selectionné.
 * 
 * @author Felix
 * @see calendrierProG.jsp
 * @see UserDao
 * @see User
 *
 */

public class CalendrierProGServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	* @see UserDao#getAllUser()
	*
	*/
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<User> listeUsers = UserManager.getInstance().getAllUser();
		request.setAttribute("utilisateurs", listeUsers );
		
		RequestDispatcher view = request.getRequestDispatcher("restreint/calendrier/calendrierProG.jsp");
		view.forward(request, response);
	}

	
	
	/**
	* @see UserDao#getUser(String)
	* @see UserDao#getAllUser()
	*
	*/
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		
		User user = UserManager.getInstance().getUser(name);
		
		
		request.setAttribute("user", user);
		
		List<User> listeUsers = UserManager.getInstance().getAllUser();
		request.setAttribute("utilisateurs", listeUsers );
		
		
		
		RequestDispatcher view = request.getRequestDispatcher("restreint/calendrier/calendrierProG.jsp");
		view.forward(request, response);

	}

}
