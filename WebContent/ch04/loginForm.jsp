<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>

<form method="post" action="testLogin.jsp">
	<dl>
		<dd>
			<label for="userid">User Id</label>
			<input id="userid" name="userid" type="text" placeholder="ID" autofocus required>
		</dd>
		<dd>
			<label for="password">Password</label>
			<input id="password" name="password" type="password">
		</dd>
		<dd>
			<input type="submit" value="로그인">
		</dd>			
	</dl>
</form>