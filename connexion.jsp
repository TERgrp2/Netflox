<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Connexion</title>
</head>
<script language="javascript">    
function isValid(form)    
{    
if (form.login.value=="")    
 {    
 alert("login est vide!");    
 return false;    
 }    
else  if (form.pass.value=="")    
{    
alert("le mot de pass est vide！");    
return false;    
}  
else return true;    
}    
</script>    

<body>
<div class="connextion">
 	<fieldset style="border-width: 5px; width:30%; height:220">
    <legend>CONNECT:</legend>
  	<form method="post" action="ConnexionServlet" onSubmit="return isValid(this);">
	Login :	<input type="text" name="login" ></input><br/>
	Password : <input type="password" name="pass"></input><br/>
	<button type="submit">Connecter</button><input type="reset" value="Reset"/>
	</form>
    </fieldset>
</div>
<br/>
</body>
</html>