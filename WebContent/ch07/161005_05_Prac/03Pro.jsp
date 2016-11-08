<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>

<% request.setCharacterEncoding("utf-8");%>
<%
	String resultStr= "";
	String name = request.getParameter("name");
	if(name.equals("최지훈"))
		resultStr = "관리자님 안녕하십니까?";
	else
		resultStr = "고객님 안녕하세요";
	out.println(resultStr);
%>