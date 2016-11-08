<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<%
	String age = request.getParameter("age");
	String name = (String)request.getAttribute("name");
		// 모든 오브젝트를 받기때문에 String으로 변환해야함
%>
forward방식으로 이동 된 페이지<br>
나이 : <%=age%><br>
이름 : <%=name%><br>