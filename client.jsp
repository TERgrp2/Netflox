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
<a href="index_TER.jsp"><img src="image/logo.jpg" width="400" height="150" alt="erreur" /></a>
<jsp:include page="query_video.jsp" flush="true" />
Bonjour ! <c:out value="${client.getUsername()}" /><br/>








</body>
</html>