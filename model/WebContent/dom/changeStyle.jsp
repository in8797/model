<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>changeStyle</title>
<script type="text/javascript">
	window.addEventListener("load", init);
	function init() {
		btn.addEventListener("mouseover", function() {
			//div 숨기기 : display
			result.style.display = "none";
		});
		btn.addEventListener("mouseout", function() {
			//div 숨기기 : display
			result.style.display = "";
		});
		img1.addEventListener("error", function() {
			//이미지의 src 변경
			this.src="../images/Desert.jpg";
		});

	}
</script>
</head>
<body>
	<button type="button" id="btn">숨기기</button>
	<div id="result">남산의부장들 소개</div>
	<img src="../images/buton.jpg" id="img1" onerror="this.src='../images/Desert.jpg'">
</body>
</html>