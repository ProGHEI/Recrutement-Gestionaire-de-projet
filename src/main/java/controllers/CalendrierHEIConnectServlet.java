package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.UtilisateurCalendrierManager;
import model.UtilisateurCalendrier;

public class CalendrierHEIConnectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<UtilisateurCalendrier> utilisateurs = UtilisateurCalendrierManager.getInstance().listerWebcal();
		request.setAttribute("utilisateurs", utilisateurs);
		
		RequestDispatcher view = request.getRequestDispatcher("restreint/calendrier/calendrierHEIConnect.jsp");
		view.forward(request, response);
	}

}
