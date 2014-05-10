<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<link rel='stylesheet' href='css/fullcalendar/jquery-ui.min.css' />
<link href='css/fullcalendar/fullcalendar.css' rel='stylesheet' />
<link href='css/fullcalendar/fullcalendar.print.css' rel='stylesheet' media='print' />
<script src='js/fullcalendar/moment.min.js'></script>
<script src='js/fullcalendar/jquery.min.js'></script>
<script src='js/fullcalendar/jquery-ui.custom.min.js'></script>
<script src='js/fullcalendar/fullcalendar.min.js'></script>
<script src='js/fullcalendar/fr.js'></script>

<script>

	$(document).ready(function() {
		
		

		$('#calendar').fullCalendar({
			

			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,agendaWeek,agendaDay'
			},
			
			/* impossibilité de régler le fuseau horaire du calendrier HEI-Connect sur Google Agenda 
			donc on initialise la variable timezone sur le fuseau de l'utilisateur*/
			timezone: 'local',
			
			theme: true,
			
			events: {url:'http://localhost:8080/projetEtude/JSON'},
			
			
		});
		
	});

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
	
	#message {
    font-size: 0.7em;
    position: absolute;
    top: 1em;
    right: 1em;
    width: 350px;
    display: none;
    padding: 1em;
    background: #ffc;
    border: 1px solid #dda;
  }

</style>

</head>
<body>

Test

	<a href="ajouterEvenement">Ajouter un évènement</a>
	<a href="listerEvenement">Modifier un évènement</a>
	
	<div id='calendar'></div>

</body>
</html>