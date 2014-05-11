<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Vous voici sur la page admin</h1>
	<a href="ajouterMembre">Ajouter un membre</a>
	
	<h3>Modifier un compte</h3>
	<ul>
		<c:forEach var="utilisateurs" items="${utilisateurs}">
			<li><a href="modifierMembre?id=${utilisateurs.name}">${utilisateurs.name}</a></li>
		</c:forEach>
	</ul>
</body>
</html>