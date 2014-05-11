package controllers;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.EvenementManager;
import model.Evenement;


public class ListerEvenementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		List<Evenement> evenements = EvenementManager.getInstance().listerEvenement();
		List<Evenement> liste = new ArrayList<Evenement>();
		try{
			
			
			int i=0;
			while (i<evenements.size()){
				String date = evenements.get(i).getDateDebut();
				String heure = evenements.get(i).getHeureDebut();
				String minute = evenements.get(i).getMinuteDebut();
				
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm");
				String date1 = (new SimpleDateFormat("yyyy-MM-dd HH:mm")).format(new Date());
				Date d = format.parse(date1);
				Date date2 = format.parse(date+" "+heure+":"+minute);
						
				if(d.compareTo(date2)<0){
					liste.add(evenements.get(i));
				}
				i=i+1;
			}             
			
		}catch(ParseException ex){
    		ex.printStackTrace();
    	}
		
		request.setAttribute("liste", liste);
		
		RequestDispatcher view = request.getRequestDispatcher("restreint/calendrier/listeEvenement.jsp");
		view.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
