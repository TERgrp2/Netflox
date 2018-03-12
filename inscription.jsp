<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<html>
<head>
<meta charset="UTF-8">
<title>Inscription du client</title>
</head>
<body>
 <a href="index_TER.jsp"><h1>NetFlox</h1></a>

<script language="javascript">    
function isValid(form)    
{    
if (form.username.value=="")    
 {    
 alert("le nom est vide!");    
 return false;    
 }    
if (form.mdpClient.value!=form.pwd2.value)    
{    
alert("les deux passeword sont différents！");    
return false;    
}    
else  if (form.mdpClient.value=="")    
{    
alert("le passeword est vide！");    
return false;    
}    
else return true;    
}    
</script>    
</head>  
   
  <body>  
  <center>  
   <body bgcolor="#e3e3e3">  
  <h2>Inscription</h2>  
  <form action="check2.jsp" method="post" onSubmit="return isValid(this);">  
<table>  
  <tr><td>Nom : </td><td><input type="text" name="nomClient" size="20"/></td></tr> 
  <tr><td>Prénom : </td><td><input type="text" name="prenomClient" size="20"/></td></tr> 
  <tr><td>Age : </td><td><input type="text" name="age" size="20"/></td></tr> 
  <tr><td>Mail : </td><td><input type="text" name="mailClient" size="20"/></td></tr> 
  <tr><td>Tel : </td><td><input type="text" name="telClient" size="20"/></td></tr> 
   
  <tr><td>Password : </td><td><input type="text" name="mdpClient" size="20"/></td></tr>  
  <tr><td>Password vérification : </td><td><input type="text"name="pwd2" size="20"/></td><tr> 
  
  <tr><td>Carte Bancaire : </td><td><input type="text" name="cbClient" size="20"/></td></tr> 
  
   
  <tr><td><input type="submit" value="Inscrire"/><td><input type="reset" value="Reset"/>  
  </table>  
</form>  
  </center>  
   <br>  
  </body>  
</html>  