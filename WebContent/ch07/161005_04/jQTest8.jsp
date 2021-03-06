<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<title>jQuery Ajax메소드 - $.ajax</title>
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
		$("#b1").click(function(){ // [결과] 버튼을 클릭하면 자동실행
			// xhrTest3.txt를 get 방식으로 요청
			$.post("process.jsp", // 요청 페이지
			{ // 요청 페이지에 실어서 보낼 데이터
				name:"kingdora", stus:"homebody"
			},
			function(data,status){ // 응답 내용 처리
				if(status="success") // 요청이 제대로 처리되었으면
					$("#result").html(data);
			});
		});
	});
</script>
</head>
<body>
	<button id="b1">결과</button>
	<div id="result"></div>	
</body>
</html>