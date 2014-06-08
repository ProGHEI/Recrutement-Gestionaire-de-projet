<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="head.jsp">
			<jsp:param name="pageSelectionnee" value="ajout"/>
		</jsp:include>
    </head>
    <body>
    <body class="html front not-logged-in no-sidebars page-node page-node- page-node-2 node-type-page">

	<div id="container" class="container">

		<header role="banner" id="page-header"> </header>
		<!-- /#header -->

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

				<jsp:include page="menu.jsp">
					<jsp:param name="pageSelectionnee" value="ajout"/>
				</jsp:include>
				
				<br /> <a id="main-content"></a>
				<div class="contenu-principal">
					<div class="spanGlobal">
						<div class="spanArticle">
        <form method="post" action="connexionAdmin">
            <fieldset>
                <legend>Connexion</legend>
                <p>Vous pouvez vous connecter via ce formulaire.</p>

                <label for="nom">Adresse email <span class="requis">*</span></label>
                <input type="email" id="email" name="email" value="<c:out value="${utilisateur.email}"/>" size="20" maxlength="60" />
                <span class="erreur">${form.erreurs['email']}</span>
                

                <label for="motdepasse">Mot de passe <span class="requis">*</span></label>
                <input type="password" id="motdepasse" name="motdepasse" value="" size="20" maxlength="20" />
                <span class="erreur">${form.erreurs['motdepasse']}</span>


                <input type="submit" value="Connexion" class="sansLabel" />
                
                
                <p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>
                
                <%-- Vérification de la présence d'un objet utilisateur en session --%>
                <c:if test="${!empty Scope.sessionUtilisateur}">
                    <%-- Si l'utilisateur existe en session, alors on affiche son adresse email. --%>
                    <p class="succes">Vous êtes connecté(e) avec l'adresse : ${sessionScope.sessionUtilisateur.email}</p>
                </c:if>
            </fieldset>
        </form>
        </div>
		</div></div>
		</section>


		<div class="span12">
			<div class="span10 offset2">
				<footer class="footer container">

					<div class="infos-legales">
						<p class="infos-legales">
							ProG'HEI - La Junior Entreprise d'HEI <br> 13 Rue de Toul -
							59046 Lille Cedex <br> <a href="http://www.hei.fr">HEI</a> |
							<a href="http://www.junior-entreprises.com/">CNJE</a>
						</p>

					</div>

				</footer>
			</div>
		</div>

	</div>

	</div>



</body>
</html>