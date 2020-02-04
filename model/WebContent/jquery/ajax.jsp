<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() { //   ==   window.addEventListener("load",function(){})
		//$(document.ready(function(){}));
		result.innerHTML = "로딩중";
		$.ajax("./server/getName.jsp", {
			async : false,
			//ajax는 default 비동기	-- false시  동기
			beforeSend : function() {

			},
			cache : false,
			data : $("#frm").serialize(),
			//파라미터
			dataType : "json" //default html 생략시 xml

		}).done(function(data) {
			result.innerHTML = data.name;
		}).fail(function() {

		}).always(function() {

		})
		console.log("ajax end");
	});
</script>
</head>
<body>
	<form id="frm" name="frm">
		<input name="no" value=""> <input name="name" value="">
	</form>
	<div id="result"></div>
</body>
</html>