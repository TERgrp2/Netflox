<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
<h1>Liste des résultats</h1>
<ul>
<%
VideoDB db = (VideoDB) session.getAttribute("db");

	String s = request.getParameter("title");
	if (s != null) {
		Cookie c = new Cookie("last_title", s);
		response.addCookie(c);
		for (Video v : db.getTitle(s))
			out.println("<li>" + v + "</li>");
	}
	/** TODO */
%>
</ul><br/>

<c:choose>
		<c:when test="${! empty video }">
			<ul>
				<!--  une itération avec un for-each, la variable de boucle est v -->
				<c:forEach var="v" items="${video}">	
				Nom de film :<c:out value="${v.title}" /><br/>
				Nombre vue : <c:out value="${v.view}" /><br/>
				nombre téléchargé : <c:out value="${v.download}" /><br/>
				</c:forEach>
			</ul>
		<c:otherwise>
		<b>Aucun résultat</b>
		</c:otherwise>
	</c:choose>

</body>
</html>