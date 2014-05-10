package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.EvenementManager;


public class ListerEvenementJSONServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<String> evenements = EvenementManager.getInstance().listerEvenementJSON();
		request.setAttribute("evenements", evenements);
		
		RequestDispatcher view = request.getRequestDispatcher("restreint/calendrier/eventJSON.jsp");
		view.forward(request, response);
	}


}