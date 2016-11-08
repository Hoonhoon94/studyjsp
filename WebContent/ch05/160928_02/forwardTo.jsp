<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-witdh,initisl-scael=1.0"/>

<%request.setCharacterEncoding("utf-8"); %>
<%
	String id = (String)request.getAttribute("id");
	String name = (String)request.getAttribute("name");
%>
forwardForm.jsp 페이지입니다.<br>
아이디 : <b><%=id %></b><br>
패스워드 : <b><%=name %></b>