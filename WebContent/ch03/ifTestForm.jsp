<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

<h2>if-else문 예제 - 좋아하는 색 선택</h2>
<form method="post" action="ifTest.jsp">
	<dl>
		<dd>
			<label for="name">이름</label>
			<input id="name" name="name" type="text" placeholder="홍길동" autofocus required>
		</dd>
		<dd>
			<label for="color">색선택</label>
			<select id="color" name="color" required>
				<option value="blue" selected>파랑색
				<option value="green">초록색
				<option value="red">빨강색
				<option value="yellow">기타
			</select>
		</dd>
		<dd>
			<input type="submit" value="확인">
		</dd>
	</dl>
</form>



<!-- HTML에서 문자열 로그인폼 만들떄
<form method="post" action="loginServlet">
	아이디<input name"id">
	암호<input name="password">
	<input type="submit" value="로그인">
</form>
String id = " ";
String password = " ";
 -->