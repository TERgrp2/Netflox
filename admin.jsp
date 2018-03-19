<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.io.*,java.util.*" %>


<%@ page import="java.io.*,java.awt.Color,com.lowagie.text.*,com.lowagie.text.pdf.*"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>NetFlox</title>

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

<a href="index_TER.jsp"><img src="image/logo.jpg" width="400" height="150" alt="erreur" /></a>
Bonjour ! <c:out value="${admin.getUsernameA()}" /><br/>

<body>
<%-- Table de liste des films --%>
    <table>
        <tr>
        	<td>id du film</td>
            <td>nom du film</td>
            <td>catégorie du film</td>
            <td>durée du film</td>
            <td>date de sortie du film</td>
            <td>type du film</td>
        </tr>
        <c:forEach items="${video}" var="v">
            <tr>
            	<td>${v.idVid }</td>
                <td>${v.title }</td>
                <td>${v.cat }</td>
                <td>${v.duree }</td>
                <td>${v.dateSortie }</td>
                <td>${v.type }</td>
                <td><a href="DeleteServlet?id=${v.id }">Supprimer</a>|<a href="UpdateServlet?id=${v.id }">Ajouter</a></td>
            </tr>
        </c:forEach>
<%-- Table de liste des client --%>
 <table>
        <tr>
        	<td>id du client</td>
        	<td>login du client</td>
            <td>password du client</td>
            <td>nom du client</td>
            <td>prenom du client</td>
            <td>age du client</td>
            <td>tel du client</td>
            <td>mail du client</td>
        </tr>
        <c:forEach items="${client}" var="c">
            <tr>
                <td>${c.idCl }</td>
                <td>${c.login }</td>
                <td>${c.pass }</td>
                <td>${c.nom }</td>
                <td>${c.prenom }</td>           
				<td>${c.age }</td>
				<td>${c.tel }</td>
				<td>${c.mail }</td>
                <td><a href="DeleteServlet?id=${c.idCl }">Supprimer</a>|<a href="UpdateServlet?id=${c.idCl }">Ajouter</a></td>|<a href="UpdateServlet?id=${c.idCl }">Modifier</a></td>
            </tr>
        </c:forEach>


<%-- // partie PDF
    <%  
    response.setContentType  
    ( "application/pdf" );  
    Document document = new Document();  
    ByteArrayOutputStream buffer 
    = new ByteArrayOutputStream();  
    PdfWriter writer=  
    PdfWriter.getInstance( document, buffer );  
    document.open();  
    document.add(new Paragraph("Hello World"));  
    document.close();  
    DataOutput output =  
    new DataOutputStream  
    ( response.getOutputStream() );  
    byte[] bytes = buffer.toByteArray();  
    response.setContentLength(bytes.length);  
    for( int i = 0;  
    i < bytes.length;  
    i++ )  
    {  
    output.writeByte( bytes[i] );  
    }  
    %> 
--%>
<input onclick="document.all.WebBrowser.ExecWB(6,1)" type="button" value="Imprimer" name="Button">

</body>
</html>