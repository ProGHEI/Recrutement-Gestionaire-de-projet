<!DOCTYPE html>
<html lang="fr">
<%@ page pageEncoding="UTF-8"%>
<head>
<jsp:include page="head.jsp">
			<jsp:param name="pageSelectionnee" value="ajout"/>
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
						<div class="span4">

							<div class="span12">

								<div id="twitter">
									<a href="https://twitter.com/proghei" target="_blank"><img
										src="images/logo-twitter.png" alt=""></a>
								</div>
								<div id="facebook">
									<a
										href="https://www.facebook.com/pages/ProGHEI-La-Junior-Entreprise-dHEI/232534073459701"
										target="_blank"><img src="images/logo-facebook.png" alt=""></a>
								</div>

							</div>

							<div class="span12">
								<!--              <div id="viadeo">
                              <a href="http://www.linkedin.com/company/prog'hei" target="_blank"><img src="sites/proghei.fr/themes/bootstrap/assets/img/linkedi32.png" alt=""></a>
                            </div>-->
								<div id="linkedin">
									<a href="http://www.linkedin.com/company/prog'hei"
										target="_blank"><img src="images/logo-linkedin.png" alt=""></a>
								</div>
							</div>

						</div>
					</div>

				</div>

				<header id="navbar" role="banner" class="navbar navbar-fixed-top">
					<div class="navbar-inner">

						<div class="container">
							<!-- .btn-navbar is used as the toggle for collapsed navbar content -->
							<a class="btn btn-navbar" data-toggle="collapse"
								data-target=".nav-collapse"> <span class="icon-bar"></span>
								<span class="icon-bar"></span> <span class="icon-bar"></span>
							</a>



							<div class="nav-collapse">
								<nav role="navigation">
									<ul class="menu nav">
										<li class="first leaf"><a href="http://localhost:8080/upload" >Accueil</a></li>
										<li class="leaf"><a href="http://localhost:8080/upload">Junior-Entreprise
												?</a></li>
										<li class="leaf"><a href="http://localhost:8080/upload">Nos
												partenaires</a></li>
										<li class="leaf"><a href="/equipe">Notre Équipe</a></li>
										<li class="last expanded dropdown"><a href="/processus"
											title="" class="dropdown-toggle" data-toggle="dropdown"
											data-target="#">Prestations<span class="caret"></span></a>
											<ul class="dropdown-menu">
												<li class="first leaf"><a href="http://localhost:8080/upload" title="">Nos
														Compétences</a></li>
												<li class="last leaf"><a href="http://localhost:8080/upload">Notre
														Démarche</a></li>
											</ul>
										<li class="last expanded dropdown"><a href="/processus"
											title="" class="dropdown-toggle" data-toggle="dropdown"
											data-target="#">Postuler<span class="caret"></span></a>
											<ul class="dropdown-menu">
												<li class="first leaf"><a href="accueilPostulant"
													title="">Membre de la J.E</a></li>
												<li class="last leaf"><a href="accueilRealisateur">Eleve
														Realisateur</a></li>
											</ul>
											<li class="last expanded dropdown"><a
											href="http://localhost:8080/upload" title=""
											class="dropdown-toggle" data-toggle="dropdown"
											data-target="#">Espace Membre<span class="caret"></span></a>
											<ul class="dropdown-menu">
												<li class="first leaf"><a href="connexion"
													title="">Membre</a></li>
												<li class="last leaf"><a href="connexionAdmin">Admin</a></li>
											</ul>
									</ul>
									
								</nav>
							</div>
						</div>
					</div>
				</header>
				<br /> <a id="main-content"></a>
				<div class="contenu-principal">
					<div class="spanGlobal">
						<div class="spanArticle">

							<div class="spanTexte">
								<ul>
									<li class="subtitle-puce" id="JE-front">
										<h4>Vous voulez réaliser une étude pour ProG'HEI ?</h4>
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
								<br /> <img class="cooperation" src="images/cooperation.png"
									width="500">
							</div>


							<div class="span12 mot-president">
								<br />
								<ul>
									<li class="subtitle-puce" id="president-front">
										<h4>Vos coordonnées</h4>
									</li>
								</ul>
								<hr>

								<form method="post" action="accueilRealisateur">
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
														name="idetudiant" required placeholder="Matricule HEI sans le h"></td>
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
															<option value="4">HEI 4</option>
															<option value="5">HEI 5</option>
													</select></td>
												</tr>
												<tr>
													<td>Domaine</td>
													<td><select name="domaine" id="domaine">
															<option value="vide"> </option>
															<option value="BAA">BAA</option>
															<option value="BTP">BTP</option>
															<option value="CM">CM</option>
															<option value="ESEA">ESEA</option>
															<option value="ITI">ITI</option>
															<option value="TIMTEX">TIMTEX</option>
													</select></td>
												</tr>

												<tr>
													<td>Certificat de scolarité</td>
													<td><input type="file" value="certificatScolarite"
														></td>
												</tr>
												<tr>
													<td>Carte Vitale (ou attestion de sécurité sociale)</td>
													<td><input type="file" value="carteVitale" ></td>
												</tr>
												<tr>
													<td>CV</td>
													<td><input type="file" value="cv" ></td>
												</tr>

												<tr>
													<td>Fiche d'adhésion (à imprimer pour signature)</td>
													<td><a
														href="http://localhost:8080/upload/images/ficheAdhesion.pdf"
														download="Fiche d'Adhésion">Télécharger</td>
												</tr>
												<tr>
													<td>Fiche de Membre (à remplir directement)</td>
													<td><a
														href="http://localhost:8080/upload/images/Membre Actif.docx"
														download="Membre Actif">Télécharger</td>
												</tr>
											</div>



										</tbody>
									</table>
									

							</div>


							<br></br> <br></br>

						</div>
						
							<script>
							$(document).ready(function()									
							{
								$("#competenceBAA").hide();
								$("#competenceBTP").hide();
								$("#competenceCM").hide();
								$("#competenceESEA").hide();
								$("#competenceITI").hide();
								$("#competenceTIMTEX").hide();
								$("#formulaire").hide();
								
							$("#domaine").change(function(){
								if(document.getElementById('domaine').value == "vide")
								{
									$("#competenceBAA").hide();
									$("#competenceBTP").hide();
									$("#competenceCM").hide();
									$("#competenceESEA").hide();
									$("#competenceITI").hide();
									$("#competenceTIMTEX").hide();
									$("#formulaire").hide();
								}
								if(document.getElementById('domaine').value == "BAA")
									{
									$("#competenceBAA").show();
									$("#competenceBTP").hide();
									$("#competenceCM").hide();
									$("#competenceESEA").hide();
									$("#competenceITI").hide();
									$("#competenceTIMTEX").hide();
									$("#formulaire").show();
									}
								if(document.getElementById('domaine').value == "BTP")
									{
									$("#competenceBAA").hide();
									$("#competenceBTP").show();
									$("#competenceCM").hide();
									$("#competenceESEA").hide();
									$("#competenceITI").hide();
									$("#competenceTIMTEX").hide();
									$("#formulaire").show();
									}
								if(document.getElementById('domaine').value == "CM")
									{
									$("#competenceBAA").hide();
									$("#competenceBTP").hide();
									$("#competenceCM").show();
									$("#competenceESEA").hide();
									$("#competenceITI").hide();
									$("#competenceTIMTEX").hide();
									$("#formulaire").show();
									}
								if(document.getElementById('domaine').value == "ESEA")
									{
									$("#competenceBAA").hide();
									$("#competenceBTP").hide();
									$("#competenceCM").hide();
									$("#competenceESEA").show();
									$("#competenceITI").hide();
									$("#competenceTIMTEX").hide();
									$("#formulaire").show();
									}
								if(document.getElementById('domaine').value == "ITI")
									{
									$("#competenceBAA").hide();
									$("#competenceBTP").hide();
									$("#competenceCM").hide();
									$("#competenceESEA").hide();
									$("#competenceITI").show();
									$("#competenceTIMTEX").hide();
									$("#formulaire").show();
									}
								if(document.getElementById('domaine').value == "TIMTEX")
									{
									$("#competenceBAA").hide();
									$("#competenceBTP").hide();
									$("#competenceCM").hide();
									$("#competenceESEA").hide();
									$("#competenceITI").hide();
									$("#competenceTIMTEX").show();
									$("#formulaire").show();
									}
								});	
							});
							</script>

						 
						 
						
			<!-- *******************BAA************************** -->
	<div id="competenceBAA">		
		<div class="span12 mot-president">
			<br />
			<ul>
				<li class="subtitle-puce" id="president-front">
					<h4>Vos Compétences</h4>
				</li>
			</ul>
