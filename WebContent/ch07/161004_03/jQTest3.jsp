<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<title>jQuery 이벤트 처리</title>
<script src="../../js/jquery-3.1.1.min.js"></script>
<script>
	$(document).ready(function(){
		$("p").mouseenter(function(){ // <p> 엘리먼트에 마우스 포인터를 위치시키면 자동 실행
			$(this).text("왔구려,,, 마우스 포인트");
		});
		
		$("p").mouseleave(function(){ // <p> 엘리먼트에 마우스 포인터가 나가면 자동 실행
			$(this).text("돌아와,,, 마우스 포인트");
		});
		
		$("button").dblclick(function(){ // <button> 엘리먼트를 더블클릭하면 자동 실행
			$(this).css("background-color","#999999");
		});
	});
</script>	
</head>
<body>
	<p> 마우스 포인터를 여기에!!!</p>
	<button>더블클릭하세요</button>

</body>
</html>