<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.io.*,java.util.*" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>modification du client</title>
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
    <form action="UpdateServlet" method="post">
    <table border="1" class="t1">
        <tr>
            <td colspan="2"><h1>Modificatier les informations du client</h1></td>
        </tr>
        
         <tr>
            <td>id du client:</td>
            <td><input  type="text" name="username" value="${client.idCl}"/></td>
        </tr>
        <tr>
            <td>login du client:</td>
            <td><input  type="text" name="id" value="${client.login}" readonly="readonly"/></td>
        </tr>
        
       
         <tr>
            <td>password du client:</td>
            <td><input  type="text" name="username" value="${client.pass}"/></td>
        </tr> 
        <tr>
            <td>nom du client:</td>
            <td><input  type="text" name="username" value="${client.nom}"/></td>
        </tr>
         <tr>
            <td>prenom du client:</td>
            <td><input  type="text" name="username" value="${client.prenom}"/></td>
        </tr> 
        <tr>
            <td>age du client:</td>
            <td><input  type="text" name="username" value="${client.age}"/></td>
        </tr> 
        <tr>
            <td>tel du client:</td>
            <td><input  type="text" name="username" value="${client.tel}"/></td>
        </tr> 
        <tr>
            <td>mail du client:</td>
            <td><input  type="text" name="username" value="${client.mail}"/></td>
        </tr>
        <tr>
            <td colspan="2">
                <input  type="submit" value="valider"/>
                <input  type="reset" value="Reset"/>
            </td>
        </tr>
    </table>
   </form>
  </body>
</html>