<br />
				<div name="Competenceautocad" id="1">
					<img src="images/autocad.png" width="80" height="50" alt="">
					Cliquez sur l'étoile de votre choix pour indiquer votre niveau
					en AUTOCAD: <br /> <br />0<input type="range" name="autocad" id="autocad" value="0" max="4" min="0" step="1">4
					<script>
					$(document).ready(function()
							{
						$("#connaispas1").hide();
						$("#notiondebase1").hide();
						$("#notionsavancees1").hide();
						$("#maitrise1").hide();
						$("#expertise1").hide();
					
					$("#autocad").change(function(){
					if(document.getElementById('autocad').value == "0")
					{
						$("#connaispas1").show();
						$("#notiondebase1").hide();
						$("#notionsavancees1").hide();
						$("#maitrise1").hide();
						$("#expertise1").hide();
						$("#remplirnote1").hide();
					}
					if(document.getElementById('autocad').value == "1")
					{
						$("#connaispas1").hide();
						$("#notiondebase1").show();
						$("#notionsavancees1").hide();
						$("#maitrise1").hide();
						$("#expertise1").hide();
						$("#remplirnote1").hide();
					}	
					if(document.getElementById('autocad').value == "2")
					{
						$("#connaispas1").hide();
						$("#notiondebase1").hide();
						$("#notionsavancees1").show();
						$("#maitrise1").hide();
						$("#expertise1").hide();
						$("#remplirnote1").hide();
					}	
					if(document.getElementById('autocad').value == "3")
					{
						$("#connaispas1").hide();
						$("#notiondebase1").hide();
						$("#notionsavancees1").hide();
						$("#maitrise1").show();
						$("#expertise1").hide();
						$("#remplirnote1").hide();
					}
					if(document.getElementById('autocad').value == "4")
					{
						$("#connaispas1").hide();
						$("#notiondebase1").hide();
						$("#notionsavancees1").hide();
						$("#maitrise1").hide();
						$("#expertise1").show();
						$("#remplirnote1").hide();
					}	
					});
							});
					</script>
					<br />
					<br />
					<div id="connaispas1">
					Connais pas !
					</div>
					<div id="notiondebase1">
					Notions de base
					</div>
					<div id="notionsavancees1">
					Notions avancées
					</div>
					<div id="maitrise1">
					Maitrise
					</div>
					<div id="expertise1">
					Expertise
					</div>
					<div id="remplirnote1">
					Veuillez renseigner
						votre niveau pour cette compétence
					</div>
					<br />
				</div>
				
				<div name="Competenceadvance" id="2">
					<img src="images/advance.png" width="80" height="50" alt="">
					Cliquez sur l'étoile de votre choix pour indiquer votre niveau
					en ADVANCE: <br /> <br />0<input type="range" name="advance" id="advance" value="0" max="4" min="0" step="1">4
					<script>
					$(document).ready(function()
							{
						$("#connaispas2").hide();
						$("#notiondebase2").hide();
						$("#notionsavancees2").hide();
						$("#maitrise2").hide();
						$("#expertise2").hide();
					
					$("#advance").change(function(){
					if(document.getElementById('advance').value == "0")
					{
						$("#connaispas2").show();
						$("#notiondebase2").hide();
						$("#notionsavancees2").hide();
						$("#maitrise2").hide();
						$("#expertise2").hide();
						$("#remplirnote2").hide();
					}
					if(document.getElementById('advance').value == "1")
					{
						$("#connaispas2").hide();
						$("#notiondebase2").show();
						$("#notionsavancees2").hide();
						$("#maitrise2").hide();
						$("#expertise2").hide();
						$("#remplirnote2").hide();
					}	
					if(document.getElementById('advance').value == "2")
					{
						$("#connaispas2").hide();
						$("#notiondebase2").hide();
						$("#notionsavancees2").show();
						$("#maitrise2").hide();
						$("#expertise2").hide();
						$("#remplirnote2").hide();
					}	
					if(document.getElementById('advance').value == "3")
					{
						$("#connaispas2").hide();
						$("#notiondebase2").hide();
						$("#notionsavancees2").hide();
						$("#maitrise2").show();
						$("#expertise2").hide();
						$("#remplirnote2").hide();
					}
					if(document.getElementById('advance').value == "4")
					{
						$("#connaispas2").hide();
						$("#notiondebase2").hide();
						$("#notionsavancees2").hide();
						$("#maitrise2").hide();
						$("#expertise2").show();
						$("#remplirnote2").hide();
					}	
					});
							});
					</script>
					<br />
					<br />
					<div id="connaispas2">
					Connais pas !
					</div>
					<div id="notiondebase2">
					Notions de base
					</div>
					<div id="notionsavancees2">
					Notions avancées
					</div>
					<div id="maitrise2">
					Maitrise
					</div>
					<div id="expertise2">
					Expertise
					</div>
					<div id="remplirnote2">
					Veuillez renseigner
						votre niveau pour cette compétence
					</div>
					<br />
				</div>
				
				
				<div name="Competencemaquette" id="3">
					<img src="images/maquette.png" width="80" height="50" alt="">
					Cliquez sur l'étoile de votre choix pour indiquer votre niveau
					en MAQUETTE: <br /> <br />0<input type="range" name="maquette" id="maquette" value="0" max="4" min="0" step="1">4
					<script>
					$(document).ready(function()
							{
						$("#connaispas3").hide();
						$("#notiondebase3").hide();
						$("#notionsavancees3").hide();
						$("#maitrise3").hide();
						$("#expertise3").hide();
					
					$("#maquette").change(function(){
					if(document.getElementById('maquette').value == "0")
					{
						$("#connaispas3").show();
						$("#notiondebase3").hide();
						$("#notionsavancees3").hide();
						$("#maitrise3").hide();
						$("#expertise3").hide();
						$("#remplirnote3").hide();
					}
					if(document.getElementById('maquette').value == "1")
					{
						$("#connaispas3").hide();
						$("#notiondebase3").show();
						$("#notionsavancees3").hide();
						$("#maitrise3").hide();
						$("#expertise3").hide();
						$("#remplirnote3").hide();
					}	
					if(document.getElementById('maquette').value == "2")
					{
						$("#connaispas3").hide();
						$("#notiondebase3").hide();
						$("#notionsavancees3").show();
						$("#maitrise3").hide();
						$("#expertise3").hide();
						$("#remplirnote3").hide();
					}	
					if(document.getElementById('maquette').value == "3")
					{
						$("#connaispas3").hide();
						$("#notiondebase3").hide();
						$("#notionsavancees3").hide();
						$("#maitrise3").show();
						$("#expertise3").hide();
						$("#remplirnote3").hide();
					}
					if(document.getElementById('maquette').value == "4")
					{
						$("#connaispas3").hide();
						$("#notiondebase3").hide();
						$("#notionsavancees3").hide();
						$("#maitrise3").hide();
						$("#expertise3").show();
						$("#remplirnote3").hide();
					}	
					});
							});
					</script>
					<br />
					<br />
					<div id="connaispas3">
					Connais pas !
					</div>
					<div id="notiondebase3">
					Notions de base
					</div>
					<div id="notionsavancees3">
					Notions avancées
					</div>
					<div id="maitrise3">
					Maitrise
					</div>
					<div id="expertise3">
					Expertise
					</div>
					<div id="remplirnote3">
					Veuillez renseigner
						votre niveau pour cette compétence
					</div>
					<br />
				</div>
				</div>
				</div>											
			<!-- *******************FIN BAA************************** -->
			
			<!-- *******************BTP************************** -->
	<div id="competenceBTP">		
		<div class="span12 mot-president">
			<br />
			<ul>
				<li class="subtitle-puce" id="president-front">
					<h4>Vos Compétences</h4>
				</li>
			</ul>
