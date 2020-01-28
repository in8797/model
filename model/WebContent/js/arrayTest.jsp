<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>arrayTest.jsp</title>
<style type="text/css">
img {
	width: 100px;
}
</style>
<script type="text/javascript">
	window.onload = function() {
		//모든 이미지의 alt 속성만 div에 출력
		var imgArr = document.getElementsByTagName("img");
		console.log(imgArr);
		var img = "";
		for (i = 0; i < imgArr.length; i++) {
			img += imgArr[i].alt + "<br>";
		}
		document.getElementById("result").innerHTML = img;
	}
</script>
</head>
<body>
	<img alt="버튼" src="../images/button.jpg">
	<img alt="코알라" src="../images/Koala.jpg">
	<img alt="펭귄" src="../images/Penguins.jpg">
	<div id="result"></div>
</body>
</html>