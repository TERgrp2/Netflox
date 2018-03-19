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
id du film :	<input type="text" name="idVid" ></input><br/>
nom du film :	<input type="text" name="title" ></input><br/>
catégorie du film :	<input type="text" name=cat ></input><br/>
durée du film :	<input type="text" name="duree" ></input><br/>
date de sortie du film :<input type="text" name="dateSortie" ></input><br/>
type du film :	<input type="text" name="type" ></input><br/>
<tr><td><input type="submit" value="ajouter"/><td><input type="reset" value="Reset"/>  
</form>  


</body>
</html>

