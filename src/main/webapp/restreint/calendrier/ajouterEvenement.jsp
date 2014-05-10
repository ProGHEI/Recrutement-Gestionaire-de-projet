<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/jquery-ui-1.10.4.custom.css" rel="stylesheet"></link>
<title>Insert title here</title>
</head>
<body>

<h1>Ajouter un évènement</h1>

	<form id="ajouterEvenementForm" method="post" action="ajouterEvenement" class="form-inline well">
							
		<jsp:include page="formulaire.jsp">
			<jsp:param name="pageSelectionnee" value="ajout"/>
		</jsp:include>
					
						<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.0/jquery.min.js"></script>
						<script src="js/jquery-ui.js"></script>
						<script>
						(function InitDatePickers(){
							
							var elem = document.createElement('input');
							elem.setAttribute('type', 'date');
							
							if(elem.type=='text'){
								$( ".date" ).datepicker({ dateFormat:'yy-mm-dd'})({
									dateFormat:'dd-mm-yy'
								});

						}

						})();
						
						</script>
					
				</form>
				

		

</body>
</html>