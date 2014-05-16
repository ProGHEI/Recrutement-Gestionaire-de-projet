package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.UserManager;
import model.User;


public class ModifierMembreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String user = request.getParameter("id");
		
		User utilisateurs = UserManager.getInstance().getUser(user);
		request.setAttribute("utilisateurs", utilisateurs);
		
		RequestDispatcher view = request.getRequestDispatcher("admin/membre.jsp");
		view.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Integer id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String mail = request.getParameter("mail");
		String role = request.getParameter("role");
		String webcal = request.getParameter("webcal");
		String pass = request.getParameter("pass");
		
		User user = new User(id, name, pass, mail, role, webcal);
		
		UserManager.getInstance().updateUser(user);
		
		request.removeAttribute("id");
		
		response.sendRedirect("administration");
	}

	}


