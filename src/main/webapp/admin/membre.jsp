<!DOCTYPE html>
<html lang="fr">
<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<jsp:include page="../WEB-INF/pages/head.jsp">
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
					<form method="link" action="deconnexion">
						<button type="submit" value="deconnexion">Déconnexion</button>
					</form>
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
										<li class="first leaf"><a href="http://localhost:8080/upload" class="active">Accueil</a></li>
										<li class="leaf"><a href="http://localhost:8080/upload">Junior-Entreprise
												?</a></li>
										<li class="leaf"><a href="http://localhost:8080/upload">Nos
												partenaires</a></li>
										<li class="leaf"><a href="http://localhost:8080/upload">Notre Équipe</a></li>
										<li class="last expanded dropdown"><a href="/processus"
											title="" class="dropdown-toggle" data-toggle="dropdown"
											data-target="#">Prestations<span class="caret"></span></a>
											<ul class="dropdown-menu">
												<li class="first leaf"><a href="http://localhost:8080/upload" title="">Nos
														Compétences</a></li>
												<li class="last leaf"><a href="http://localhost:8080/upload">Notre
														Démarche</a></li>
											</ul>
										<li class="last expanded dropdown"><a href="http://localhost:8080/upload"
											title="" class="dropdown-toggle" data-toggle="dropdown"
											data-target="#">Postuler<span class="caret"></span></a>
											<ul class="dropdown-menu">
												<li class="first leaf"><a href="accueilPostulant"
													title="">Postulant</a></li>
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

							<form id="modifierMembreForm" method="post" action="modifierMembre?id=${utilisateurs.id}" class="form-inline well" required>
		<table>
			<tbody>
				<tr>
					<td>Nom</td>
					<td><input type="text" id="name" name="name" value="${utilisateurs.name }" required></td>
				</tr>
				<tr>
					<td>Mail</td>
					<td><input type="mail" id="mail" name="mail" value="${utilisateurs.mail }" required></td>
				</tr>
				<tr>
				
					<td>Rôle</td>
					<td><select name="role" required> 
							<option ${utilisateurs.role == "Président" ? 'selected' : '' } value="Président">Président</option>
							<option ${utilisateurs.role == "Vice-Président" ? 'selected' : '' } value="Vice-Président">Vice-Président</option>
							<option ${utilisateurs.role == "Admin" ? 'selected' : '' } value="Admin">Admin</option>
							<option ${utilisateurs.role == "Responsable Commercial" ? 'selected' : '' } value="Responsable Commercial">Responsable Commercial</option>
							<option ${utilisateurs.role == "Trésorier" ? 'selected' : '' } value="Trésorier">Trésorier</option>
							<option ${utilisateurs.role == "Secrétaire Général" ? 'selected' : '' } value="Secrétaire Général">Secrétaire Général</option>
							<option ${utilisateurs.role == "Responsable Communication Interne" ? 'selected' : '' } value="Responsable Communication Interne">Responsable Communication Interne</option>
							<option ${utilisateurs.role == "Responsable Communication Externe" ? 'selected' : '' } value="Responsable Communication Externe">Responsable Communication Externe</option>
							<option ${utilisateurs.role == "Responsable Département Ingénierie Générale" ? 'selected' : '' } value="Responsable Département Ingénierie Générale">Responsable Département Ingénierie Générale</option>
							<option ${utilisateurs.role == "Responsable Département ITI" ? 'selected' : '' } value="Responsable Département ITI">Responsable Département ITI</option>
							<option ${utilisateurs.role == "Comptable" ? 'selected' : '' } value="Comptable">Comptable</option>
							<option ${utilisateurs.role == "DSI" ? 'selected' : '' } value="DSI">DSI</option>
							<option ${utilisateurs.role == "Chargé de Qualité" ? 'selected' : '' } value="Chargé de Qualité">Chargé de Qualité</option>
							<option ${utilisateurs.role == "Chargé d'Affaires" ? 'selected' : '' } value="Chargé d'Affaires">Chargé d'Affaires</option>
							<option ${utilisateurs.role == "Chargé de Missions" ? 'selected' : '' } value="Chargé de Missions">Chargé de Missions</option> 
							 
						</select>
						</td>
				</tr>
				<tr>
					<td>Webcal</td>
					<td><input type="text" id="webcal" name="webcal" value="${utilisateurs.webcal }" required></td>
				</tr>
				<tr>
					<td>Mot de passe</td>
					<td><input type="password" id="pass" name="pass" value="${utilisateurs.pass }" required>
					</td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Enregistrer"></td>
				</tr>
			</tbody>
		</table>
							
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