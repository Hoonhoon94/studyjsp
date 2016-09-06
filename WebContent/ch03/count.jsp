<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%! int globalCount = 1; %>
		<% int localCount = 1; %>
		<%
			globalCount++;
			localCount++;
		%>
		
		globalCount = <%= globalCount %><br>
		localCount = <%= localCount %>
	</body>
</html>