<br />
				<div name="Competencecalculdesstructures" id="4">
					<img src="images/calculdesstructures.png" width="80" height="50" alt="">
					Cliquez sur l'étoile de votre choix pour indiquer votre niveau
					en CALCUL DES STRUCTURES: <br /> <br />0<input type="range" name="calculdesstructures" id="calculdesstructures" value="0" max="4" min="0" step="1">4
					<script>
					$(document).ready(function()
							{
						$("#connaispas4").hide();
						$("#notiondebase4").hide();
						$("#notionsavancees4").hide();
						$("#maitrise4").hide();
						$("#expertise4").hide();
					
					$("#calculdesstructures").change(function(){
					if(document.getElementById('calculdesstructures').value == "0")
					{
						$("#connaispas4").show();
						$("#notiondebase4").hide();
						$("#notionsavancees4").hide();
						$("#maitrise4").hide();
						$("#expertise4").hide();
						$("#remplirnote4").hide();
					}
					if(document.getElementById('calculdesstructures').value == "1")
					{
						$("#connaispas4").hide();
						$("#notiondebase4").show();
						$("#notionsavancees4").hide();
						$("#maitrise4").hide();
						$("#expertise4").hide();
						$("#remplirnote4").hide();
					}	
					if(document.getElementById('calculdesstructures').value == "2")
					{
						$("#connaispas4").hide();
						$("#notiondebase4").hide();
						$("#notionsavancees4").show();
						$("#maitrise4").hide();
						$("#expertise4").hide();
						$("#remplirnote4").hide();
					}	
					if(document.getElementById('calculdesstructures').value == "3")
					{
						$("#connaispas4").hide();
						$("#notiondebase4").hide();
						$("#notionsavancees4").hide();
						$("#maitrise4").show();
						$("#expertise4").hide();
						$("#remplirnote4").hide();
					}
					if(document.getElementById('calculdesstructures').value == "4")
					{
						$("#connaispas4").hide();
						$("#notiondebase4").hide();
						$("#notionsavancees4").hide();
						$("#maitrise4").hide();
						$("#expertise4").show();
						$("#remplirnote4").hide();
					}	
					});
							});
					</script>
					<br />
					<br />
					<div id="connaispas4">
					Connais pas !
					</div>
					<div id="notiondebase4">
					Notions de base
					</div>
					<div id="notionsavancees4">
					Notions avancées
					</div>
					<div id="maitrise4">
					Maitrise
					</div>
					<div id="expertise4">
					Expertise
					</div>
					<div id="remplirnote4">
					Veuillez renseigner
						votre niveau pour cette compétence
					</div>
					<br />
				</div>
				
				<div name="Competencedimensionnement" id="5">
					<img src="images/dimensionnement.png" width="80" height="50" alt="">
					Cliquez sur l'étoile de votre choix pour indiquer votre niveau
					en DIMENSIONNEMENT: <br /> <br />0<input type="range" name="dimensionnement" id="dimensionnement" value="0" max="4" min="0" step="1">4
					<script>
					$(document).ready(function()
							{
						$("#connaispas5").hide();
						$("#notiondebase5").hide();
						$("#notionsavancees5").hide();
						$("#maitrise5").hide();
						$("#expertise5").hide();
					
					$("#dimensionnement").change(function(){
					if(document.getElementById('dimensionnement').value == "0")
					{
						$("#connaispas5").show();
						$("#notiondebase5").hide();
						$("#notionsavancees5").hide();
						$("#maitrise5").hide();
						$("#expertise5").hide();
						$("#remplirnote5").hide();
					}
					if(document.getElementById('dimensionnement').value == "1")
					{
						$("#connaispas5").hide();
						$("#notiondebase5").show();
						$("#notionsavancees5").hide();
						$("#maitrise5").hide();
						$("#expertise5").hide();
						$("#remplirnote5").hide();
					}	
					if(document.getElementById('dimensionnement').value == "2")
					{
						$("#connaispas5").hide();
						$("#notiondebase5").hide();
						$("#notionsavancees5").show();
						$("#maitrise5").hide();
						$("#expertise5").hide();
						$("#remplirnote5").hide();
					}	
					if(document.getElementById('dimensionnement').value == "3")
					{
						$("#connaispas5").hide();
						$("#notiondebase5").hide();
						$("#notionsavancees5").hide();
						$("#maitrise5").show();
						$("#expertise5").hide();
						$("#remplirnote5").hide();
					}
					if(document.getElementById('dimensionnement').value == "4")
					{
						$("#connaispas5").hide();
						$("#notiondebase5").hide();
						$("#notionsavancees5").hide();
						$("#maitrise5").hide();
						$("#expertise5").show();
						$("#remplirnote5").hide();
					}	
					});
							});
					</script>
					<br />
					<br />
					<div id="connaispas5">
					Connais pas !
					</div>
					<div id="notiondebase5">
					Notions de base
					</div>
					<div id="notionsavancees5">
					Notions avancées
					</div>
					<div id="maitrise5">
					Maitrise
					</div>
					<div id="expertise5">
					Expertise
					</div>
					<div id="remplirnote5">
					Veuillez renseigner
						votre niveau pour cette compétence
					</div>
					<br />
				</div>
				
				
				<div name="Competenceplanification" id="6">
					<img src="images/planification.png" width="80" height="50" alt="">
					Cliquez sur l'étoile de votre choix pour indiquer votre niveau
					en PLANIFICATION: <br /> <br />0<input type="range" name="planification" id="planification" value="0" max="4" min="0" step="1">4
					<script>
					$(document).ready(function()
							{
						$("#connaispas6").hide();
						$("#notiondebase6").hide();
						$("#notionsavancees6").hide();
						$("#maitrise6").hide();
						$("#expertise6").hide();
					
					$("#planification").change(function(){
					if(document.getElementById('planification').value == "0")
					{
						$("#connaispas6").show();
						$("#notiondebase6").hide();
						$("#notionsavancees6").hide();
						$("#maitrise6").hide();
						$("#expertise6").hide();
						$("#remplirnote6").hide();
					}
					if(document.getElementById('planification').value == "1")
					{
						$("#connaispas6").hide();
						$("#notiondebase6").show();
						$("#notionsavancees6").hide();
						$("#maitrise6").hide();
						$("#expertise6").hide();
						$("#remplirnote6").hide();
					}	
					if(document.getElementById('planification').value == "2")
					{
						$("#connaispas6").hide();
						$("#notiondebase6").hide();
						$("#notionsavancees6").show();
						$("#maitrise6").hide();
						$("#expertise3").hide();
						$("#remplirnote3").hide();
					}	
					if(document.getElementById('planification').value == "3")
					{
						$("#connaispas6").hide();
						$("#notiondebase6").hide();
						$("#notionsavancees6").hide();
						$("#maitrise6").show();
						$("#expertise6").hide();
						$("#remplirnote6").hide();
					}
					if(document.getElementById('planification').value == "4")
					{
						$("#connaispas6").hide();
						$("#notiondebase6").hide();
						$("#notionsavancees6").hide();
						$("#maitrise6").hide();
						$("#expertise6").show();
						$("#remplirnote6").hide();
					}	
					});
							});
					</script>
					<br />
					<br />
					<div id="connaispas6">
					Connais pas !
					</div>
					<div id="notiondebase6">
					Notions de base
					</div>
					<div id="notionsavancees6">
					Notions avancées
					</div>
					<div id="maitrise6">
					Maitrise
					</div>
					<div id="expertise6">
					Expertise
					</div>
					<div id="remplirnote6">
					Veuillez renseigner
						votre niveau pour cette compétence
					</div>
					<br />
				</div>
				</div>
				</div>												
			<!-- *******************FIN BTP************************** -->			
			
						<!-- *******************CM************************** -->
	<div id="competenceCM">		
		<div class="span12 mot-president">
			<br />
			<ul>
				<li class="subtitle-puce" id="president-front">
					<h4>Vos Compétences</h4>
				</li>
			</ul>
