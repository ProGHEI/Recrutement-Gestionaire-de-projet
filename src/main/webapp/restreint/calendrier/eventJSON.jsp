<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

[
<c:forEach var="evenement" items="${evenements}" varStatus="longueur">
	${evenement}
	<c:if test="${!longueur.last}">,</c:if>
</c:forEach>
]
