<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Connexion</title>
</head>
<body>
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
</body>
</html>