<br />
				<div name="Competencecatia" id="7">
					<img src="images/catia.png" width="80" height="50" alt="">
					Cliquez sur l'étoile de votre choix pour indiquer votre niveau
					en CATIA: <br /> <br />0<input type="range" name="catia" id="catia" value="0" max="4" min="0" step="1">4
					<script>
					$(document).ready(function()
							{
						$("#connaispas7").hide();
						$("#notiondebase7").hide();
						$("#notionsavancees7").hide();
						$("#maitrise7").hide();
						$("#expertise7").hide();
					
					$("#catia").change(function(){
					if(document.getElementById('catia').value == "0")
					{
						$("#connaispas7").show();
						$("#notiondebase7").hide();
						$("#notionsavancees7").hide();
						$("#maitrise7").hide();
						$("#expertise7").hide();
						$("#remplirnote7").hide();
					}
					if(document.getElementById('catia').value == "1")
					{
						$("#connaispas7").hide();
						$("#notiondebase7").show();
						$("#notionsavancees7").hide();
						$("#maitrise7").hide();
						$("#expertise7").hide();
						$("#remplirnote7").hide();
					}	
					if(document.getElementById('catia').value == "2")
					{
						$("#connaispas7").hide();
						$("#notiondebase7").hide();
						$("#notionsavancees7").show();
						$("#maitrise7").hide();
						$("#expertise7").hide();
						$("#remplirnote7").hide();
					}	
					if(document.getElementById('catia').value == "3")
					{
						$("#connaispas7").hide();
						$("#notiondebase7").hide();
						$("#notionsavancees7").hide();
						$("#maitrise7").show();
						$("#expertise7").hide();
						$("#remplirnote7").hide();
					}
					if(document.getElementById('catia').value == "4")
					{
						$("#connaispas7").hide();
						$("#notiondebase7").hide();
						$("#notionsavancees7").hide();
						$("#maitrise7").hide();
						$("#expertise7").show();
						$("#remplirnote7").hide();
					}	
					});
							});
					</script>
					<br />
					<br />
					<div id="connaispas7">
					Connais pas !
					</div>
					<div id="notiondebase7">
					Notions de base
					</div>
					<div id="notionsavancees7">
					Notions avancées
					</div>
					<div id="maitrise7">
					Maitrise
					</div>
					<div id="expertise7">
					Expertise
					</div>
					<div id="remplirnote7">
					Veuillez renseigner
						votre niveau pour cette compétence
					</div>
					<br />
				</div>
				
				<div name="Competencecalculdescotes" id="8">
					<img src="images/caldescotes.png" width="80" height="50" alt="">
					Cliquez sur l'étoile de votre choix pour indiquer votre niveau
					en CALCUL DE COTES: <br /> <br />0<input type="range" name="calculdescotes" id="calculdescotes" value="0" max="4" min="0" step="1">4
					<script>
					$(document).ready(function()
							{
						$("#connaispas8").hide();
						$("#notiondebase8").hide();
						$("#notionsavancees8").hide();
						$("#maitrise8").hide();
						$("#expertise8").hide();
					
					$("#calculdescotes").change(function(){
					if(document.getElementById('calculdescotes').value == "0")
					{
						$("#connaispas8").show();
						$("#notiondebase8").hide();
						$("#notionsavancees8").hide();
						$("#maitrise8").hide();
						$("#expertise8").hide();
						$("#remplirnote8").hide();
					}
					if(document.getElementById('calculdescotes').value == "1")
					{
						$("#connaispas8").hide();
						$("#notiondebase8").show();
						$("#notionsavancees8").hide();
						$("#maitrise8").hide();
						$("#expertise8").hide();
						$("#remplirnote8").hide();
					}	
					if(document.getElementById('calculdescotes').value == "2")
					{
						$("#connaispas8").hide();
						$("#notiondebase8").hide();
						$("#notionsavancees8").show();
						$("#maitrise8").hide();
						$("#expertise8").hide();
						$("#remplirnote8").hide();
					}	
					if(document.getElementById('calculdescotes').value == "3")
					{
						$("#connaispas8").hide();
						$("#notiondebase8").hide();
						$("#notionsavancees8").hide();
						$("#maitrise8").show();
						$("#expertise8").hide();
						$("#remplirnote8").hide();
					}
					if(document.getElementById('calculdescotes').value == "4")
					{
						$("#connaispas8").hide();
						$("#notiondebase8").hide();
						$("#notionsavancees8").hide();
						$("#maitrise8").hide();
						$("#expertise8").show();
						$("#remplirnote8").hide();
					}	
					});
							});
					</script>
					<br />
					<br />
					<div id="connaispas8">
					Connais pas !
					</div>
					<div id="notiondebase8">
					Notions de base
					</div>
					<div id="notionsavancees8">
					Notions avancées
					</div>
					<div id="maitrise8">
					Maitrise
					</div>
					<div id="expertise8">
					Expertise
					</div>
					<div id="remplirnote8">
					Veuillez renseigner
						votre niveau pour cette compétence
					</div>
					<br />
				</div>
				
				
				<div name="Competenceplaquecoque" id="9">
					<img src="images/plaquecoque.png" width="80" height="50" alt="">
					Cliquez sur l'étoile de votre choix pour indiquer votre niveau
					en PLAQUE & COQUE: <br /> <br />0<input type="range" name="plaquecoque" id="plaquecoque" value="0" max="4" min="0" step="1">4
					<script>
					$(document).ready(function()
							{
						$("#connaispas9").hide();
						$("#notiondebase9").hide();
						$("#notionsavancees9").hide();
						$("#maitrise9").hide();
						$("#expertise9").hide();
					
					$("#plaquecoque").change(function(){
					if(document.getElementById('plaquecoque').value == "0")
					{
						$("#connaispas9").show();
						$("#notiondebase9").hide();
						$("#notionsavancees9").hide();
						$("#maitrise9").hide();
						$("#expertise9").hide();
						$("#remplirnote9").hide();
					}
					if(document.getElementById('plaquecoque').value == "1")
					{
						$("#connaispas9").hide();
						$("#notiondebase9").show();
						$("#notionsavancees9").hide();
						$("#maitrise9").hide();
						$("#expertise9").hide();
						$("#remplirnote9").hide();
					}	
					if(document.getElementById('plaquecoque').value == "2")
					{
						$("#connaispas9").hide();
						$("#notiondebase9").hide();
						$("#notionsavancees9").show();
						$("#maitrise9").hide();
						$("#expertise3").hide();
						$("#remplirnote3").hide();
					}	
					if(document.getElementById('plaquecoque').value == "3")
					{
						$("#connaispas9").hide();
						$("#notiondebase9").hide();
						$("#notionsavancees9").hide();
						$("#maitrise9").show();
						$("#expertise9").hide();
						$("#remplirnote9").hide();
					}
					if(document.getElementById('plaquecoque').value == "4")
					{
						$("#connaispas9").hide();
						$("#notiondebase9").hide();
						$("#notionsavancees9").hide();
						$("#maitrise9").hide();
						$("#expertise9").show();
						$("#remplirnote9").hide();
					}	
					});
							});
					</script>
					<br />
					<br />
					<div id="connaispas9">
					Connais pas !
					</div>
					<div id="notiondebase9">
					Notions de base
					</div>
					<div id="notionsavancees9">
					Notions avancées
					</div>
					<div id="maitrise9">
					Maitrise
					</div>
					<div id="expertise9">
					Expertise
					</div>
					<div id="remplirnote9">
					Veuillez renseigner
						votre niveau pour cette compétence
					</div>
					<br />
				</div>
				</div>
				</div>												
			<!-- *******************FIN CM************************** -->	
			
						<!-- *******************ESEA************************** -->
	<div id="competenceESEA">		
		<div class="span12 mot-president">
			<br />
			<ul>
				<li class="subtitle-puce" id="president-front">
					<h4>Vos Compétences</h4                                                                                                                           >
				</li>
			</ul>
