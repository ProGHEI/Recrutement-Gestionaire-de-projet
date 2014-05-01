<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ProG'HEI - La Junior-Entreprise d'HEI</title>

<link href="css/jquery-ui-1.10.4.custom.css" rel="stylesheet"></link>

</head>
<body>



<h1>Bienvenue sur le site de recrutement de ProG'HEI!</h1>

<section>
	<div class="container">
	<ul>
							<li 
								<%if ("accueilRealisateur".equals(request.getParameter("pageSelectionnee"))) {%>
								 <%}%>><a class="active" href="accueilRealisateur">Elève Réalisateur</a></li>
							<li class="current_page_item"
								<%if ("accueilPostulant".equals(request.getParameter("pageSelectionnee"))) {%>
								class="active" <%}%>><a href="accueilPostulant">Postulant</a></li>
						</ul>
		
		<!-- Sous Firefox, le type "date" n'est pas implémenté, ce qui laisse un champ texte pour
		rentrer la date. Or ce n'est pas le cas pour les autres navigateurs. On crée donc un élement
		elem à l'attribut type = date pour identifier le navigateur. S'il s'agit de Firefox, elem ne peut 
		pas être de type date et on fait appel à la fonction datepicker dans js/jquery-ui 
		on rajoute aussi l'option de sélection d'année  -->
		
		
		
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.0/jquery.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script>
	(function InitDatePickers(){
		
		var elem = document.createElement('input');
		elem.setAttribute('type', 'date');
		
		if(elem.type=='text'){
			$( "#naissance" ).datepicker({ changeYear: true, yearRange: "-30:+0", dateFormat:'dd-mm-yy'})({
				dateFormat:'dd-mm-yy'
			});
			// getter
			var changeYear = $( "#naissance" ).datepicker( "option", "changeYear" );
			var yearRange = $( "#naissance" ).datepicker( "option", "yearRange" );
			// setter
			$( "#naissance" ).datepicker( "option", "changeYear", true );
			$( "#naissance" ).datepicker( "option", "yearRange", "-30:+0" );
		}
		
		
		
		
	})();
	
</script>
	</div>
</section>
</body>
</html>