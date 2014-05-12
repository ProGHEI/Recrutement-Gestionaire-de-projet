<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<link rel='stylesheet' href='css/fullcalendar/jquery-ui.min.css' />
<link href='css/fullcalendar/fullcalendar.css' rel='stylesheet' />
<link href='css/fullcalendar/fullcalendar.print.css' rel='stylesheet' media='print' />
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
			timezone: 'local',
			
			theme: true,
			header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay'
			},
			
			// Lien pour l'adresse de l'agenda Google
			eventSources : [$("#bli").text()]
		});
	});

</script>
<script>

</script>
<style>

	body {
	margin: 0;
	padding: 0;
	font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
	font-size: 14px;
	}
	
	#calendar {
	width: 900px;
	margin: 40px auto;
	}

</style>
</head>
<body>

	<nav>
	<div id="bli" style="display: none;">${user.webcal}</div>
	<c:forEach var="utilisateurs" items="${utilisateurs}">
		<form method="post" action="calendrierHEIConnect?name=${utilisateurs.name}">
			<button type="submit" value="${utilisateurs.name}">${utilisateurs.name}</button>
		</form>
	</c:forEach>
	</nav>
	<section id='calendar'></section>

</body>
</html>