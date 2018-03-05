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
<h1>NetFlox</h1>

<div class="cate">
<fieldset style="border-width: 5px; width:30%; height:220">
Titre : <input id="inp-query" name="search_text" size="30" maxlength="60" placeholder="recherche film par titre..." value=""><br/>
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
</fieldset>
  			 </div>


<%--insérer des fichiers::::: <jsp:include page="TERtable1.jsp" flush="true" />--%><br/>
	
<div class="connextion">
 	<fieldset style="border-width: 5px; width:30%; height:220">
    <legend>CONNECT:</legend>
  	<form method="post" action="ConnexionServlet">
	Login :	<input type="text" name="login" ></input><br/>
	Password : <input type="text" name="pass"></input><br/>
	<button type="submit">Connecter</button>
	</form>
    </fieldset>
</div>
<br/>
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
               <button type="submit">acheter</button>
               <button type="submit">louer</button>
            </a> 
    
    </ul> 
</div>

</body>
</html>