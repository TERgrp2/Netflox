<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta charset="UTF-8">
<title>Inscription du client</title>
</head>
<body>
 <a href="index_TER.jsp"><h1>NetFlox</h1></a>
<div class="inscription">
 	<fieldset style="border-width: 5px; width:35%; height:330">
    <legend>CONNECT:</legend>
  	<form method="post" action="ConnexionServlet">
	Nom :	<input type="text" name="nomClient" ></input><br/>
	Prénom : <input type="text" name="prenomClient"></input><br/>
	Age :	<input type="text" name="age" ></input><br/>
	Mail : <input type="text" name="mailClient"></input><br/>
	Tel :	<input type="text" name="telClient" ></input><br/>
	Password : <input type="text" name="mdpClient"></input><br/>
	Carte Bancaire : <input type="text" name="cbClient"></input><br/>
	<button type="submit">Connecter</button>
	</form>
    </fieldset>
</div>

</body>
</html>