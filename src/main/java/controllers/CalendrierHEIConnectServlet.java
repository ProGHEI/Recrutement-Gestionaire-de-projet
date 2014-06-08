package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.UserManager;
import model.User;

public class CalendrierHEIConnectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		List<User> listeUsers = UserManager.getInstance().getAllUser();
		request.setAttribute("utilisateurs", listeUsers );
		
		RequestDispatcher view = request.getRequestDispatcher("restreint/calendrier/calendrierHEIConnect.jsp");
		view.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		
		User user = UserManager.getInstance().getUser(name);
		
		
		request.setAttribute("user", user);
		
		List<User> listeUsers = UserManager.getInstance().getAllUser();
		request.setAttribute("utilisateurs", listeUsers );
		
		
		
		RequestDispatcher view = request.getRequestDispatcher("restreint/calendrier/calendrierHEIConnect.jsp");
		view.forward(request, response);

	}

}
