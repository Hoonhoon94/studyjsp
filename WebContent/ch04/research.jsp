<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

<% request.setCharacterEncoding("utf-8");%>

<h2>request 예제 - 요청 메소드</h2>
<% // request객체에서 파라미터값을 얻어냄
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String[] season = request.getParameterValues("season");
	String seasonName[] = {"봄", "여름", "가을", "겨울"};
	
	// 성별값 처리
	if(gender.equals("male"))
		gender="남자";
	else
		gender="여자";
%>

<%-- DB연동을 위한 작업 --%>
<%-- 화면 출력 --%>
<%=name%>님의 정보는 다음과 같습니다.<p>
성별 : <%=gender%><br>
계절 :
<%
	// 계절값 처리
	if(season == null)
		out.println("선택한 계절이 없습니다.");
	else{
		out.println("당신이 선택한 계절은 ");
		for(String s:season)
			out.println(seasonName[Integer.parseInt(s)]+" ");
		out.println("입니다");
	}
%>