<br />
				<div name="Competenceautomatique" id="10">
					<img src="images/automatique.png" width="80" height="50" alt="">
					Cliquez sur l'étoile de votre choix pour indiquer votre niveau
					en AUTOMATIQUE: <br /> <br />0<input type="range" name="automatique" id="automatique" value="0" max="4" min="0" step="1">4
					<script>
					$(document).ready(function()
							{
						$("#connaispas10").hide();
						$("#notiondebase10").hide();
						$("#notionsavancees10").hide();
						$("#maitrise10").hide();
						$("#expertise10").hide();
					
					$("#automatique").change(function(){
					if(document.getElementById('automatique').value == "0")
					{
						$("#connaispas10").show();
						$("#notiondebase10").hide();
						$("#notionsavancees10").hide();
						$("#maitrise10").hide();
						$("#expertise10").hide();
						$("#remplirnote10").hide();
					}
					if(document.getElementById('automatique').value == "1")
					{
						$("#connaispas10").hide();
						$("#notiondebase10").show();
						$("#notionsavancees10").hide();
						$("#maitrise10").hide();
						$("#expertise10").hide();
						$("#remplirnote10").hide();
					}	
					if(document.getElementById('automatique').value == "2")
					{
						$("#connaispas10").hide();
						$("#notiondebase10").hide();
						$("#notionsavancees10").show();
						$("#maitrise10").hide();
						$("#expertise10").hide();
						$("#remplirnote10").hide();
					}	
					if(document.getElementById('automatique').value == "3")
					{
						$("#connaispas10").hide();
						$("#notiondebase10").hide();
						$("#notionsavancees10").hide();
						$("#maitrise10").show();
						$("#expertise10").hide();
						$("#remplirnote10").hide();
					}
					if(document.getElementById('automatique').value == "4")
					{
						$("#connaispas10").hide();
						$("#notiondebase10").hide();
						$("#notionsavancees10").hide();
						$("#maitrise10").hide();
						$("#expertise10").show();
						$("#remplirnote10").hide();
					}	
					});
							});
					</script>
					<br />
					<br />
					<div id="connaispas10">
					Connais pas !
					</div>
					<div id="notiondebase10">
					Notions de base
					</div>
					<div id="notionsavancees10">
					Notions avancées
					</div>
					<div id="maitrise10">
					Maitrise
					</div>
					<div id="expertise10">
					Expertise
					</div>
					<div id="remplirnote10">
					Veuillez renseigner
						votre niveau pour cette compétence
					</div>
					<br />
				</div>
				
				<div name="Competenceelectronnique" id="11">
					<img src="images/electronnique.png" width="80" height="50" alt="">
					Cliquez sur l'étoile de votre choix pour indiquer votre niveau
					en ELECTRONIQUE: <br /> <br />0<input type="range" name="electronnique" id="electronnique" value="0" max="4" min="0" step="1">4
					<script>
					$(document).ready(function()
							{
						$("#connaispas11").hide();
						$("#notiondebase11").hide();
						$("#notionsavancees11").hide();
						$("#maitrise11").hide();
						$("#expertise11").hide();
					
					$("#electronnique").change(function(){
					if(document.getElementById('electronnique').value == "0")
					{
						$("#connaispas11").show();
						$("#notiondebase11").hide();
						$("#notionsavancees11").hide();
						$("#maitrise11").hide();
						$("#expertise11").hide();
						$("#remplirnote11").hide();
					}
					if(document.getElementById('electronnique').value == "1")
					{
						$("#connaispas11").hide();
						$("#notiondebase11").show();
						$("#notionsavancees11").hide();
						$("#maitrise11").hide();
						$("#expertise11").hide();
						$("#remplirnote11").hide();
					}	
					if(document.getElementById('electronnique').value == "2")
					{
						$("#connaispas11").hide();
						$("#notiondebase11").hide();
						$("#notionsavancees11").show();
						$("#maitrise11").hide();
						$("#expertise11").hide();
						$("#remplirnote11").hide();
					}	
					if(document.getElementById('electronnique').value == "3")
					{
						$("#connaispas11").hide();
						$("#notiondebase11").hide();
						$("#notionsavancees11").hide();
						$("#maitrise11").show();
						$("#expertise11").hide();
						$("#remplirnote11").hide();
					}
					if(document.getElementById('electronnique').value == "4")
					{
						$("#connaispas11").hide();
						$("#notiondebase11").hide();
						$("#notionsavancees11").hide();
						$("#maitrise11").hide();
						$("#expertise11").show();
						$("#remplirnote11").hide();
					}	
					});
							});
					</script>
					<br />
					<br />
					<div id="connaispas11">
					Connais pas !
					</div>
					<div id="notiondebase11">
					Notions de base
					</div>
					<div id="notionsavancees11">
					Notions avancées
					</div>
					<div id="maitrise11">
					Maitrise
					</div>
					<div id="expertise11">
					Expertise
					</div>
					<div id="remplirnote11">
					Veuillez renseigner
						votre niveau pour cette compétence
					</div>
					<br />
				</div>
				
				
				<div name="Competenceelectrotechnique" id="12">
					<img src="images/electrotechnique.png" width="80" height="50" alt="">
					Cliquez sur l'étoile de votre choix pour indiquer votre niveau
					en ELECTROTECHNIQUE: <br /> <br />0<input type="range" name="electrotechnique" id="electrotechnique" value="0" max="4" min="0" step="1">4
					<script>
					$(document).ready(function()
							{
						$("#connaispas12").hide();
						$("#notiondebase12").hide();
						$("#notionsavancees12").hide();
						$("#maitrise12").hide();
						$("#expertise12").hide();
					
					$("#electrotechnique").change(function(){
					if(document.getElementById('electrotechnique').value == "0")
					{
						$("#connaispas12").show();
						$("#notiondebase12").hide();
						$("#notionsavancees12").hide();
						$("#maitrise12").hide();
						$("#expertise12").hide();
						$("#remplirnote12").hide();
					}
					if(document.getElementById('electrotechnique').value == "1")
					{
						$("#connaispas12").hide();
						$("#notiondebase12").show();
						$("#notionsavancees12").hide();
						$("#maitrise12").hide();
						$("#expertise12").hide();
						$("#remplirnote12").hide();
					}	
					if(document.getElementById('electrotechnique').value == "2")
					{
						$("#connaispas12").hide();
						$("#notiondebase12").hide();
						$("#notionsavancees12").show();
						$("#maitrise12").hide();
						$("#expertise3").hide();
						$("#remplirnote3").hide();
					}	
					if(document.getElementById('electrotechnique').value == "3")
					{
						$("#connaispas12").hide();
						$("#notiondebase12").hide();
						$("#notionsavancees12").hide();
						$("#maitrise12").show();
						$("#expertise12").hide();
						$("#remplirnote12").hide();
					}
					if(document.getElementById('electrotechnique').value == "4")
					{
						$("#connaispas12").hide();
						$("#notiondebase12").hide();
						$("#notionsavancees12").hide();
						$("#maitrise12").hide();
						$("#expertise12").show();
						$("#remplirnote12").hide();
					}	
					});
							});
					</script>
					<br />
					<br />
					<div id="connaispas12">
					Connais pas !
					</div>
					<div id="notiondebase12">
					Notions de base
					</div>
					<div id="notionsavancees12">
					Notions avancées
					</div>
					<div id="maitrise12">
					Maitrise
					</div>
					<div id="expertise12">
					Expertise
					</div>
					<div id="remplirnote12">
					Veuillez renseigner
						votre niveau pour cette compétence
					</div>
					<br />
				</div>
				</div>
				</div>												
			<!-- *******************FIN ESEA************************** -->	
			
						<!-- *******************ITI************************** -->
	<div id="competenceITI">		
		<div class="span15 mot-president">
			<br />
			<ul>
				<li class="subtitle-puce" id="president-front">
					<h4>Vos Compétences</h4>
				</li>
			</ul>
