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
				var xmlDoc = xhttp.responseXML;
				var no = xmlDoc.getElementsByTagName("no")[0].childNodes[0].nodeValue;
				var name = xmlDoc.getElementsByTagName("name")[0].childNodes[0].nodeValue;
				txtNo.value = no;
				txtName.value = name;
			}
		};
		var param = "no=" + txtNo.value; //쿼리문자열 url?변수명=값&변수명=값
		xhttp.open("GET", "../GetXML.do", true);
		xhttp.send();
	}
</script>
</head>
<body>
	<h3>ajax 연습</h3>
	번호검색
	<input id="txtNo">
	<button type="button" id="btn">요청</button>
	<br> 이름
	<input id="txtName">
</body>
</html>