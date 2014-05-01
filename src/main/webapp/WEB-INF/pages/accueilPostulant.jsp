<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ProG'HEI - La Junior-Entreprise d'HEI</title>

<link href="css/jquery-ui-1.10.4.custom.css" rel="stylesheet"></link>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>

</head>
<body>



	<h1>Bienvenue sur le site de recrutement des Postulants de
		ProG'HEI!</h1>

	<section>
	<div class="container">
		<form method="post" action="/upload12">
			<table>

				<tbody>
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
						<td>Promo</td>
						<td><select name="promo" id="promo">
								<option value="HEI 1">HEI 1</option>
								<option value="HEI 2">HEI 2</option>
								<option value="HEI 3">HEI 3</option>
								<option value="HEI 4">HEI 4</option>
						</select></td>
					</tr>
					<tr>
						<td>Poste Visé</td>
						<td><select name="poste" id="poste">
								<option value="President">President</option>
								<option value="Vice président">Vice président</option>
								<option value="Trésorier">Trésorier</option>
								<option value="Responsable Commercial">Responsable
									Commercial</option>
						</select></td>
					</tr>

					<tr>
						<td>Certificat de scolarité</td>
						<td><input type="file" value="certificatScolarite"></td>
					</tr>
					<tr>
						<td>Carte Vitale (ou attestion de sécurité sociale)</td>
						<td><input type="file" value="carteVitale"></td>
					</tr>
					<tr>
						<td>CV</td>
						<td><input type="file" value="cv"></td>
					</tr>
					<tr>
						<td>Lettre de motivation</td>
						<td><input type="file" value="lettreMotivation"></td>
					</tr>

					<tr>
						<td>Certificat de scolarité</td>
						<td><input type="file" value="certificatScolarite"></td>
					</tr>
					<tr>
						<td>Fiche d'adhésion</td>
						<td><a href="/images/myw3schoolsimage.jpg"
							download="ficheAdhesion"></td>
					</tr>

					<div id="map"
						style="width: 1086; height: 768px; background: url('images/organigramme.png');">
						<div class="organigrame" id="president"
							style="position: absolute; width: 133px; height: 67px; left: 600px; top: 287px;">
							<div class="preview"
								style="display: none; position: absolute; top: 70px; background-color: white; padding: 10px;">
								<img src="images/president.jpg" alt="">Président
							</div>
						</div>
						<div class="organigrame" id="vicepresident"
							style="position: absolute; width: 133px; height: 67px; left: 460px; top: 365px;">
							<div class="preview"
								style="display: none; position: absolute; top: 70px; background-color: white; padding: 20px;">
								<img src="images/vice president.png" alt="">Vice président
							</div>
						</div>
						<div class="organigrame" id="responsable commercial"
							style="position: absolute; width: 133px; height: 67px; left: 558px; top: 463px;">
							<div class="preview"
								style="display: none; position: absolute; top: 70px; background-color: white; padding: 10px;">
								<img src="images/responsable commercial.png" alt="">Responsable Commercial
							</div>
						</div>
						<div class="organigrame" id="tresorier"
							style="position: absolute; width: 133px; height: 67px; left: 733px; top: 464px;">
							<div class="preview"
								style="display: none; position: absolute; top: 70px; background-color: white; padding: 10px;">
								<img src="images/tresorier.png" alt="">Trésorier
							</div>
						</div>
						<div class="organigrame" id="secretaire generale"
							style="position: absolute; width: 133px; height: 67px; left: 745px; top: 376px;">
							<div class="preview"
								style="display: none; position: absolute; top: 70px; background-color: white; padding: 10px;">
								<img src="images/secretaire generale.png" alt="">Secrétaire Général
							</div>
						</div>
						<div class="organigrame" id="charges de qualite1"
							style="position: absolute; width: 91px; height: 44px; left: 623px; top: 134px;">
							<div class="preview"
								style="display: none; position: absolute; top: 70px; background-color: white; padding: 10px;">
								<img src="images/charges de qualite1.png" alt="">Chargés de Qualité
							</div>
						</div>
						<div class="organigrame" id="charges de qualite2"
							style="position: absolute; width: 91px; height: 44px; left: 782px; top: 134px;">
							<div class="preview"
								style="display: none; position: absolute; top: 70px; background-color: white; padding: 10px;">
								<img src="images/charges de qualite2.png" alt="">Chargés de Qualité
							</div>
						</div>
						<div class="organigrame" id="charges de qualite3"
							style="position: absolute; width: 91px; height: 44px; left: 470px; top: 134px;">
							<div class="preview"
								style="display: none; position: absolute; top: 70px; background-color: white; padding: 10px;">
								<img src="images/charges de qualite3.png" alt="">Chargés de Qualité
							</div>
						</div>
						<div class="organigrame" id="charges de mission"
							style="position: absolute; width: 91px; height: 44px; left: 228px; top: 167px;">
							<div class="preview"
								style="display: none; position: absolute; top: 70px; background-color: white; padding: 10px;">
								<img src="images/charges de mission1.png" alt="">
								<img src="images/charges de mission2.png" alt="">Chargés de Missions
							</div>
						</div>
						<div class="organigrame" id="DSI"
							style="position: absolute; width: 91px; height: 44px; left: 228px; top: 299px;">
							<div class="preview"
								style="display: none; position: absolute; top: 70px; background-color: white; padding: 10px;">
								<img src="images/DSI.png" alt="">Directeur des Systèmes d'Information
							</div>
						</div>
						<div class="organigrame" id="responsable communication interne"
							style="position: absolute; width: 91px; height: 44px; left: 228px; top: 462px;">
							<div class="preview"
								style="display: none; position: absolute; top: 70px; background-color: white; padding: 10px;">
								<img src="images/responsable communication interne.png" alt="">Responsable Communication Interne
							</div>
						</div>
						<div class="organigrame" id="responsable communication externe"
							style="position: absolute; width: 91px; height: 44px; left: 228px; top: 539px;">
							<div class="preview"
								style="display: none; position: absolute; top: 70px; background-color: white; padding: 10px;">
								<img src="images/responsable communication externe.png" alt="">Responsable Communication Externe
							</div>
						</div>
						<div class="organigrame" id="responsable departement inge"
							style="position: absolute; width: 91px; height: 44px; left: 459px; top: 638px;">
							<div class="preview"
								style="display: none; position: absolute; top: 70px; background-color: white; padding: 10px;">
								<img src="images/responsable departement inge.png" alt="">responsable de departement inge
							</div>
						</div>
						<div class="organigrame" id="responsable departement iti"
							style="position: absolute; width: 91px; height: 44px; left: 722px; top: 638px;">
							<div class="preview"
								style="display: none; position: absolute; top: 70px; background-color: white; padding: 10px;">
								<img src="images/responsable departement iti.png" alt="">responsable de departement iti
							</div>
						</div>
						<div class="organigrame" id="charges d'affaire"
							style="position: absolute; width: 91px; height: 44px; left: 591px; top: 693px;">
							<div class="preview"
								style="display: none; position: absolute; top: 70px; background-color: white; padding: 10px;">
								<img src="images/charges d'affaire1.png" alt="">
								<img src="images/charges d'affaire2.png" alt="">
								<img src="images/charges d'affaire3.png" alt="">
								<img src="images/charges d'affaire4.png" alt="">
								<img src="images/charges d'affaire5.png" alt="">
								<img src="images/charges d'affaire6.png" alt="">charges d'affaire
							</div>
						</div>
						<div class="organigrame" id="comptable"
							style="position: absolute; width: 91px; height: 44px; left: 913px; top: 528px;">
							<div class="preview"
								style="display: none; position: absolute; top: 70px; background-color: white; padding: 10px;">
								<img src="images/comptable.png" alt="">comptable
							</div>
						</div>
						
					</div>


				</tbody>
				<script type="text/javascript">
					$(".organigrame").mouseenter(function() {
						$(this).children(".preview").show();
					});

					$(".organigrame").mouseleave(function() {
						$(this).children(".preview").hide();
					});
				</script>

				<tr>
					<td></td>
					<td><input type="submit" value="Enregistrer"></td>
				</tr>
			</table>
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