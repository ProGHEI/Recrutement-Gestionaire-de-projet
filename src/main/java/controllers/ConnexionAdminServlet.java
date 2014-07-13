package controllers;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Utilisateur;
import dao.ConnexionForm;

public class ConnexionAdminServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
    public static final String ATT_USER         = "admin";
    public static final String ATT_FORM         = "form";
    public static final String ATT_SESSION_USER2 = "sessionAdmin";								//pour outrepasser RestrictionFilter en admin
    public static final String VUE              = "/WEB-INF/pages/connexionAdmin.jsp";

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        /* Affichage de la page de connexion */
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        /* Préparation de l'objet formulaire */
        ConnexionForm form = new ConnexionForm();

        /* Traitement de la requête et récupération du bean en résultant */
        Utilisateur admin;
		
		admin = form.connecterAdmin( request );
		

        /* Récupération de la session depuis la requête */
        HttpSession session = request.getSession();

        /**
         * Si aucune erreur de validation n'a eu lieu, alors ajout du bean
         * Utilisateur à la session, sinon suppression du bean de la session.
         */
        if ( form.getErreurs().isEmpty() ) {
            session.setAttribute( ATT_SESSION_USER2, admin );
        } else {
            session.setAttribute( ATT_SESSION_USER2, null );
        }

        /* Stockage du formulaire et du bean dans l'objet request */
        request.setAttribute( ATT_FORM, form );
        request.setAttribute( ATT_USER, admin );

        RequestDispatcher view = request.getRequestDispatcher("admin/bienvenueAdmin.jsp");
		view.forward(request, response);;
    }
}