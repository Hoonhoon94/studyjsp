<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

<h2>request객체를 이용한 설문 조사</h2>
<form method="post" action="research.jsp">
	<dl>
		<dd>
			<label for="name">이름 : </label>
			<input id="name" name="name" type="text" placeholder="최지훈" autofocus required>
		</dd>
		<dd>
			<label for="gender">성별 : </label>
			<input id="gender" name="gender" type="radio" value="male" checked>
			<label for="gender">남자</label>
			<input id="gender" name="gender" type="radio" value="female">
			<label for="gender">여자</label>
		</dd>
		<dd>
			좋아하는 계절<br>
			<input type="checkbox" name="season" value="0">봄
			<input type="checkbox" name="season" value="1">여름
			<input type="checkbox" name="season" value="2">가을
			<input type="checkbox" name="season" value="3">겨울
		</dd>
		<dd>
			<input type="submit" value="전송">
		</dd>
	</dl>
</form>