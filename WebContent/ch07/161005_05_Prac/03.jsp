<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<title>jQuery Ajax메소드 - $.post()</title>
<style type="text/css">
	#result{
		width : 200px;
		height : 200px;
		border : 5px double #6699FF;
	}
</style>
<script src="../../js/jquery-3.1.1.min.js"></script>
<script>
	$(document).ready(function(){
		$("#b1").click(function(){
			var hoon = {name:$("#name").val()} // 전송할 데이터 인풋 폼의 값
			$.ajax({
				type:"POST",
				url:"03Pro.jsp",
				data:hoon,
				success:function(data){ // 요청 페이지 실행한 결과
					$("#result").html(data);
				}
			});
		});
	});
</script>
</head>
<body>
	이름<input id="name"></input><br>
	<button id="b1">처리</button>
	<div id="result"></div>	
</body>
</html>