<!DOCTYPE html>
<html lang="fr">
<%@ page pageEncoding="UTF-8"%>
<jsp:include page="../WEB-INF/pages/head.jsp">
	<jsp:param name="pageSelectionnee" value="ajout" />
</jsp:include>
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

				<jsp:include page="../WEB-INF/pages/menu.jsp">
					<jsp:param name="pageSelectionnee" value="ajout" />
				</jsp:include>

				<br /> <a id="main-content"></a>
				<div class="contenu-principal">
					<div class="spanGlobal">
						<div class="spanArticle">


							<h1>Bienvenue dans l'espace membre!</h1>
							<ul class="list">
								<li><a href="http://localhost:8080/upload/calendrierProG">
										Calendrier ProG </a></li>
								<li><a
									href="http://localhost:8080/upload/calendrierHEIConnect">
										Calendrier HEIConnect </a></li>

							</ul>


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