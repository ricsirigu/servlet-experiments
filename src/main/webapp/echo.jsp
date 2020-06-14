<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Echo</title>
<link rel="stylesheet"
	href="https://unpkg.com/purecss@2.0.3/build/pure-min.css"
	integrity="sha384-cg6SkqEOCV1NbJoCu11+bm0NvBRc8IYLRGXkmNrqUBfTjmMYwNKPWBTIKyw9mHNJ"
	crossorigin="anonymous">
<style>
body {
	text-align: center;
}
</style>
</head>
<body>
	<h1>Echo server</h1>
	<%
		Random luckyNumber = new Random();
	%>
	<c:if test="${not empty name}">
		<p>Hello ${name}!</p>
		<p>
			Il tuo numero fortunato è
			<%=luckyNumber.nextInt(100)%>
		<p>
	</c:if>
</body>
</html>
