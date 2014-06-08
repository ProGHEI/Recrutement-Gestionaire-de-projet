package controllers;


import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.EvenementManager;
import metier.UserManager;
import model.Evenement;
import model.User;

public class AjouterEvenementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<User> listeUsers = UserManager.getInstance().getAllUser();
		request.setAttribute("utilisateurs", listeUsers );
		
		RequestDispatcher view = request.getRequestDispatcher("restreint/calendrier/ajouterEvenement.jsp");
		view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String libelle = request.getParameter("libelle");
		String dateDebut = request.getParameter("dateDebut");
		String heureDebut = request.getParameter("heureDebut");
		String minuteDebut = request.getParameter("minuteDebut");
		String dateFin = request.getParameter("dateFin");
		String heureFin = request.getParameter("heureFin");
		String minuteFin = request.getParameter("minuteFin");
		String listeCheckBox[] = request.getParameterValues("utilisateur");
		
		try{
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        	Date date1 = format.parse(dateDebut+" "+heureDebut+":"+minuteDebut);
        	Date date2 = format.parse(dateFin+" "+heureFin+":"+minuteFin);
        	
        	if(date1.compareTo(date2)>0){
        		response.sendRedirect("/projetEtude/ajouterEvenement");
        	}
        	else{
        		
        		Evenement newEvenement = new Evenement(null, libelle, dateDebut, heureDebut, minuteDebut, dateFin, heureFin, minuteFin);

        		for (int i = 0; i < listeCheckBox.length; i++) {
        			EvenementManager.getInstance().ajouterEvenement(newEvenement, UserManager.getInstance().getUser(listeCheckBox[i]).getId());
        		}
        		
        		response.sendRedirect("/upload/calendrierProG");
        	}
		}
		catch(ParseException ex){
    		ex.printStackTrace();
    	}
		
		
	}

}
