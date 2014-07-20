<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../../WEB-INF/pages/head.jsp">
	<jsp:param name="pageSelectionnee" value="ajout" />
</jsp:include>
<link rel='stylesheet' href='css/fullcalendar/jquery-ui.min.css' />
<link href='css/fullcalendar/fullcalendar.css' rel='stylesheet' />
<link href='css/fullcalendar/fullcalendar.print.css' rel='stylesheet'
	media='print' />
<script src='js/fullcalendar/moment.min.js'></script>
<script src='js/fullcalendar/jquery.min.js'></script>
<script src='js/fullcalendar/fullcalendar.js'></script>
<script src='js/fullcalendar/gcal.js'></script>
<script src='js/fullcalendar/fr.js'></script>
<script>
	$(document).ready(function() {

		$('#calendar').fullCalendar({

			/* impossibilité de régler le fuseau horaire du calendrier HEI-Connect sur Google Agenda
			donc on initialise la variable timezone sur le fuseau de l'utilisateur*/
			timezone : 'local',

			theme : true,
			header : {
				left : 'prev,next today',
				center : 'title',
				right : 'month,agendaWeek,agendaDay'
			},

			// Lien pour l'adresse de l'agenda Google
			eventSources : [ $("#bli").text() ]
		});
	});
</script>
</head>
<body
	class="html front not-logged-in no-sidebars page-node page-node- page-node-2 node-type-page">

	<div id="container" class="container">

		<header role="banner" id="page-header"> </header>
		<!-- /#header -->

		<div class="row-fluid">

			<aside class="span2" role="complementary">
				<div class="menu-gauche" id="contact">
					<ul class="list">
						</br>
						<li><a href="http://localhost:8080/upload/calendrierProG">
								Calendrier ProG </a></li>
					</ul>

					<c:forEach var="utilisateurs" items="${utilisateurs}">
						<form method="post"
							action="calendrierHEIConnect?name=${utilisateurs.name}">
							<button type="submit" value="${utilisateurs.name}">${utilisateurs.name}</button>
						</form>
					</c:forEach>
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


							<div id="bli" style="display: none;">${user.webcal}</div>

							<section id='calendar'></section>

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