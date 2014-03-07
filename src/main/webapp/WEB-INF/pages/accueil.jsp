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
	<form method="post" action="ajouterepisode">
		<table>
			<thead>
				<tr><h1>Tes coordonnées</h1></tr>
				<tr></tr>
			</thead>
			<tbody>
				<tr>
					<td>Civilité</td>
					<td><select name="personnage" id="personnage">		
							<option value="mlle">Mlle.</option>
							<option value="m">M.</option>
						</select></td>
				</tr>
				<tr>
					<td>Nom</td>
					<td><input type="text" id="nom" name="nom"></td>
				</tr>
				<tr>
					<td>Prénom</td>
					<td><input type="text" id="prenom" name="prénom"></td>
				</tr>
				<tr>
					<td>E-mail</td>
					<td><input type="email" id="email" name="email"></td>
				</tr>
				<tr>
					<td>Date de naissance</td>
					<td><input type="date" id="naissance" name="naissance"></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Enregistrer"></td>
				</tr>
			</tbody>
		</table>
		</form>
		
		<!-- Sous Firefox, le type "date" n'est pas implémenté, ce qui laisse un champ texte pour
		rentrer la date. Or ce n'est pas le cas pour les autres navigateurs. On crée donc un élement
		elem à l'attribut type = date pour identifier le navigateur. S'il s'agit de Firefox, on fait
		appel à la fonction datepicker dans js/jquery-ui -->
		
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.0/jquery.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script>
	(function(){
		
		var elem = document.createElement('input');
		elem.setAttribute('type', 'date');
		
		if(elem.type=='text'){
			$('#naissance').datepicker({
				dateFormat:'dd-mm-yy'
			});
		}
		
	})();
	
</script>
	</div>
</section>
</body>
</html>