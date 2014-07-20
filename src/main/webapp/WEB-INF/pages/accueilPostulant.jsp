<!DOCTYPE html>
<html lang="fr">
<%@ page pageEncoding="UTF-8"%>
<head>
<jsp:include page="head.jsp">
	<jsp:param name="pageSelectionnee" value="ajout" />
</jsp:include>
</head>
<body
	class="html front not-logged-in no-sidebars page-node page-node- page-node-2 node-type-page">


	<div id="container" class="container">

		<header role="banner" id="page-header"> </header>
		<!-- /#header -->

		<div class="row-fluid">

			<aside class="span2" role="complementary">
				<div class="menu-gauche" id="contact">
					<ul class="liste-contact">
						<li><a
							href="/sites/proghei.fr/themes/bootstrap/assets/telecharge.php?pdf=Plaquette_ProG_HEI.pdf">
								Notre plaquette </a></li>
						<li><a href="contact"> Nous contacter </a></li>
						<li><a href="#"> 03.28.38.48.70 </a></li>
						<li><a href="#"> Nous rejoindre </a></li>
					</ul>
				</div>
			</aside>

			<section class="conteneur-principal span10">

				<div class="row-fluid">
					<div class="span12" id="block-header">
						<div class="span8">
							<div class="titre"></div>
							<div class="sous-titre">La Junior-Entreprise de HEI</div>
						</div>

					</div>

				</div>

				<jsp:include page="menu.jsp">
					<jsp:param name="pageSelectionnee" value="ajout" />
				</jsp:include>

				<br /> <a id="main-content"></a>
				<div class="contenu-principal">
					<div class="spanGlobal">
						<div class="spanArticle">

							<div class="spanTexte">
								<ul>
									<li class="subtitle-puce" id="JE-front">
										<h4>Vous voulez réaliser des études pour ProG'HEI ?</h4>
									</li>
								</ul>
								<hr>
								<p>
									La junior entreprise vous offre la possibilité de réaliser des
									études pour des clients en échange d'une rémunération à
									conditions que vous soyez en HEI4 ou HEI5. <br />Cette
									opportunité représentera une réelle plus value sur votre
									parcours HEI que vous pourrez plus tard mettre en valeur face à
									un recruteur. <br /> <br />NB : La rémunération est exonéré
									d'impôt et vous permet dès à présent de cotiser pour la
									retraite!
								</p>
								<br />
							</div>

							<div class="spanImage">
								<ul>
									<li class="subtitle-puce" id="president-front">
										<h4>L'organigramme de la junior</h4>
									</li>
								</ul>
								<div id="map"
									style="width: 1086; height: 768px; background: url('images/organigramme.png'); background-repeat: no-repeat;">

									<div class="organigrame" id="president"
										style="position: relative; width: 133px; height: 67px; left: 404px; top: 195px; border: 0px solid red;">
										<div class="preview"
											style="display: none; width: 600px; position: absolute; top: 70px; background-color: white; padding: 10px; margin-left: -50px; box-shadow: 3px 3px 3px grey;">
											<p style="float: left; padding: 5px;">
												<img src="images/president.png" width="200" alt="">
											</p>
											<Strong>Charles Serard, Président</Strong><br> <br>Le
											Président est garant du bon fonctionnement de la J.E., il
											préside les conseils d’administrations, pose les objectifs à
											long terme, gère la coordination interne, est responsable de
											la représentation externe de la J.E. auprès de la CNJE et
											d'HEI. Il doit également négocier, suivre et améliorer les
											partenariats, prendre des décisions et en informer les
											membres.<br> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<Strong>Nombre
												de personnes postulant à ce poste : ${nbPres} </Strong>
										</div>
									</div>
									<div class="organigrame" id="vicepresident"
										style="position: relative; width: 133px; height: 67px; left: 264px; top: 202px; border: 0px solid red;">
										<div class="preview"
											style="display: none; width: 600px; position: absolute; top: 70px; background-color: white; padding: 10px; margin-left: -50px; box-shadow: 3px 3px 3px grey;">
											<p style="float: left; padding: 5px;">
												<img src="images/vice president.png" width="200" alt="">
											</p>
											<Strong>Alizée Blanchon, Vice Présidente</Strong><br> <br>La
											Vice-Présidente doit seconder le Président, gérer les
											relations internes, motiver les responsables, poser les
											objectifs en interne, proposer des solutions, définir des
											projets, lancer des missions. Elle doit être au courant de
											tout ce qu’il se passe dans la J.E. et pouvoir renseigner
											tout le monde. Elle est également responsable du recrutement
											et de la formation, doit assurer la direction du pôle
											communication et répartir les diverses missions entre les
											Chargés de Mission.<br> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<Strong>Nombre
												de personnes postulant à ce poste : ${nbVicePres} </Strong>
										</div>
									</div>
									<div class="organigrame" id="responsable commercial"
										style="position: relative; width: 133px; height: 67px; left: 360px; top: 232px; border: 0px solid red;">
										<div class="preview"
											style="display: none; width: 600px; position: absolute; top: 70px; background-color: white; padding: 10px; margin-left: -50px; box-shadow: 3px 3px 3px grey;">
											<p style="float: left; padding: 5px;">
												<img src="images/responsable commercial.png" width="200"
													alt="">
											</p>
											<Strong>Alexandre Virolles, Responsable Commercial</Strong><br>
											<br>Le Responsable Commercial est responsable de tout le
											Pôle Commercial. Il sert de soutien ainsi que de référence
											aux Responsables de Département. C’est pourquoi il doit
											relire chaque document avant qu’ils soient envoyés au client.
											Il supervise l’ensemble des affaires en cours, va aux
											entretiens clients avec le chef de projet. Le Directeur
											Général réalise le lien entre le pôle commercial et le pôle
											administratif. <br> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<Strong>Nombre
												de personnes postulant à ce poste : ${nbRespCo} </Strong>
										</div>
									</div>
									<div class="organigrame" id="tresorier"
										style="position: relative; width: 133px; height: 67px; left: 537px; top: 162px; border: 0px solid red;">
										<div class="preview"
											style="display: none; width: 600px; position: absolute; top: 70px; background-color: white; padding: 10px; margin-left: -50px; box-shadow: 3px 3px 3px grey;">
											<p style="float: left; padding: 5px;">
												<img src="images/tresorier.png" width="200" alt="">
											</p>
											<Strong>Sébastien Tan, Trésorier</Strong><br> <br>Le
											Trésorier est chargé de la gestion de la vie de la J.E. et en
											particulier de ses finances. En début de mandat, il établit
											un budget prévisionnel avec l’aide puis l’approbation du
											Conseil d’Administration. Puis au cours de l’année il gère au
											quotidien la trésorerie et donne son accord pour les
											éventuels dépenses. Il remplit également les différents
											déclaratifs sociaux et fiscaux.<br> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<Strong>Nombre
												de personnes postulant à ce poste : ${nbTreso} </Strong>
										</div>
									</div>
									<div class="organigrame" id="secretaire generale"
										style="position: relative; width: 133px; height: 67px; left: 549px; top: 7px; border: 0px solid red;">
										<div class="preview"
											style="display: none; width: 600px; position: absolute; top: 70px; background-color: white; padding: 10px; margin-left: -50px; box-shadow: 3px 3px 3px grey;">
											<p style="float: left; padding: 5px;">
												<img src="images/secretaire generale.png" width="200" alt="">
											</p>
											<Strong>Marie Bastaert, Secrétaire Générale</Strong><br>
											<br>La secrétaire générale est responsable de tous les
											papiers administratifs (déclaratifs légaux, changements de
											statuts, ceux concernant les membres) et doit rédiger les
											comptes rendus des réunions et conseils d’administration.
											Elle est responsable de la gestion associative de la
											Junior-Entreprise.<br> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<Strong>Nombre
												de personnes postulant à ce poste : ${nbSecGen} </Strong>
										</div>
									</div>
									<div class="organigrame" id="charges de qualite1"
										style="position: relative; width: 91px; height: 44px; left: 427px; top: -303px; border: 0px solid red;">
										<div class="preview"
											style="display: none; width: 600px; position: absolute; top: 50px; background-color: white; padding: 10px; margin-left: -50px; box-shadow: 3px 3px 3px grey;">
											<p style="float: left; padding: 5px;">
												<img src="images/charges de qualite1.png" width="150" alt="">
											</p>
											<Strong>Sixtine Quirouard Frileuse, Chargé de
												Qualité</Strong><br> <br>Le pôle Qualité est responsable du
											contrôle et de la correction des documents produits de la
											Junior, de la préparation de l’équipe à l’audit et de
											l’amélioration des procédures. Les membres du pôle qualité
											doivent être capable d’analyser le travail de chaque pôle et
											de proposer des solutions permettant de formaliser et
											d'augmenter l'éfficacité de chacun.<br> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<Strong>Nombre
												de personnes postulant à ce poste : ${nbCdQ} </Strong>
										</div>
									</div>
									<div class="organigrame" id="charges de qualite2"
										style="position: relative; width: 91px; height: 44px; left: 586px; top: -350px; border: 0px solid red;">
										<div class="preview"
											style="display: none; width: 600px; position: absolute; top: 50px; background-color: white; padding: 10px; margin-left: -50px; box-shadow: 3px 3px 3px grey;">
											<p style="float: left; padding: 5px;">
												<img src="images/charges de qualite2.png" width="150" alt="">
											</p>
											<Strong>Emeline Bassaget, Chargé de Qualitée</Strong><br>
											<br>Le pôle Qualité est responsable du contrôle et de la
											correction des documents produits de la Junior, de la
											préparation de l’équipe à l’audit et de l’amélioration des
											procédures. Les membres du pôle qualité doivent être capable
											d’analyser le travail de chaque pôle et de proposer des
											solutions permettant de formaliser et d'augmenter
											l'éfficacité de chacun.<br> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<Strong>Nombre
												de personnes postulant à ce poste : ${nbCdQ} </Strong>
										</div>
									</div>
									<div class="organigrame" id="charges de qualite3"
										style="position: relative; width: 91px; height: 44px; left: 274px; top: -395px; border: 0px solid red;">
										<div class="preview"
											style="display: none; width: 600px; position: absolute; top: 50px; background-color: white; padding: 10px; margin-left: -50px; box-shadow: 3px 3px 3px grey;">
											<p style="float: left; padding: 5px;">
												<img src="images/charges de qualite3.png" width="150" alt="">
											</p>
											<Strong>Julie Gassot, Chargé de Qualité</Strong><br> <br>Le
											pôle Qualité est responsable du contrôle et de la correction
											des documents produits de la Junior, de la préparation de
											l’équipe à l’audit et de l’amélioration des procédures. Les
											membres du pôle qualité doivent être capable d’analyser le
											travail de chaque pôle et de proposer des solutions
											permettant de formaliser et d'augmenter l'éfficacité de
											chacun.<br> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<Strong>Nombre
												de personnes postulant à ce poste : ${nbCdQ} </Strong>
										</div>
									</div>
									<div class="organigrame" id="charges de mission"
										style="position: relative; width: 91px; height: 44px; left: 32px; top: -400px; border: 0px solid red;">
										<div class="preview"
											style="display: none; width: 750px; position: absolute; top: 50px; background-color: white; padding: 10px; margin-left: -120px; box-shadow: 3px 3px 3px grey;">
											<p style="float: left; padding: 5px;">
												<img src="images/charges de mission1.png" width="150" alt="">
												<img src="images/charges de mission2.png" width="150" alt="">
											</p>
											<Strong>Matthieu Barsacq et Olivier Des Dorides,
												Chargés de Mission</Strong><br> <br>Ils sont chargés
											d’assurer le côté commerciale de ProG’HEI. En effet, ils
											gèrent la prospection, suivent des affaires, améliorent
											l'image de la J.E par le biais d'une prospection efficace.
											Ils sont chargés de suivre une étude lors de sa réalisation,
											c'est le lien entre l'élève réalisateur et le client, son
											rôle est essentiel pour le bon fonctionnement de la J.E <br>
											<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<Strong>Nombre
												de personnes postulant à ce poste : ${nbCdM} </Strong>
										</div>
									</div>
									<div class="organigrame" id="DSI"
										style="position: relative; width: 91px; height: 44px; left: 32px; top: -315px; border: 0px solid red;">
										<div class="preview"
											style="display: none; width: 600px; position: absolute; top: 50px; background-color: white; padding: 10px; margin-left: -50px; box-shadow: 3px 3px 3px grey;">
											<p style="float: left; padding: 5px;">
												<img src="images/DSI.png" width="150" alt="">
											</p>
											<Strong>Félix Lombard Platet, Directeur des Systèmes
												d'Information</Strong><br> <br>Le DSI gère tout le système
											d'information de la Junior : ordinateur du local, site
											internet, extranet, dropbox, pages Facebook... Il s'assure
											que ces derniers fonctionnent et les améliore pour gagner en
											performance. Comme il travaille avec tous les membres de la
											Junior, il doit être à l'écoute des autres, se montrer
											flexible, faire preuve de spontanité pour assurer le
											développement cohérent de l'ensemble des pôles.<br> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<Strong>Nombre
												de personnes postulant à ce poste : ${nbDSI} </Strong>
										</div>
									</div>
									<div class="organigrame" id="responsable communication interne"
										style="position: relative; width: 91px; height: 44px; left: 32px; top: -195px; border: 0px solid red;">
										<div class="preview"
											style="display: none; width: 600px; position: absolute; top: 50px; background-color: white; padding: 10px; margin-left: -50px; box-shadow: 3px 3px 3px grey;">
											<p style="float: left; padding: 5px;">
												<img src="images/responsable communication interne.png"
													width="150" alt="">
											</p>
											<Strong>Sélim Abed, Responsable Communication
												Interne</Strong><br> <br>Le responsable de communication
											est responsable de la communication interne (HEI) et externe
											(Hors HEI) de ProG'HEI. Pour cela il définit en début d'année
											une stratégie efficasse et organisée afin de toucher le plus
											de monde possible. Pour l'interne il réalise des affcihes,
											des supports vidéos, met à jour les pages ProG des réseau
											sociaux,organise des manifestations afin de faire connaitre
											ProG au seins d'HEI.<br> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<Strong>Nombre
												de personnes postulant à ce poste : ${nbRespComInt} </Strong>
										</div>
									</div>
									<div class="organigrame" id="responsable communication externe"
										style="position: relative; width: 91px; height: 44px; left: 32px; top: -165px; border: 0px solid red;">
										<div class="preview"
											style="display: none; width: 600px; position: absolute; top: 50px; background-color: white; padding: 10px; margin-left: -50px; box-shadow: 3px 3px 3px grey;">
											<p style="float: left; padding: 5px;">
												<img src="images/responsable communication externe.png"
													width="150" alt="">
											</p>
											<Strong>Florent Dancy, Responsable Communication
												Externe</Strong><br> <br>Le responsable de communication
											est responsable de la communication interne (HEI) et externe
											(Hors HEI) de ProG'HEI. Pour cela il définit en début d'année
											une stratégie efficasse et organisée afin de toucher le plus
											de monde possible. Pour l'interne il réalise des affcihes,
											des supports vidéos, met à jour les pages ProG des réseau
											sociaux,organise des manifestations afin de faire connaitre
											ProG au seins d'HEI.<br> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<Strong>Nombre
												de personnes postulant à ce poste : ${nbRespComExt} </Strong>
										</div>
									</div>
									<div class="organigrame" id="responsable departement inge"
										style="position: relative; width: 91px; height: 44px; left: 263px; top: -110px; border: 0px solid red;">
										<div class="preview"
											style="display: none; width: 600px; position: absolute; top: 50px; background-color: white; padding: 10px; margin-left: -50px; box-shadow: 3px 3px 3px grey;">
											<p style="float: left; padding: 5px;">
												<img src="images/responsable departement inge.png"
													width="150" alt="">
											</p>
											<Strong>Rodolphe Rivaux, Responsable Département
												Inge</Strong><br> <br>Le responsable de pôle définit une
											stratégie et cible les prospects et s’assure de la
											prospection efficace de son pôle. Il va aussi sélectionner
											les étudiants réalisateurs et aider les chargés d’affaires
											dans la rédaction des documents. Il doit être force de
											proposition pour faire évoluer les indicateurs et garder la
											motivation dans son pôle.<br> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<Strong>Nombre
												de personnes postulant à ce poste : ${nbRespDepInge} </Strong>
										</div>
									</div>
									<div class="organigrame" id="responsable departement iti"
										style="position: relative; width: 91px; height: 44px; left: 526px; top: -155px; border: 0px solid red;">
										<div class="preview"
											style="display: none; width: 600px; position: absolute; top: 50px; background-color: white; padding: 10px; margin-left: -50px; box-shadow: 3px 3px 3px grey;">
											<p style="float: left; padding: 5px;">
												<img src="images/responsable departement iti.png"
													width="150" alt="">
											</p>
											<Strong>Théo Fanchini, Responsable Département ITI</Strong><br>
											<br>Le responsable de pôle définit une stratégie et
											cible les prospects et s’assure de la prospection efficace de
											son pôle. Il va aussi sélectionner les étudiants réalisateurs
											et aider les chargés d’affaires dans la rédaction des
											documents. Il doit être force de proposition pour faire
											évoluer les indicateurs et garder la motivation dans son
											pôle.<br> <br>&nbsp;&nbsp;&nbsp;<Strong>Nombre
												de personnes postulant à ce poste : ${nbRespDepITI} </Strong>
										</div>
									</div>
									<div class="organigrame" id="charges d'affaire"
										style="position: relative; width: 91px; height: 44px; left: 395px; top: -150px; border: 0px solid red;">
										<div class="preview"
											style="display: none; width: 1400px; position: absolute; top: 50px; background-color: white; padding: 10px; margin-left: -580px; box-shadow: 3px 3px 3px grey;">
											<p style="float: left; padding: 5px;">
												<img src="images/charges d'affaire1.png" width="150" alt="">
												<img src="images/charges d'affaire2.png" width="150" alt="">
												<img src="images/charges d'affaire3.png" width="150" alt="">
												<img src="images/charges d'affaire4.png" width="150" alt="">
												<img src="images/charges d'affaire5.png" width="150" alt="">
												<img src="images/charges d'affaire6.png" width="150" alt="">
											</p>
											<Strong>Thomas Biget, Solenne Roy, Amandine Lecomte,
												Alexandre Spiri, Hélène Guibault, Alice Delabre, Chargés
												d'Affaire</Strong><br> <br>Ils sont chargés d’assurer le
											côté commerciale de ProG’HEI. En effet, ils gèrent la
											prospection, suivent des affaires, améliorent l'image de la
											J.E par le biais d'une prospection efficace. Ils sont chargés
											de suivre une étude lors de sa réalisation, c'est le lien
											entre l'élève réalisateur et le client, son rôle est
											essentiel pour le bon fonctionnement de la J.E<br>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<Strong>Nombre
												de personnes postulant à ce poste : ${nbCdA} </Strong>
										</div>
									</div>
									<div class="organigrame" id="comptable"
										style="position: relative; width: 91px; height: 44px; left: 717px; top: -360px; border: 0px solid red;">
										<div class="preview"
											style="display: none; width: 600px; position: absolute; top: 50px; background-color: white; padding: 10px; margin-left: -50px; box-shadow: 3px 3px 3px grey;">
											<p style="float: left; padding: 5px;">
												<img src="images/comptable.png" width="150" alt="">
											</p>
											<Strong>Pierre Le Douarin, Comptable</Strong><br> <br>Le
											Trésorier est chargé de la gestion de la vie de la J.E. et en
											particulier de ses finances. En début de mandat, il établit
											un budget prévisionnel avec l’aide puis l’approbation du
											Conseil d’Administration. Puis au cours de l’année il gère au
											quotidien la trésorerie et donne son accord pour les
											éventuels dépenses. Il remplit également les différents
											déclaratifs sociaux et fiscaux.<br> <br>&nbsp;&nbsp;&nbsp;&nbsp;<Strong>Nombre
												de personnes postulant à ce poste : ${nbComptable} </Strong>
										</div>
									</div>

									<script type="text/javascript">
										$(".organigrame").mouseenter(
												function() {
													$(this)
															.children(
																	".preview")
															.show();
												});

										$(".organigrame").mouseleave(
												function() {
													$(this)
															.children(
																	".preview")
															.hide();
												});
									</script>

								</div>

							</div>

							<div class="span12 mot-president">
								<br />
								<ul>
									<li class="subtitle-puce" id="president-front">
										<h4>Vos coordonnées</h4>
									</li>
								</ul>
								<hr>

								<form method="post" action="accueilPostulant">
									<table>

										<tbody>
											<div class="coordonnees">
												<td>Civilité</td>
												<td><select name="civilite" id="civilite">
														<option value="2">Mlle.</option>
														<option value="1">M.</option>
												</select></td>
												</tr>
												<tr>
													<td>Matricule HEI</td>
													<td><input type="text" id="matricule"
														name="idetudiant" required
														placeholder="Matricule HEI sans le h"></td>
												</tr>
												<tr>
													<td>Nom</td>
													<td><input type="text" id="nom" name="nom" required></td>
												</tr>
												<tr>
													<td>Prénom</td>
													<td><input type="text" id="prenom" name="prenom"
														required></td>
												</tr>
												<tr>
													<td>Numéro de téléphone</td>
													<td><input type="tel" id="telephone" name="telephone"
														required></td>
												</tr>
												<tr>
													<td>E-mail</td>
													<td><input type="email" id="email" name="email"
														required></td>
												</tr>
												<tr>
													<td>Promo</td>
													<td><select name="promo" id="promo">
															<option value="1">HEI 1</option>
															<option value="2">HEI 2</option>
															<option value="3">HEI 3</option>
															<option value="4">HEI 4</option>
													</select></td>
												</tr>
												<tr>
													<td>Poste Visé</td>
													<td><select name="postevise" id="postevise">
															<option value="president">President</option>
															<option value="vice president">Vice président</option>
															<option value="tresorier">Trésorier</option>
															<option value="responsable commercial">Responsable
																Commercial</option>
															<option value="secretaire generale">Secrétaire
																Général</option>
															<option value="responsable departement ITI">Responsable
																Département ITI</option>
															<option value="responsable departement Ingé">Responsable
																Département Ingé</option>
															<option value="directeur des systemes informatiques">Directeur
																des Systèmes Informatiques</option>
															<option value="responsable communication externe">Responsable
																Communication Externe</option>
															<option value="responsable communication interne">Responsable
																Communication Interne</option>
															<option value="charge d'affaire">Chargé
																d'Affaire</option>
															<option value="charge de qualite">Chargé de
																Qualité</option>
															<option value="charge de mission">Chargé de
																Mission</option>
															<option value="comptable">Comptable</option>
													</select></td>
												</tr>

												<tr>
													<td>Certificat de scolarité</td>
													<td><input name="certificatScolarite" type="file"
														value="certificatScolarite"></td>
												</tr>
												<tr>
													<td>Carte Vitale (ou attestion de sécurité sociale)</td>
													<td><input name="carteVitale" type="file"
														value="carteVitale"></td>
												</tr>
												<tr>
													<td>CV</td>
													<td><input name="cv" type="file" value="cv"></td>
												</tr>
												<tr>
													<td>Lettre de motivation</td>
													<td><input name="lettreMotivation" type="file"
														value="lettreMotivation"></td>
												</tr>

												<tr>
													<td>Fiche d'adhésion (à imprimer pour signature)</td>
													<td><a
														href="http://localhost:8080/upload/images/ficheAdhesion.pdf"
														download="Fiche d'Adhésion">Télécharger</a></td>
												</tr>
												<tr>
													<td>Fiche de Membre (à remplir directement)</td>
													<td><a
														href="http://localhost:8080/upload/images/Membre Actif.docx"
														download="Membre Actif">Télécharger</a></td>
												</tr>

											</div>

										</tbody>

									</table>
									<tr>
										<td></td>
										<td><input type="submit" value="Enregistrer"></td>
									</tr>

								</form>

							</div>


							<div class="span12 quotation" id="slogan">
								<hr>
								<h5>ProG'HEI - Vos projets, nos compétences.</h5>
								<hr>
							</div>
						</div>
					</div>
				</div>
			</section>


			<div class="span12">
				<div class="span10 offset2">
					<footer class="footer container">

						<div class="infos-legales">
							<p class="infos-legales">
								ProG'HEI - La Junior Entreprise d'HEI <br> 13 Rue de Toul -
								59046 Lille Cedex <br> <a href="http://www.hei.fr">HEI</a>
								| <a href="http://www.junior-entreprises.com/">CNJE</a>
							</p>

						</div>

					</footer>
				</div>
			</div>

		</div>

	</div>



</body>
</html>