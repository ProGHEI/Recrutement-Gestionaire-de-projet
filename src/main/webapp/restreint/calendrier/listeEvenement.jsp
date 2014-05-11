<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.12/themes/base/jquery-ui.css">
<head>
<script>
	function validateForm()
	{
		return confirm("Confirmez-vous la suppression de l'évènement?")
	}
</script>
<script src="http://code.jquery.com/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<c:forEach var="evenement" items="${liste}">
		<b>${evenement.libelle}</b> : Du ${evenement.dateDebut} ${evenement.heureDebut}h${evenement.minuteDebut} Au ${evenement.dateFin} ${evenement.heureFin}h${evenement.minuteFin}
			<ul>
				<li><a href="modifierEvenement?id=${evenement.id}">Modifier</a></li>
				<li><a href="supprimerEvenement?id=${evenement.id}" onclick='validateForm()'>Supprimer</a></li>
			</ul>
	</c:forEach>


</body>
</html>