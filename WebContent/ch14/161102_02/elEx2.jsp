<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=deivce-width,initial-scale=1.0"/>

<% request.setCharacterEncoding("utf-8");%>
<form action="elEx2.jsp" method="post">
	<ul>
		<li><label for="name">이름</label>
			<input type="text" id="name" name="name" value="${param['name']}">
			<input type="submit" value="확인">
		<li><p>이름은:${param.name}입니다.

	</ul>
</form>