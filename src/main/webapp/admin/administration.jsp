<!DOCTYPE html>
<html lang="fr">
<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

							<body>
	<a href="ajouterMembre">Ajouter un membre</a>
	<br/>
	<br/>
	<br/>
	<strong>Modifier un compte</strong>
	<br/>
	<br/>
	<ul>
		<c:forEach var="utilisateurs" items="${utilisateurs}">
			<li><a href="modifierMembre?id=${utilisateurs.name}">${utilisateurs.name}</a></li>
		</c:forEach>
	</ul>
</body>
							
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