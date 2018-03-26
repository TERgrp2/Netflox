<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery1.8.0.min.js"></script>
</head>
<body>
<h1>liste des commentaires "spam"</h1>
 <%-- la liste des "spam" //  savoir pas encore le nom qui va remplacer 'spam'--%>
 <c:forEach items="${spam}" var="s">
            <tr>
            	<td>${s.msg }</td>
                <td><a href="DeleteSpamServlet?id=${s.id }">Supprimer</a></td>
            </tr>

 </body>
 </html>