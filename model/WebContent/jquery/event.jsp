<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(document).on("click", "#btn", function() {
		$("#imgSample").width(400);
	});
	$("#btn2").on("click", function() {
		$("#btn").width(400);
	});
</script>
</head>
<body>
	<button type="button" id="btn">크기변경</button>
	<button type="button" id="btn2">크기변경2</button>
</body>
</html>