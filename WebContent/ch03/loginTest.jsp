<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>


<%-- 폼으로부터 넘어온 데이터의 한글이 깨지지 않게 처리 --%>
<% request.setCharacterEncoding("utf-8");%>

<h2>로그인 흉내내기</h2>

<%-- 입력한 값을 얻어내서 처리 --%>
<% // loginForm.jsp의 9, 13라인의 파라미터 변수 userid과 password의 값을 얻어냄
	String userid = request.getParameter("userid");
	String password = request.getParameter("password");
	
	if(userid.equals("jsp") && password.equals("jjsspp")){
		out.println("환영합니다.");
	} else {
		out.println("로그인 실패.");
	}
%>