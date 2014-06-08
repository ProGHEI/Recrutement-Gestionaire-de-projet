package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.EvenementManager;
import metier.UserManager;
import model.User;


public class ListerEvenementJSONServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String name = request.getParameter("name");
		
		if(!(name.isEmpty())){
		
		User user = UserManager.getInstance().getUser(name);
		
		List<String> evenements = EvenementManager.getInstance().listerEvenementJSON(user.getId());
		request.setAttribute("evenements", evenements);
		}
		
		RequestDispatcher view = request.getRequestDispatcher("restreint/calendrier/eventJSON.jsp");
		view.forward(request, response);
	}


}