<br />
				<div name="Competencehtml" id="13">
					<img src="images/html5.png" width="80" height="50" alt="">
					Cliquez sur l'étoile de votre choix pour indiquer votre niveau
					en HTML: <br /> <br />0<input type="range" name="html" id="html" value="0" max="4" min="0" step="1">4
					<script>
					$(document).ready(function()
							{
						$("#connaispas13").hide();
						$("#notiondebase13").hide();
						$("#notionsavancees13").hide();
						$("#maitrise13").hide();
						$("#expertise13").hide();
					
					$("#html").change(function(){
					if(document.getElementById('html').value == "0")
					{
						$("#connaispas13").show();
						$("#notiondebase13").hide();
						$("#notionsavancees13").hide();
						$("#maitrise13").hide();
						$("#expertise13").hide();
						$("#remplirnote13").hide();
					}
					if(document.getElementById('html').value == "1")
					{
						$("#connaispas13").hide();
						$("#notiondebase13").show();
						$("#notionsavancees13").hide();
						$("#maitrise13").hide();
						$("#expertise13").hide();
						$("#remplirnote13").hide();
					}	
					if(document.getElementById('html').value == "2")
					{
						$("#connaispas13").hide();
						$("#notiondebase13").hide();
						$("#notionsavancees13").show();
						$("#maitrise13").hide();
						$("#expertise13").hide();
						$("#remplirnote13").hide();
					}	
					if(document.getElementById('html').value == "3")
					{
						$("#connaispas13").hide();
						$("#notiondebase13").hide();
						$("#notionsavancees13").hide();
						$("#maitrise13").show();
						$("#expertise13").hide();
						$("#remplirnote13").hide();
					}
					if(document.getElementById('html').value == "4")
					{
						$("#connaispas13").hide();
						$("#notiondebase13").hide();
						$("#notionsavancees13").hide();
						$("#maitrise13").hide();
						$("#expertise13").show();
						$("#remplirnote13").hide();
					}	
					});
							});
					</script>
					<br />
					<br />
					<div id="connaispas13">
					Connais pas !
					</div>
					<div id="notiondebase13">
					Notions de base
					</div>
					<div id="notionsavancees13">
					Notions avancées
					</div>
					<div id="maitrise13">
					Maitrise
					</div>
					<div id="expertise13">
					Expertise
					</div>
					<div id="remplirnote13">
					Veuillez renseigner
						votre niveau pour cette compétence
					</div>
					<br />
				</div>
				
				<div name="Competencecss" id="14">
					<img src="images/css.png" width="80" height="50" alt="">
					Cliquez sur l'étoile de votre choix pour indiquer votre niveau
					en CSS: <br /> <br />0<input type="range" name="css" id="css" value="0" max="4" min="0" step="1">4
					<script>
					$(document).ready(function()
							{
						$("#connaispas14").hide();
						$("#notiondebase14").hide();
						$("#notionsavancees14").hide();
						$("#maitrise14").hide();
						$("#expertise14").hide();
					
					$("#css").change(function(){
					if(document.getElementById('css').value == "0")
					{
						$("#connaispas14").show();
						$("#notiondebase14").hide();
						$("#notionsavancees14").hide();
						$("#maitrise14").hide();
						$("#expertise14").hide();
						$("#remplirnote14").hide();
					}
					if(document.getElementById('css').value == "1")
					{
						$("#connaispas14").hide();
						$("#notiondebase14").show();
						$("#notionsavancees14").hide();
						$("#maitrise14").hide();
						$("#expertise14").hide();
						$("#remplirnote14").hide();
					}	
					if(document.getElementById('css').value == "2")
					{
						$("#connaispas14").hide();
						$("#notiondebase14").hide();
						$("#notionsavancees14").show();
						$("#maitrise14").hide();
						$("#expertise14").hide();
						$("#remplirnote14").hide();
					}	
					if(document.getElementById('css').value == "3")
					{
						$("#connaispas14").hide();
						$("#notiondebase14").hide();
						$("#notionsavancees14").hide();
						$("#maitrise14").show();
						$("#expertise14").hide();
						$("#remplirnote14").hide();
					}
					if(document.getElementById('css').value == "4")
					{
						$("#connaispas14").hide();
						$("#notiondebase14").hide();
						$("#notionsavancees14").hide();
						$("#maitrise14").hide();
						$("#expertise14").show();
						$("#remplirnote14").hide();
					}	
					});
							});
					</script>
					<br />
					<br />
					<div id="connaispas14">
					Connais pas !
					</div>
					<div id="notiondebase14">
					Notions de base
					</div>
					<div id="notionsavancees14">
					Notions avancées
					</div>
					<div id="maitrise14">
					Maitrise
					</div>
					<div id="expertise14">
					Expertise
					</div>
					<div id="remplirnote14">
					Veuillez renseigner
						votre niveau pour cette compétence
					</div>
					<br />
				</div>
				
				
				<div name="Competencephp" id="15">
					<img src="images/php.png" width="80" height="50" alt="">
					Cliquez sur l'étoile de votre choix pour indiquer votre niveau
					en PHP: <br /> <br />0<input type="range" name="php" id="php" value="0" max="4" min="0" step="1">4
					<script>
					$(document).ready(function()
							{
						$("#connaispas15").hide();
						$("#notiondebase15").hide();
						$("#notionsavancees15").hide();
						$("#maitrise15").hide();
						$("#expertise15").hide();
					
					$("#php").change(function(){
					if(document.getElementById('php').value == "0")
					{
						$("#connaispas15").show();
						$("#notiondebase15").hide();
						$("#notionsavancees15").hide();
						$("#maitrise15").hide();
						$("#expertise15").hide();
						$("#remplirnote15").hide();
					}
					if(document.getElementById('php').value == "1")
					{
						$("#connaispas15").hide();
						$("#notiondebase15").show();
						$("#notionsavancees15").hide();
						$("#maitrise15").hide();
						$("#expertise15").hide();
						$("#remplirnote15").hide();
					}	
					if(document.getElementById('php').value == "2")
					{
						$("#connaispas15").hide();
						$("#notiondebase15").hide();
						$("#notionsavancees15").show();
						$("#maitrise15").hide();
						$("#expertise3").hide();
						$("#remplirnote3").hide();
					}	
					if(document.getElementById('php').value == "3")
					{
						$("#connaispas15").hide();
						$("#notiondebase15").hide();
						$("#notionsavancees15").hide();
						$("#maitrise15").show();
						$("#expertise15").hide();
						$("#remplirnote15").hide();
					}
					if(document.getElementById('php').value == "4")
					{
						$("#connaispas15").hide();
						$("#notiondebase15").hide();
						$("#notionsavancees15").hide();
						$("#maitrise15").hide();
						$("#expertise15").show();
						$("#remplirnote15").hide();
					}	
					});
							});
					</script>
					<br />
					<br />
					<div id="connaispas15">
					Connais pas !
					</div>
					<div id="notiondebase15">
					Notions de base
					</div>
					<div id="notionsavancees15">
					Notions avancées
					</div>
					<div id="maitrise15">
					Maitrise
					</div>
					<div id="expertise15">
					Expertise
					</div>
					<div id="remplirnote15">
					Veuillez renseigner
						votre niveau pour cette compétence
					</div>
					<br />
				</div>
				</div>
				</div>												
			<!-- *******************FIN ITI************************** -->	
			
			
							<!-- *******************TIMTEX************************** -->
	<div id="competenceTIMTEX">		
		<div class="span18 mot-president">
			<br />
			<ul>
				<li class="subtitle-puce" id="president-front">
					<h4>Vos Compétences</h4>
				</li>
			</ul>
