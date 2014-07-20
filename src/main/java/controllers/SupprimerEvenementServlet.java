package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EvenementDao;
import dao.UserDao;
import metier.EvenementManager;
import model.Evenement;

/**
 * 
 * Cette servlet permet uniquement de supprimer l'évènement sélectionné dans la page <code>listeEvenement.jsp</code>
 * 
 * @author Felix
 * @see listeEvenement.jsp
 * @see EvenementDao
 * @see Evenement
 *
 */

public class SupprimerEvenementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	/**
	* @see EvenementDao#supprimerEvenement(Integer)
	*
	*/
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Integer idEvenement = Integer.parseInt(request.getParameter("id"));
		
		EvenementManager.getInstance().supprimerEvenement(idEvenement);
		
		request.removeAttribute("id");
		RequestDispatcher view = request.getRequestDispatcher("restreint/calendrier/calendrierProG.jsp");
		view.forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
