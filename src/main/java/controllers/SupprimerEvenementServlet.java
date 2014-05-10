package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.EvenementManager;


public class SupprimerEvenementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
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
