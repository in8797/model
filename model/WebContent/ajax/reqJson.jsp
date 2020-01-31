<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>req.jsp</title>
<script type="text/javascript">
	window.addEventListener("load", function() {
		btn.addEventListener("click", loadDoc)
		{
		}
	});

	function loadDoc() {
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				var res = xhttp.responseText;	//String
				var obj = JSON.parse(res);
				txtNo.value = obj.no;
				txtName.value = obj.name;
			}
		};
		xhttp.open("GET", "../GetJSON.do", true);
		xhttp.send();
	}
</script>
</head>
<body>
	<h3>ajax JSON 연습</h3>
	번호검색
	<input id="txtNo">
	<button type="button" id="btn">요청</button>
	<br> 이름
	<input id="txtName">
</body>
</html>