<%@page pageEncoding="UTF-8" contentType="text/html; UTF-8"
	isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.io.*,java.util.*"%>

<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>test</title>
</head>
<body>
	<%
Integer count = new Integer(0);
if (session.isNew()) {
	session.setAttribute("countKey", count);
} else {
	count = (Integer) session.getAttribute("countKey");
	count += 1;
	session.setAttribute("countKey", count);
}
%>
	<table border="1" align="center">
		<tr bgcolor="#949494">
			<th>Session</th>
			<th>value</th>
		</tr>
		<tr>
			<td>id</td>
			<td>${pageContext.session.id}</td>
		</tr>
		<tr>
			<td>User ID</td>
			<td>${name}</td>
		</tr>
		<tr>
			<td>訪問次數</td>
			<td>${countKey}</td>
		</tr>
	</table>
</body>
</html>