<br />
				<div name="Competencecouture" id="16">
					<img src="images/couture.png" width="80" height="50" alt="">
					Cliquez sur l'étoile de votre choix pour indiquer votre niveau
					en COUTURE: <br /> <br />0<input type="range" name="couture" id="couture" value="0" max="4" min="0" step="1">4
					<script>
					$(document).ready(function()
							{
						$("#connaispas16").hide();
						$("#notiondebase16").hide();
						$("#notionsavancees16").hide();
						$("#maitrise16").hide();
						$("#expertise16").hide();
					
					$("#couture").change(function(){
					if(document.getElementById('couture').value == "0")
					{
						$("#connaispas16").show();
						$("#notiondebase16").hide();
						$("#notionsavancees16").hide();
						$("#maitrise16").hide();
						$("#expertise16").hide();
						$("#remplirnote16").hide();
					}
					if(document.getElementById('couture').value == "1")
					{
						$("#connaispas16").hide();
						$("#notiondebase16").show();
						$("#notionsavancees16").hide();
						$("#maitrise16").hide();
						$("#expertise16").hide();
						$("#remplirnote16").hide();
					}	
					if(document.getElementById('couture').value == "2")
					{
						$("#connaispas16").hide();
						$("#notiondebase16").hide();
						$("#notionsavancees16").show();
						$("#maitrise16").hide();
						$("#expertise16").hide();
						$("#remplirnote16").hide();
					}	
					if(document.getElementById('couture').value == "3")
					{
						$("#connaispas16").hide();
						$("#notiondebase16").hide();
						$("#notionsavancees16").hide();
						$("#maitrise16").show();
						$("#expertise16").hide();
						$("#remplirnote16").hide();
					}
					if(document.getElementById('couture').value == "4")
					{
						$("#connaispas16").hide();
						$("#notiondebase16").hide();
						$("#notionsavancees16").hide();
						$("#maitrise16").hide();
						$("#expertise16").show();
						$("#remplirnote16").hide();
					}	
					});
							});
					</script>
					<br />
					<br />
					<div id="connaispas16">
					Connais pas !
					</div>
					<div id="notiondebase16">
					Notions de base
					</div>
					<div id="notionsavancees16">
					Notions avancées
					</div>
					<div id="maitrise16">
					Maitrise
					</div>
					<div id="expertise16">
					Expertise
					</div>
					<div id="remplirnote16">
					Veuillez renseigner
						votre niveau pour cette compétence
					</div>
					<br />
				</div>
				
				<div name="Competencemaille" id="17">
					<img src="images/maille.png" width="80" height="50" alt="">
					Cliquez sur l'étoile de votre choix pour indiquer votre niveau
					en MAILLES: <br /> <br />0<input type="range" name="maille" id="maille" value="0" max="4" min="0" step="1">4
					<script>
					$(document).ready(function()
							{
						$("#connaispas17").hide();
						$("#notiondebase17").hide();
						$("#notionsavancees17").hide();
						$("#maitrise17").hide();
						$("#expertise17").hide();
					
					$("#maille").change(function(){
					if(document.getElementById('maille').value == "0")
					{
						$("#connaispas17").show();
						$("#notiondebase17").hide();
						$("#notionsavancees17").hide();
						$("#maitrise17").hide();
						$("#expertise17").hide();
						$("#remplirnote17").hide();
					}
					if(document.getElementById('dimensionnement').value == "1")
					{
						$("#connaispas17").hide();
						$("#notiondebase17").show();
						$("#notionsavancees17").hide();
						$("#maitrise17").hide();
						$("#expertise17").hide();
						$("#remplirnote17").hide();
					}	
					if(document.getElementById('maille').value == "2")
					{
						$("#connaispas17").hide();
						$("#notiondebase17").hide();
						$("#notionsavancees17").show();
						$("#maitrise17").hide();
						$("#expertise17").hide();
						$("#remplirnote17").hide();
					}	
					if(document.getElementById('maille').value == "3")
					{
						$("#connaispas17").hide();
						$("#notiondebase17").hide();
						$("#notionsavancees17").hide();
						$("#maitrise17").show();
						$("#expertise17").hide();
						$("#remplirnote17").hide();
					}
					if(document.getElementById('maille').value == "4")
					{
						$("#connaispas17").hide();
						$("#notiondebase17").hide();
						$("#notionsavancees17").hide();
						$("#maitrise17").hide();
						$("#expertise17").show();
						$("#remplirnote17").hide();
					}	
					});
							});
					</script>
					<br />
					<br />
					<div id="connaispas17">
					Connais pas !
					</div>
					<div id="notiondebase17">
					Notions de base
					</div>
					<div id="notionsavancees17">
					Notions avancées
					</div>
					<div id="maitrise17">
					Maitrise
					</div>
					<div id="expertise17">
					Expertise
					</div>
					<div id="remplirnote17">
					Veuillez renseigner
						votre niveau pour cette compétence
					</div>
					<br />
				</div>
				
				
				<div name="Competencetissage" id="18">
					<img src="images/tissage.png" width="80" height="50" alt="">
					Cliquez sur l'étoile de votre choix pour indiquer votre niveau
					en TISSAGE: <br /> <br />0<input type="range" name="tissage" id="tissage" value="0" max="4" min="0" step="1">4
					<script>
					$(document).ready(function()
							{
						$("#connaispas18").hide();
						$("#notiondebase18").hide();
						$("#notionsavancees18").hide();
						$("#maitrise18").hide();
						$("#expertise18").hide();
					
					$("#tissage").change(function(){
					if(document.getElementById('tissage').value == "0")
					{
						$("#connaispas18").show();
						$("#notiondebase18").hide();
						$("#notionsavancees18").hide();
						$("#maitrise18").hide();
						$("#expertise18").hide();
						$("#remplirnote18").hide();
					}
					if(document.getElementById('tissage').value == "1")
					{
						$("#connaispas18").hide();
						$("#notiondebase18").show();
						$("#notionsavancees18").hide();
						$("#maitrise18").hide();
						$("#expertise18").hide();
						$("#remplirnote18").hide();
					}	
					if(document.getElementById('tissage').value == "2")
					{
						$("#connaispas18").hide();
						$("#notiondebase18").hide();
						$("#notionsavancees18").show();
						$("#maitrise18").hide();
						$("#expertise3").hide();
						$("#remplirnote3").hide();
					}	
					if(document.getElementById('tissage').value == "3")
					{
						$("#connaispas18").hide();
						$("#notiondebase18").hide();
						$("#notionsavancees18").hide();
						$("#maitrise18").show();
						$("#expertise18").hide();
						$("#remplirnote18").hide();
					}
					if(document.getElementById('tissage').value == "4")
					{
						$("#connaispas18").hide();
						$("#notiondebase18").hide();
						$("#notionsavancees18").hide();
						$("#maitrise18").hide();
						$("#expertise18").show();
						$("#remplirnote18").hide();
					}	
					});
							});
					</script>
					<br />
					<br />
					<div id="connaispas18">
					Connais pas !
					</div>
					<div id="notiondebase18">
					Notions de base
					</div>
					<div id="notionsavancees18">
					Notions avancées
					</div>
					<div id="maitrise18">
					Maitrise
					</div>
					<div id="expertise18">
					Expertise
					</div>
					<div id="remplirnote18">
					Veuillez renseigner
						votre niveau pour cette compétence
					</div>
					<br />
				</div>
				</div>
				</div>												
			<!-- *******************FIN TIMTEX************************** -->			
			
			
			
	
			
			
			<div id="formulaire">
				
				<td></td>
									<td><input type="submit" value="Enregistrer"></td>
									</tr>
						</form>				
								
			</div>	
						
							

					
						

						</br>

	

		<div class="span12 quotation" id="slogan">
			<hr>
			<h5>ProG'HEI - Vos projets, nos compétences.</h5>
			<hr>
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
						59046 Lille Cedex <br> <a href="http://www.hei.fr">HEI</a> |
						<a href="http://www.junior-entreprises.com/">CNJE</a>
					</p>

				</div>

			</footer>
		</div>
	</div>

	</div>

	</div>



</body>
</html>