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
		String domaine = request.getParameter("domaine");
		String promo = request.getParameter("promo");
		String postevise = request.getParameter("postevise");
		Integer eleverealisateur = Integer.parseInt(request
				.getParameter("eleverealisateur"));
		Integer postulant = Integer.parseInt(request.getParameter("postulant"));
		String status = request.getParameter("status");

		Membre nemMembre = new Membre(civilite, idetudiant, nom, prenom,
				telephone, email, domaine, promo, postevise, eleverealisateur,
				postulant, status);

		Manager.getInstance().ajouterMembre(nemMembre);

	}
}