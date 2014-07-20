package controllers;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CompetenceDao;
import dao.MembreDao;
import metier.CompetenceManager;
import metier.Manager;
import model.Competence;
import model.Membre;

/**
 * 
 * La servlet gérant l'affichage (<code>doGet</code>) de la page <code>accueilRealisateur</code> et son formulaire
 * d'inscription (<code>doPost</code>)
 * 
 * @author Felix
 * @see accueilRealisateur.jsp
 * @see MembreDao
 * @see CompetenceDao
 * @see Membre
 * @see Competence
 *
 */

public class AccueilRealisateurServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/pages/accueilRealisateur.jsp");
		view.forward(request, response);
	}
	
	/*
	 * Le post ici permet de récupérer la note que s'est attribué l'élève réalisateur grâce à des inputs "range" de la page accueilRealisateur
	 * 
	 * */

	/**
	 * @see MembreDao#addMembre(Membre)
	 * @see CompetenceDao#CreateDetenir(Integer, Integer, String)
	 */
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Integer civilite = Integer.parseInt(request.getParameter("civilite"));
		String idetudiant = request.getParameter("idetudiant");
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String telephone = request.getParameter("telephone");
		String email = request.getParameter("email");
		String domaine = request.getParameter("domaine");
		Integer promo = Integer.parseInt(request.getParameter("promo"));
		
		// L'email doit être celui d'HEI
		Pattern pEmail = Pattern.compile("^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@hei.fr$");
		Matcher mEmail = pEmail.matcher(email);
		
		// On vérifie que l'identifiant soit correct
		// Ici, l'id doit être composé de 5 chiffres de 0 à 9 sauf pour le premier (de 1 à 2)
		Pattern pId = Pattern.compile("[1-2]+[0-9]{4}$");
		Matcher mId = pId.matcher(idetudiant);
		
		// On vérifie que le téléphone soit correct
		// Ici on le configure pour des 06 et 07
		Pattern pTel = Pattern.compile("^0+[6,7]+[0-9]{8}$");
		Matcher mTel = pTel.matcher(telephone);
		
		if(mEmail.matches() && mId.matches() && mTel.matches()){

			Membre nemMembre = new Membre(civilite, idetudiant, nom, prenom,
					telephone, email, domaine, promo, "", 1, 0);
	
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
		else{
			RequestDispatcher view = request
					.getRequestDispatcher("WEB-INF/pages/remerciement.jsp");
			view.forward(request, response);
		}
	}
}