<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.io.*,java.util.*" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ajouter un film</title>
   <style type="text/css">
            table {
                border: 1px solid pink;
                margin: 0 auto;
            }
            
            td{
                width: 150px;
                border: 1px solid pink;
                text-align: center;
            }
    </style>
</head>
<body>
<a href="index_TER.jsp"><img src="image/logo.jpg" width="400" height="150" alt="erreur" /></a>


<form method="post" action="">  
id du client :	<input type="text" name="idCl" ></input><br/>
login du client :	<input type="text" name="login" ></input><br/>
password du client :	<input type="text" name=pass ></input><br/>
nom du client :	<input type="text" name="nom" ></input><br/>
prenom du client :<input type="text" name="prenom" ></input><br/>
age du client :	<input type="text" name="age" ></input><br/>
tel du client :	<input type="text" name="tel" ></input><br/>
mail du client :	<input type="text" name="mail" ></input><br/>
<tr><td><input type="submit" value="ajouter"/><td><input type="reset" value="Reset"/>  
</form>  


</body>
</html>


 