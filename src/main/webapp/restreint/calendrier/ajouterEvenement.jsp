<!DOCTYPE html>
<html lang="fr">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page pageEncoding="UTF-8"%>
<head>
<jsp:include page="../../WEB-INF/pages/head.jsp">
	<jsp:param name="pageSelectionnee" value="ajout" />
</jsp:include>
<link href="css/jquery-ui-1.10.4.custom.css" rel="stylesheet"></link>
</head>
<body
	class="html front not-logged-in no-sidebars page-node page-node- page-node-2 node-type-page">

	<div id="container" class="container">

		<header role="banner" id="page-header"> </header>

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


				<jsp:include page="../../WEB-INF/pages/menu.jsp">
					<jsp:param name="pageSelectionnee" value="ajout" />
				</jsp:include>

				<br /> <a id="main-content"></a>
				<div class="contenu-principal">
					<div class="spanGlobal">
						<div class="spanArticle">

							<h1>Ajouter un évènement</h1>

							<form id="ajouterEvenementForm" method="post"
								action="ajouterEvenement" class="form-inline well">

								<jsp:include page="formulaire.jsp">
									<jsp:param name="pageSelectionnee" value="ajout" />
								</jsp:include>

								<script
									src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.0/jquery.min.js"></script>
								<script src="js/jquery-ui.js"></script>
								<script>
									(function InitDatePickers() {

										var elem = document
												.createElement('input');
										elem.setAttribute('type', 'date');

										if (elem.type == 'text') {
											$(".date").datepicker({
												dateFormat : 'yy-mm-dd'
											});

										}

									})();
								</script>


								<table>
									<tbody>
										<tr>
											<td><h3>Quels membres de la Junior sont concernés?</h3></td>
										</tr>
										<c:forEach var="utilisateurs" items="${utilisateurs}">
											<tr>
												<td><input type="checkbox" name="utilisateur"
													value="${utilisateurs.name}"> ${utilisateurs.name}<br></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>

								<table>
									<tbody>
										<tr>
											<td><input type="submit" value="Enregistrer"></td>
										</tr>
									</tbody>
								</table>

							</form>

							<form method="link" action="calendrierProG">
								<input type="submit" value="Annuler">
							</form>

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