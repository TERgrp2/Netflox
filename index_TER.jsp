<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="java.util.Date, java.util.concurrent.atomic.AtomicInteger" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>NetFlox</title>
</head>
<body>
<a href="index_TER.jsp"><img src="image/logo.jpg" width="400" height="150" alt="erreur" /></a>

<div class="cate">
<%--<form method="post" action="display_video.jsp">
	<%
	
	VideoDB db = (VideoDB) session.getAttribute("db");
	if (db == null) {
		db = new VideoDB();
		db.importFile(getServletContext().getRealPath("/resources/movie.txt"));
		session.setAttribute("db",db);
	}
	String title = "";
	HashMap<String,String> cookies = new HashMap<>();
	for (Cookie c : request.getCookies())
	{
		cookies.put(c.getName(), c.getValue());
	}
%>
--%>
<jsp:include page="query_video.jsp" flush="true" />

<%--insérer des fichiers::::: <jsp:include page="TERtable1.jsp" flush="true" />--%><br/>
<jsp:include page="connexion.jsp" flush="true" />	

<div class="newClient">
VOUS ETES NOUVEAU CLIENT? 
 <a href="inscription.jsp"><button type="submit">Inscription</button></a>
</div> 
<br/>
<jsp:include page="recherche_video.jsp" flush="true" />
<div class="filmTable">  
 	 <ul class="imglist"> 
      
            <a href="#" target="_blank">
               <img src="image/coco.jpg" width="200" height="200" alt="erreur" />
               <span>coco</span>
               <button type="submit">acheter</button>
               <button type="submit">louer</button>
            </a>

             <a href="#" target="_blank">
               <img src="image/coco.jpg" width="200" height="200" alt="erreur" />
               <span>coco</span>
               <button type="submit">acheter</button>
               <button type="submit">louer</button>
            </a>

              <a href="#" target="_blank">
               <img src="image/coco.jpg" width="200" height="200" alt="erreur" />
               <span>coco</span>
               <button type="submit" name="achat">acheter</button>
               <button type="submit" name="location">louer</button>
            </a> 
    
    </ul> 
</div>


<%--
<ul><%
	VideoDB db = (VideoDB) session.getAttribute("db");
	if (db == null) {
		db = new VideoDB();
		db.importFile(getServletContext().getRealPath("/resources/video.txt"));
		session.setAttribute("db",db);
	}
	
	for (Video v : db.queryAll())
	{
		out.println("<li> " + v + "</li>");	
	}
%>
</ul>
--%>

</body>
</html>