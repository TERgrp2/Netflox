<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery1.8.0.min.js"></script>
</head>
<body>
<h1>liste des commentaires</h1>

 <c:forEach items="${page.list }" var="msg">
  <p>Autheur：${msg.author }</p>
  <p>Contenu：${msg.message }</p>
  <p>Date：${msg.pubdate }</p>
  <%-- les boutons "like" --%>
   <input type="button" value="like" onclick="countNumLike();">
				<script>
				var numLike=0;
				function countNumLike(){
				numLike++; 
				}
				</script>
	 <input type="text" placeholder=numLike>
	   <%-- les boutons "dislike"--%>
	  <input type="button" value="dislike" onclick="countNumDislike();">
				<script>
				var numDislike=0;
				function countNumDislike(){
				numDislike++; 
				}
				</script>
	 <input type="text" placeholder=numDislike>
	 <%-- les boutons "spam"--%>
	  <input type="button" value="spam" onclick="spam();">
				<script>
				function spam(){
				spam=true; 
				}
				</script>
 </c:forEach>
 
 <input type="button" value="<-" onclick="tournerPage(${page.pageIndex-1})"
 <c:if test="${page.pageIndex eq 1 }">disabled="disabled"</c:if>
 >
 
 <input type="button" value="->" onclick="tournerPage(${page.pageIndex+1})"
 <c:if test="${page.pageIndex eq page.totalPage }">disabled="disabled"</c:if>
 >
 
 <hr/>
 
 <form action="msg?mth=save" method="post" id="myform" onsubmit="return check()">
  <p>login：<input type="text" name="author" id="author" value="${author }"/></p>
  <p>commentaire：<textarea rows="10" cols="30" name="message" id="message" value="${message }"/></p>
  <p><input type="submit" value="commenter"/></p>
  <input type="hidden" name="pageIndex" id="pageIndex">
 </form>
  
 <script>
  function check(){
   if((document).getElementById("author").value==""){
    alert("le nom est vide!");
    document.getElementById("author").focus();
    return false;
   }
   if((document).getElementById("message").value==""){
    alert("le contenu est vide !");
    document.getElementById("message").focus();
    return false;
   }
   return true;
  }
  function tournerPage(pageIndex){
   document.getElementById("pageIndex").value=pageIndex;
   document.getElementById("myform").action="msg";
   document.getElementById("myform").submit();
  }
 </script>
 </body>
 </html>
 