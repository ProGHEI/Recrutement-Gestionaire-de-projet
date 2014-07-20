package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EvenementDao;
import dao.MembreDao;
import dao.UserDao;
import metier.UserManager;
import model.Evenement;
import model.Membre;

/**
 * 
 * Cette servlet permet uniquement de supprimer le membre sélectionné dans la page <code>administration.jsp</code>
 * 
 * @author Felix
 * @see membre.jsp
 * @see MembreDao
 * @see Membre
 *
 */

public class SupprimerMembreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher view = request.getRequestDispatcher("admin/supprimerMembre.jsp");
		view.forward(request, response);
	}

	
	/**
	* @see UserDao#supprimerUser(Integer)()
	*
	*/
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Integer id = Integer.parseInt(request.getParameter("id"));

		UserManager.getInstance().supprimerUser(id);
		
		request.removeAttribute("id");
		
		response.sendRedirect("administration");
	}

}
