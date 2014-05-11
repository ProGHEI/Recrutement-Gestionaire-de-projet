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

	<h1>Modifier ${utilisateurs.name}</h1>


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
	</form>
	<form  method="post" action="supprimerMembre?id=${utilisateurs.id}">
		<input type="submit" value="Supprimer">
	</form>
	<form method="link" action="administration">
		<input type="submit" value="Annuler">
	</form>

</body>
</html>