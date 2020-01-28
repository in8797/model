<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<img id="img" src="../images/button.jpg" style="width: 100px">
	<button type="button" id="btnSize">그림 크게</button>
	<script type="text/javascript">
	let img = document.getElementById("img");
	let btnSize = document.getElementById("btnSize");
	btnSize.addEventListener("click",function(){
		//이미지 크기(width) 확인
		var w = img.style.width;
		//크기를 +100
		img.style.width = parseInt(w) + 100 +"px";
	});
	</script>
</body>
</html>