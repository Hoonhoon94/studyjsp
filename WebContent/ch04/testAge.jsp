<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<%
	int age = Integer.parseInt(request.getParameter("age"));
	if(age < 20){
%>
	<script type="text/javascript">
		alert("20세 미만은 입장 불가");
		history.go(-1);
	</script>
<%
	} else {
		request.setAttribute("name", "최지훈"); // request.getAttribute("전달해줄 파일")로 받으면됨.
		RequestDispatcher dispatcher = request.getRequestDispatcher("ageResult.jsp");
		dispatcher.forward(request, response);
	}
%>