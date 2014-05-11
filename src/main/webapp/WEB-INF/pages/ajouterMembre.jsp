<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>Ajouter un membre</h1>
	
	<form id="ajouterMembreForm" method="post" action="ajouterMembre" class="form-inline well" required>
		<table>
			<tbody>
				<tr>
					<td>Nom</td>
					<td><input type="text" id="name" name="name" required></td>
				</tr>
				<tr>
					<td>Mail</td>
					<td><input type="mail" id="mail" name="mail" required></td>
				</tr>
				<tr>
				
					<td>R�le</td>
					<td><select name="role" required> 
							<option value="Pr�sident">Pr�sident</option>
							<option value="Vice-Pr�sident">Vice-Pr�sident</option>
							<option value="Admin">Admin</option>
							<option value="Responsable Commercial">Responsable Commercial</option>
							<option value="Tr�sorier">Tr�sorier</option>
							<option value="Secr�taire G�n�ral">Secr�taire G�n�ral</option>
							<option value="Responsable Communication Interne">Responsable Communication Interne</option>
							<option value="Responsable Communication Externe">Responsable Communication Externe</option>
							<option value="Responsable D�partement Ing�nierie G�n�rale">Responsable D�partement Ing�nierie G�n�rale</option>
							<option value="Responsable D�partement ITI">Responsable D�partement ITI</option>
							<option value="Comptable">Comptable</option>
							<option value="DSI">DSI</option>
							<option value="Charg� de Qualit�">Charg� de Qualit�</option>
							<option value="Charg� d'Affaires">Charg� d'Affaires</option>
							<option value="Charg� de Missions">Charg� de Missions</option> 
							 
						</select>
						</td>
				</tr>
				<tr>
					<td>Webcal</td>
					<td><input type="text" id="webcal" name="webcal" required></td>
				</tr>
				<tr>
					<td>Mot de passe</td>
					<td><input type="password" id="pass" name="pass" required>
					</td>
				</tr>
				<tr>
					<td>Confirmation mot de passe</td>
					<td><input type="password" id="pass2" name="pass2" required>
					</td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Enregistrer"></td>
				</tr>
			</tbody>
		</table>
	</form>
	<form method="link" action="administration">
		<input type="submit" value="Annuler">
	</form>

</body>
</html>