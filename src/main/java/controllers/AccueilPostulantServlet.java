package controllers;

import java.io.IOException;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MembreDao;
import metier.Manager;
import metier.MembreManager;
import metier.UserManager;
import model.Membre;
import model.User;


/**
 * 
 * La servlet gérant l'affichage (<code>doGet</code>) de la page <code>accueilPostulant</code> et son formulaire
 * d'inscription (<code>doPost</code>)
 * 
 * @author Felix
 * @see accueilPostulant.jsp
 * @see MembreDao
 * @see Membre
 *
 */

public class AccueilPostulantServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	/**
	 * @see MembreDao#getNbPostulants(String)
	 */
	
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int nbPres = Manager.getInstance().getNbPostulants("president");
		int nbVicePres = Manager.getInstance().getNbPostulants("vice president");
		int nbTreso = Manager.getInstance().getNbPostulants("tresorier");
		int nbRespCo = Manager.getInstance().getNbPostulants("responsable commercial");
		int nbSecGen = Manager.getInstance().getNbPostulants("secretaire generale");
		int nbRespDepITI = Manager.getInstance().getNbPostulants("responsable departement ITI");
		int nbRespDepInge = Manager.getInstance().getNbPostulants("responsable departement IngÃ©");
		int nbDSI = Manager.getInstance().getNbPostulants("directeur des systemes informatiques");
		int nbRespComExt = Manager.getInstance().getNbPostulants("responsable communication externe");
		int nbRespComInt = Manager.getInstance().getNbPostulants("responsable communication interne");
		int nbCdA = Manager.getInstance().getNbPostulants("charge d'affaire");
		int nbCdQ = Manager.getInstance().getNbPostulants("charge de qualite");
		int nbCdM = Manager.getInstance().getNbPostulants("charge de mission");
		int nbComptable = Manager.getInstance().getNbPostulants("comptable");
		
		request.setAttribute("nbPres", nbPres);
		request.setAttribute("nbVicePres", nbVicePres);
		request.setAttribute("nbTreso", nbTreso);
		request.setAttribute("nbRespCo", nbRespCo);
		request.setAttribute("nbSecGen", nbSecGen);
		request.setAttribute("nbRespDepITI", nbRespDepITI);
		request.setAttribute("nbRespDepInge", nbRespDepInge);
		request.setAttribute("nbDSI", nbDSI);
		request.setAttribute("nbRespComExt", nbRespComExt);
		request.setAttribute("nbRespComInt", nbRespComInt);
		request.setAttribute("nbCdA", nbCdA);
		request.setAttribute("nbCdQ", nbCdQ);
		request.setAttribute("nbCdM", nbCdM);
		request.setAttribute("nbComptable", nbComptable);
		
		RequestDispatcher view = request
				.getRequestDispatcher("WEB-INF/pages/accueilPostulant.jsp");
		view.forward(request, response);
	}

	
	
	/**
	 * @see MembreDao#addMembre(Membre)
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
		int promo = Integer.parseInt(request.getParameter("promo"));
		String postevise = request.getParameter("postevise");
		
		List<Membre> liste = MembreManager.getInstance().getAllMembre();

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
		
		Boolean doublon = false;
		for (int i = 0; i < liste.size(); i++) {
			if(liste.get(i).getEmail().equals(email) || liste.get(i).getIdetudiant()==idetudiant){
				doublon = true;
			}
		}
		
		if(mEmail.matches() && mId.matches() && mTel.matches() && !doublon){
			Membre nemMembre = new Membre(civilite, idetudiant, nom, prenom,
					telephone, email, "", promo, postevise, 0, 1);

			Manager.getInstance().ajouterMembre(nemMembre);
			
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