<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

<h2>로그인 흉내내기</h2>
<form method="get" action="loginTest.jsp">
	<dl>
		<dd>
			<label for="userid">User ID</label>
			<input id="userid" name="userid" type="text" placeholder="UserID" autofocus required>
		</dd>
		<dd>
			<label for="password">Password</label>
			<input id="password" name="password" type="password" placeholder="Password" autofocus required>
		</dd>
		<dd>
			<input type="submit" value="확인">
		</dd>
	</dl>
</form>