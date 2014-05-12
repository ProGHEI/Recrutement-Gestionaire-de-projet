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
										<li class="first leaf"><a
											href="http://localhost:8080/upload" class="active">Accueil</a></li>
										<li class="leaf"><a href="http://localhost:8080/upload">Junior-Entreprise
												?</a></li>
										<li class="leaf"><a href="http://localhost:8080/upload">Nos
												partenaires</a></li>
										<li class="leaf"><a href="http://localhost:8080/upload">Notre
												Équipe</a></li>
										<li class="last expanded dropdown"><a href="/processus"
											title="" class="dropdown-toggle" data-toggle="dropdown"
											data-target="#">Prestations<span class="caret"></span></a>
											<ul class="dropdown-menu">
												<li class="first leaf"><a
													href="http://localhost:8080/upload" title="">Nos
														Compétences</a></li>
												<li class="last leaf"><a
													href="http://localhost:8080/upload">Notre Démarche</a></li>
											</ul>
										<li class="last expanded dropdown"><a
											href="http://localhost:8080/upload" title=""
											class="dropdown-toggle" data-toggle="dropdown"
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


				<div id="myCarousel" class="carousel slide">
					<div class="carousel-inner">
						<div class="item active">
							<img src="images/groupe.jpg" alt="">
							<div class="carousel-caption">
								<h4>L'équipe 2013-2014</h4>
								<p>Composée d’élèves ingénieurs aux profils et aux
									compétences variées, notre équipe est disponible pour répondre
									à toutes vos sollicitations et faire de vos projets une
									réalité.</p>
							</div>
						</div>
						<div class="item">
							<img src="images/unicatho.jpg" alt="">
							<div class="carousel-caption">
								<h4>Un service de qualité</h4>
								<p>Implantée au sein de l’université catholique de Lille,
									les élèves aux Hautes Etudes d’ingénieurs disposent de l’appui
									des enseignants et chercheurs tout au long de l’étude et cela
									en vous garantissant la plus grande confidentialité.</p>
							</div>
						</div>
					</div>
					<a class="left carousel-control" href="#myCarousel"
						data-slide="prev">‹</a> <a class="right carousel-control"
						href="#myCarousel" data-slide="next">›</a>
				</div>



				<br /> <a id="main-content"></a>
				<div class="contenu-principal">





					<div class="span12">



						<div class="span7">

							<div class="span8">
								<ul>
									<li class="subtitle-puce" id="JE-front">
										<h4>Junior-Entreprise ?</h4>
									</li>
								</ul>
								<hr>
								<p>
									Une Junior-Entreprise ("JE" pour les intimes) est une
									association loi 1901 à vocation économique et pédagogique.
									Fonctionnant sur le modèle des cabinets de conseil, elles
									offrent ... <a href="/junior-entreprises">Lire la suite</a><br />
								</p>
								<br />
							</div>

							<div class="span4">
								<img class="logoCNJE" src="images/CNJE.png" width="150">
							</div>

							<div class="span12 mot-president">
								<br />
								<ul>
									<li class="subtitle-puce" id="president-front">
										<h4>Le mot du président</h4>
									</li>
								</ul>
								<hr>
								<p>
									Bienvenue sur notre site ! ProG’HEI est la Junior-Entreprise de
									l’école des Hautes Etudes d’Ingénieur (HEI). <br /> Depuis
									1974, nous mettons nos compétences au service des entreprises
									afin de les aider dans leur développement et leurs missions.
									Celles-ci sont réalisées par des élèves ingénieurs sélectionnés
									par nos soins et qui bénéficient de l’appui du corps
									professoral.<br /> <br /> Nos domaines de compétences sont
									variés. Nous couvrons ainsi les secteurs de l’informatique de
									l’ingénierie traditionnelle (BTP, Mécanique, Génies Electrique
									et Automatique, Chimie, Ingénierie Médicale) et plus de 350
									professionnels et particuliers nous ont déjà fait confiance.
									Tout au long de votre projet, un Chargé d’Affaire personnel
									suivra votre étude et répondra à toutes vos interrogations.<br />
									<br /> La qualité des études et de leur suivi est assurée par
									un audit annuel de la Confédération Nationale des
									Junior-Entreprises (CNJE) ainsi que par toute l’attention de
									notre Pôle Qualité. <br /> <br /> J’espère avoir le plaisir
									de vous rencontrer très bientôt pour déterminer la réponse la
									mieux adaptée à votre besoin !
								</p>
								<p class="align-right" id="signature">Charles SERARD -
									Président de ProG'HEI</p>
							</div>

						</div>


						<div class="span5">
							<div class="span12">
								<ul>
									<li class="subtitle-puce" id="confiance-front">
										<h4>Ils nous ont fait confiance</h4>
									</li>
								</ul>

								<hr>
								<div id="confiance-carousel" class="carousel slide">

									<!-- Carousel items -->
									<div class="carousel-inner">

										<div class="active item" style="text-align: center;">
											<img src="images/SNCF.jpg" alt="">
										</div>
										<div class="item">
											<img src="images/AirLiquide.jpg" alt="">
										</div>
										<div class="item">
											<img src="images/aerospatiale.jpg" alt="">
										</div>
										<div class="item">
											<img src="images/RabotDutilleul.JPG" alt="">
										</div>
										<div class="item">
											<img src="images/Danone.jpeg" alt="">
										</div>
										<div class="item">
											<img src="images/LOreal.jpg" alt="">
										</div>
										<div class="item">
											<img src="images/bp.gif" alt="">
										</div>
										<div class="item">
											<img src="images/EDF.jpeg" alt="">
										</div>
									</div>
									<!-- Carousel nav -->
									<!--                  <a class="carousel-control left" href="#confiance-carousel" data-slide="prev">&lsaquo;</a>
                                    <a class="carousel-control right" href="#confiance-carousel" data-slide="next">&rsaquo;</a>-->
								</div>
							</div>

							<div class="span12">
								<ul>
									<li class="subtitle-puce" id="presse-front">
										<h4>Ils parlent de nous</h4>
									</li>
								</ul>
								<hr>
								<div class="span12 presse">
									<div class="span3 illu-quote">
										<br /> <img src="images/figaro.jpg" width="150">
									</div>
									<div class="span9 quotation">
										<span><strong>"</strong><em>Les Junior-Entreprises
												surfent sur la crise.</em><strong>"</strong></span>
									</div>
								</div>

								<div class="span12 presse">
									<div class="span9 quotation">
										<span><strong>"</strong><em>Les Junior-Entreprises
												sont des viviers de compétences incroyables.</em><strong>"</strong></span>
									</div>
									<div class="span3 illu-quote" id="mce">
										<br /> <img src="images/mce.png" width="150">
									</div>
								</div>

								<div class="span12 presse">
									<div class="span3 illu-quote">
										<br /> <img src="images/journal.png" width="150">
									</div>
									<div class="span9 quotation" id="journal">
										<strong>"</strong><em>Les Junior-Entreprises, pépinières
											de jeunes talents.</em><strong>"</strong>
									</div>
								</div>
							</div>


						</div>
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
