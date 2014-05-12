package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.CompetenceManager;
import metier.Manager;
import model.Competence;
import model.Membre;

/*
 * Cette servlet sert Ã  obtenir les coordonnÃ©es et les compÃ©tences d'un Ã©lÃ¨ve rÃ©alisateur sur la page rÃ©alisateur
 * 
 * */
public class AccueilRealisateurServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/pages/accueilRealisateur.jsp");
		view.forward(request, response);
	}
	
	/*
	 * Le post ici permet de rÃ©cupÃ©rer la note que s'est attribuÃ© l'Ã©lÃ¨ve rÃ©alisateur grÃ¢ce Ã  des inputs "range" de la page accueilRealisateur
	 * 
	 * */

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Integer civilite = Integer.parseInt(request.getParameter("civilite"));
		Integer idetudiant = Integer.parseInt(request
				.getParameter("idetudiant"));
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String telephone = request.getParameter("telephone");
		String email = request.getParameter("email");
		String domaine = request.getParameter("domaine");
		String promo = request.getParameter("promo");
		String postevise = " ";
		Integer eleverealisateur = 1;

		Membre nemMembre = new Membre(civilite, idetudiant, nom, prenom,
				telephone, email, domaine, promo, postevise, eleverealisateur,
				0);

		Manager.getInstance().ajouterMembre(nemMembre);

		Integer autocad = Integer.parseInt(request.getParameter("autocad"));
		Integer advance = Integer.parseInt(request.getParameter("advance"));
		Integer maquette = Integer.parseInt(request.getParameter("maquette"));
		Integer calculdesstructures = Integer.parseInt(request.getParameter("calculdesstructures"));
		Integer dimensionnement = Integer.parseInt(request.getParameter("dimensionnement"));
		Integer planification = Integer.parseInt(request.getParameter("planification"));			
		Integer catia = Integer.parseInt(request.getParameter("catia"));
		Integer calculdescotes = Integer.parseInt(request.getParameter("calculdescotes"));
		Integer plaquecoque = Integer.parseInt(request.getParameter("plaquecoque"));
		Integer automatique = Integer.parseInt(request.getParameter("automatique"));
		Integer electronnique = Integer.parseInt(request.getParameter("electronnique"));
		Integer electrotechnique = Integer.parseInt(request.getParameter("electrotechnique"));
		Integer html = Integer.parseInt(request.getParameter("html"));
		Integer css = Integer.parseInt(request.getParameter("css"));
		Integer php = Integer.parseInt(request.getParameter("php"));
		Integer couture = Integer.parseInt(request.getParameter("couture"));
		Integer maille = Integer.parseInt(request.getParameter("maille"));
		Integer tissage = Integer.parseInt(request.getParameter("tissage"));
		
		CompetenceManager.getInstance().CreateDetenir(1, autocad, idetudiant);
		CompetenceManager.getInstance().CreateDetenir(2, advance, idetudiant);
		CompetenceManager.getInstance().CreateDetenir(3, maquette, idetudiant);
		CompetenceManager.getInstance().CreateDetenir(4, calculdesstructures, idetudiant);
		CompetenceManager.getInstance().CreateDetenir(5, dimensionnement, idetudiant);
		CompetenceManager.getInstance().CreateDetenir(6, planification, idetudiant);
		CompetenceManager.getInstance().CreateDetenir(7, catia, idetudiant);
		CompetenceManager.getInstance().CreateDetenir(8, calculdescotes, idetudiant);
		CompetenceManager.getInstance().CreateDetenir(9, plaquecoque, idetudiant);
		CompetenceManager.getInstance().CreateDetenir(10, automatique, idetudiant);
		CompetenceManager.getInstance().CreateDetenir(11, electronnique, idetudiant);
		CompetenceManager.getInstance().CreateDetenir(12, electrotechnique, idetudiant);
		CompetenceManager.getInstance().CreateDetenir(13, html, idetudiant);
		CompetenceManager.getInstance().CreateDetenir(14, css, idetudiant);
		CompetenceManager.getInstance().CreateDetenir(15, php, idetudiant);
		CompetenceManager.getInstance().CreateDetenir(16, couture, idetudiant);
		CompetenceManager.getInstance().CreateDetenir(17, maille, idetudiant);
		CompetenceManager.getInstance().CreateDetenir(18, tissage, idetudiant);
		
		RequestDispatcher view = request
				.getRequestDispatcher("WEB-INF/pages/remerciement.jsp");
		view.forward(request, response);
	}
}