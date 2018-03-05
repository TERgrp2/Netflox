<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Recherche de video</title>
</head>
<body>
	<%
	
	VideoDB db = (VideoDB) session.getAttribute("db");
	if (db == null) {
		db = new VideoDB();
		db.importFile(getServletContext().getRealPath("/resources/video.txt"));
		session.setAttribute("db",db);
	}
	String title = "";
	HashMap<String,String> cookies = new HashMap<>();
	for (Cookie c : request.getCookies())
	{
		cookies.put(c.getName(), c.getValue());
	}
%>


<fieldset style="border-width: 5px; width:30%; height:220">
<form method="post" action="recherche_video.jsp">
Titre : <input type="text" name="title" size="30" maxlength="60" placeholder="recherche film par titre..." value="<%= cookies.get("last_title") %>"><br/>
Catégotie :  <SELECT name = "cat">
   			 <option value="Comedie">Comedie
   			 <option value="Action">Action
  			 <option value="Horreur">Horreur
  			 <option value="Documentaire">Documentaire
  			 </SELECT> <br/>
Année :      <SELECT name = "dateSortie">
   			 <option value="2018">2018
   			 <option value="2017">2017
   			 <option value="2016">2016
  			 <option value="2015">2015
  			 </SELECT> <br/>
  			<a href="recherche_video.jsp"> <button type="submit">Valider</button></a>
</fieldset></form>
  			 </div>


</body>
</html>