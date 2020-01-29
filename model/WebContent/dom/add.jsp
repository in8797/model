<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add</title>
<style type="text/css">
.back {
	background-color: cyan;
}

.back:hover {
	background-color: red;
}
</style>
<script type="text/javascript">
	//태그 추가
	window.addEventListener("load", function() {
		btn.addEventListener("click", function() {
			//div input 태그 추가
			var newInput = document.createElement("input");
			//태그의 속성지정
			//입력값에 "홍길동"
			newInput.value = "홍길동";
			//클래스 지정
			newInput.classList.add('back');		//=<input class="back">
			//배경색을 yellow 지정
			/* 			newInput.style.background="yellow";
			 //event mouseover 시에 배경색을 blue
			 newInput.addEventListener("mouseover",function(){
			 newInput.style.backgroundColor="blue";
			 }) */
			result.appendChild(newInput);
		})
	})
</script>
</head>
<body>
	<button type="button" id="btn">태그 추가</button>
	<div id="result"></div>
</body>
</html>