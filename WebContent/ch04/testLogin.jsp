<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="java.net.URLEncoder" %>
<%--
<%
	String userid = request.getParameter("userid");
	String password = request.getParameter("password");

	if(userid.equals("Hoon.hoon94") && password.equals("123")){
		response.sendRedirect("main.jsp?userid="+URLEncoder.encode(userid, "UTF-8"));
		// "main.jsp"에서 userid의 값을
	} else {
		response.sendRedirect("loginForm.jsp");
	}
%>
 --%>

<%
   String id = "admin"; // id라는 변수에 저장될 값, 아이디정보
   String password = "admin"; // password라는 변수에 저장될 값, 비밀번호정보
   
   if(id.equals(request.getParameter("userid"))) { // 파라미터는 loginForm에서 name의 값을 받아함
      if(password.equals(request.getParameter("password"))) { // 위와 동일
         response.sendRedirect("main.jsp?userid=" + URLEncoder.encode(id, "utf-8"));
      }
      else {
         response.sendRedirect("loginForm.jsp");
      }
   }
   else {
      response.sendRedirect("loginFrom.jsp");
   }
%>