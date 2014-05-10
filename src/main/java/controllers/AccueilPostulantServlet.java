package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.Manager;
import model.Membre;

public class AccueilPostulantServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int nbPres = Manager.getInstance().getNbPostulants("president");
		int nbVicePres = Manager.getInstance().getNbPostulants("vice president");
		int nbTreso = Manager.getInstance().getNbPostulants("tresorier");
		int nbRespCo = Manager.getInstance().getNbPostulants("responsable commercial");
		int nbSecGen = Manager.getInstance().getNbPostulants("secretaire generale");
		int nbRespDepITI = Manager.getInstance().getNbPostulants("responsable departement ITI");
		int nbRespDepInge = Manager.getInstance().getNbPostulants("responsable departement Ingé");
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
		String domaine = " ";
		String promo = request.getParameter("promo");
		String postevise = request.getParameter("postevise");
		Integer postulant = 1;

		Membre nemMembre = new Membre(civilite, idetudiant, nom, prenom,
				telephone, email, domaine, promo, postevise, 0,
				postulant);

		Manager.getInstance().ajouterMembre(nemMembre);

	}
}