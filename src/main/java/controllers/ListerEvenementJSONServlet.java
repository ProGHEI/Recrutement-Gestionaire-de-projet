package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EvenementDao;
import dao.UserDao;
import metier.EvenementManager;
import metier.UserManager;
import model.Evenement;
import model.User;

/**
 * 
 * La servlet permettant de lister l'ensemble des évènements (du calendrier ProG) relatif 
 * au membre sélectionné sur la page <code>calendrierProG</code>
 * <p>
 * La servlet <code>CalendrierProGServlet</code> crée la page <code>calendrierProG</code>
 * qui fait référence à <code>eventJSON.jsp</code>. Cette dernière va donc être créée par la présente servlet.
 * 
 * @author Felix
 * @see calendrierProG.jsp
 * @see EvenementDao
 * @see Evenement
 * @see CalendrierProGServlet
 *
 */

public class ListerEvenementJSONServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	/**
	* @see UserDao#getUser(String)
	* @see EvenementDao#listerEvenementJSON(Integer)
	*
	*/
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String name = request.getParameter("name");
		
		if(!(name.isEmpty())){
		
		User user = UserManager.getInstance().getUser(name);
		
		List<String> evenements = EvenementManager.getInstance().listerEvenementJSON(user.getId());
		request.setAttribute("evenements", evenements);
		}
		
		RequestDispatcher view = request.getRequestDispatcher("restreint/calendrier/eventJSON.jsp");
		view.forward(request, response);
	}


}