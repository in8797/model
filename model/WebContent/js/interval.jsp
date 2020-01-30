<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>interval.jsp</title>
<style type="text/css">
img {
	width: 300px;
	height: 300px;
}
</style>
<script type="text/javascript">
	window.addEventListener("load", function() {
		window.setInterval(printTime, 1000);
		//이미지 변경 타이머 지정(2초마다)
		window.setInterval(img, 2000);
		//타이머 연습
		//반복 실행할 함수 생성
		function printTime() {
			result.innerHTML = (new Date()).getSeconds();
		}
		//이미지 변경 함수 생성
		function img() {
			var ran = Math.round(Math.random() * 2);
			console.log(ran);
			chimg.src = imgs[ran];
		}
	});

	var imgs = [ "../images/button.jpg", "../images/Desert.jpg",
			"../images/Hydrangeas.jpg" ];

	//2초마다 이미지가 변경되도록 작성(random, 인덱스증가 중)
</script>
</head>
<body>
	<div id="result"></div>
	<img id="chimg" src="../images/button.jpg" />
</body>
</html>