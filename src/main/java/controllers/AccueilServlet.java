package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Membre;
import dao.MembreDao;


/**
 * 
 * La servlet gérant l'affichage (<code>doGet</code>) de la page <code>accueil</code>
 * 
 * @author Felix
 * @see accueil.jsp
 *
 */


public class AccueilServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/pages/accueil.jsp");
		view.forward(request, response);
	}

}
