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



	<h1>Bienvenue sur le site de recrutement des Elèves Réalisateur de
		ProG'HEI!</h1>

	<section>
	<div class="container">
		<form method="post" action="/upload12">

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
					<td>Numéro de téléphone</td>
					<td><input type="tel" id="telephone" name="telephone"></td>
				</tr>
				<tr>
					<td>E-mail</td>
					<td><input type="email" id="email" name="email"></td>
				</tr>
				<tr>
					<td>Domaine</td>
					<td><select name="domaine" id="domaine">
							<option value="BAA">BAA</option>
							<option value="BTP">BTP</option>
							<option value="CM">CM</option>
							<option value="Chimie">Chimie</option>
							<option value="ESEA">ESEA</option>
							<option value="ITI">ITI</option>
							<option value="TIMTEX">TIMTEX</option>
							<option value="OME">OME</option>
							<option value="EHE">EHE</option>
					</select></td>
				</tr>
				<tr>
					<td>Promo</td>
					<td><select name="promo" id="promo">
							<option value="HEI 4">HEI 4</option>
							<option value="HEI 4">HEI 5</option>
					</select></td>
				</tr>
				<tr>

					<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1252">
<title>StarRating</title>
<script type='text/javascript'>
	var done = false
	var pic = new Array();
	pic[0] = new Image();
	pic[0].src = "images/star1.png";
	pic[1] = new Image();
	pic[1].src = "images/star2.png";
	var bareme = new Array("Connais pas ", "Notions de base", "Notions avancées", "Maitrise",
			"Expert");

	function rate(level) {
		if (done) {
			return false;
		}
		for (i = 1; i < 6; i++) {
			document.getElementById('_' + i).src = (level < i) ? pic[0].src
					: pic[1].src;
			document.getElementById('vote').innerHTML = "Votre niveau : " + level
					+ " étoile(s)   " + bareme[level - 1] ;
		}
	}

	function zero() {
		for (i = 1; i < 6; i++) {
			document.getElementById('_' + i).src = pic[0].src;
			done = false;
			document.getElementById('vote').innerHTML = "Votre niveau : 0 étoile(s)";

		}
	}
	function valider() {
		done = true;
		document.getElementById('vote').innerHTML += '';
	}
</script>
					</head>

					<body>
						Cliquez sur l'étoile de votre choix pour indiquer votre niveau:
						<br />
						<br />
						<img src="star1.gif" id='_1' onclick="valider()"
							onmouseover="rate(1)" />
						<img src="star1.gif" id='_2' onclick="valider()"
							onmouseover="rate(2)" />
						<img src="star1.gif" id='_3' onclick="valider()"
							onmouseover="rate(3)" />
						<img src="star1.gif" id='_4' onclick="valider()"
							onmouseover="rate(4)" />
						<img src="star1.gif" id='_5' onclick="valider()"
							onmouseover="rate(5)" />
						<br />
						<br />
						<div id="vote">Votre niveau : 0 étoile(s)</div>
						<br />
						<br />
						<input type="button" onclick="zero();" value="Annuler" />
					</body>

					<td></td>
					<td><input type="submit" value="Enregistrer"></td>
				</tr>
			</tbody>
		</form>

		<!-- Sous Firefox, le type "date" n'est pas implémenté, ce qui laisse un champ texte pour
		rentrer la date. Or ce n'est pas le cas pour les autres navigateurs. On crée donc un élement
		elem à l'attribut type = date pour identifier le navigateur. S'il s'agit de Firefox, elem ne peut 
		pas être de type date et on fait appel à la fonction datepicker dans js/jquery-ui 
		on rajoute aussi l'option de sélection d'année  -->



		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.0/jquery.min.js"></script>
		<script src="js/jquery-ui.js"></script>
		<script>
			(function InitDatePickers() {

				var elem = document.createElement('input');
				elem.setAttribute('type', 'date');

				if (elem.type == 'text') {
					$("#naissance").datepicker({
						changeYear : true,
						yearRange : "-30:+0",
						dateFormat : 'dd-mm-yy'
					})({
						dateFormat : 'dd-mm-yy'
					});
					// getter
					var changeYear = $("#naissance").datepicker("option",
							"changeYear");
					var yearRange = $("#naissance").datepicker("option",
							"yearRange");
					// setter
					$("#naissance").datepicker("option", "changeYear", true);
					$("#naissance").datepicker("option", "yearRange", "-30:+0");
				}

			})();
		</script>
	</div>
	</section>
</body>
</html>