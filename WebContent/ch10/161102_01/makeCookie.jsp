<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=deviec-width.inital-scale=1.0"/>
<%
	Cookie cookie = new Cookie("id", "Hoon.hoon94");
	cookie.setMaxAge(60*2); // 쿠키의 지속시간
	response.addCookie(cookie);
	
	out.println("쿠키가 생성되었습니다.");
%>
<form method="post" action="useCookie.jsp">
	<table>
		<tr>
		<td><input type="submit" value="생성된 쿠키 확인">
	</table>
</form>